const std = @import("std");
const Donuts = @import("donuts").Donuts;

pub fn main() !void {
    var sp = Donuts(std.io.getStdOut()).init(
        "Downloading ...",
        .{ .style = .dots },
        .{},
    );

    try sp.start();
    std.time.sleep(200 * std.time.ns_per_ms);

    var text: [128]u8 = undefined;
    for (0..100) |i| {
        const len = (try std.fmt.bufPrint(&text, "Progress {d:>02}% ", .{i})).len;
        @memset(text[len .. len + i / 2], '#');
        @memset(text[len + i / 2 ..], '-');

        sp.setMessage(text[0 .. len + 50]);
        std.time.sleep(50 * std.time.ns_per_ms);
    }
    try sp.stop(.{ .symbol = "✅", .message = "Finished." });
}
