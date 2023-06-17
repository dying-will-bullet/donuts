const std = @import("std");
const time = std.time;
const Style = @import("./style.zig").Style;

const Error = error{
    NotStarted,
};

/// `stream` is `std.io.getStdOut` or `std.io.getStdErr`
pub fn Donuts(comptime stream: anytype) type {
    return struct {
        // prompt message
        message: []const u8,
        /// frames
        frames: []const []const u8,
        /// framerate (ns)
        frame_rate: u64 = 100 * time.ns_per_ms,
        /// stream write lock
        lock: std.Thread.Mutex,
        /// stop flag
        running_flag: std.atomic.Atomic(bool),
        ///
        render_thread: ?std.Thread = null,

        const Self = @This();

        // --------------------------------------------------------------------------------
        //                                  Public API
        // --------------------------------------------------------------------------------

        /// Init with builtin style or custom style
        pub fn init(style: union(enum) {
            style: Style,
            custom: struct {
                interval: u16,
                frames: []const []const u8,
            },
        }) Self {
            var interval: u16 = undefined;
            var frames: []const []const u8 = undefined;

            switch (style) {
                .style => |v| {
                    interval = v.data().interval;
                    frames = v.data().frames;
                },
                .custom => |v| {
                    interval = v.interval;
                    frames = v.frames;
                },
            }

            return Self{
                .message = undefined,
                .frames = frames,
                .frame_rate = @intCast(u64, interval) * time.ns_per_ms,
                .lock = std.Thread.Mutex{},
                .running_flag = std.atomic.Atomic(bool).init(false),
            };
        }

        /// Starts the spinner on a separate thread.
        pub fn start(self: *Self, message: []const u8) !void {
            // hide curosr
            try self.hideCursor();

            self.setMessage(message);

            self.running_flag.store(true, .SeqCst);

            self.render_thread = try std.Thread.spawn(.{}, render, .{self});
        }

        /// Stops the spinner thread and clears the line.
        pub fn stop(self: *Self, config: struct {
            symbol: ?[]const u8 = null,
            message: ?[]const u8 = null,
        }) !void {
            if (self.render_thread == null) {
                return error.NotStarted;
            }

            // stop and wait render thread
            self.running_flag.store(false, .SeqCst);
            self.render_thread.?.join();

            // show user's cursor
            try self.showCursor();

            // write final message
            try self.clear();
            try stream.writeAll("\r");
            try stream.writeAll(config.symbol orelse self.frames[0]);
            try stream.writeAll(" ");
            try stream.writeAll(config.message orelse self.message);
            try stream.writeAll("\n");
        }

        /// Set prompt message.
        pub fn setMessage(self: *Self, message: []const u8) void {
            self.lock.lock();
            defer self.lock.unlock();

            self.message = message;
        }

        /// Write text to stream.
        pub fn echoLine(self: *Self, text: []const u8) !void {
            self.lock.lock();
            defer self.lock.unlock();

            try self.clear();

            try stream.writeAll(text);
            try stream.writeAll("\n");
        }

        // --------------------------------------------------------------------------------
        //                                  Core API
        // --------------------------------------------------------------------------------

        /// Runs the render until running_flag is set false.
        fn render(self: *Self) !void {
            // current frame index
            var frame_idx: usize = 0;

            while (true) : (frame_idx += 1) {
                if (!self.running_flag.load(.SeqCst)) {
                    return;
                }
                if (frame_idx > self.frames.len - 1) {
                    frame_idx = 0;
                }

                try self.renderFrame(frame_idx);

                time.sleep(self.frame_rate);
            }
        }

        fn renderFrame(self: *Self, idx: usize) !void {
            self.lock.lock();
            defer self.lock.unlock();

            try self.clear();
            try stream.writeAll(self.frames[idx]);
            try stream.writeAll(" ");
            try stream.writeAll(self.message);
            try stream.writeAll("\r");
        }

        fn hideCursor(self: Self) !void {
            _ = self;
            // TODO: windows
            try stream.writeAll("\x1b[?25l");
        }

        fn showCursor(self: Self) !void {
            _ = self;
            // TODO: windows
            try stream.writeAll("\x1b[?25h");
        }

        fn clear(self: Self) !void {
            _ = self;
            try stream.writeAll("\r");
            try stream.writeAll("\x1b[K");
        }
    };
}
