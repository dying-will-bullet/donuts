const std = @import("std");
const Donuts = @import("donuts").Donuts;

pub fn main() !void {
    var sp = Donuts(std.io.getStdOut()).init(
        "custom pinner",
        .{ .spinner = .{
            .interval = 100,
            .frames = &[_][]const u8{ "-", "+", "*", "+", "-" },
        } },
        .{},
    );

    try sp.start();
    std.time.sleep(3 * std.time.ns_per_s);

    try sp.stop(.{});
}
