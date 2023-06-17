const std = @import("std");
const Donuts = @import("donuts").Donuts;

pub fn main() !void {
    var sp = Donuts(std.io.getStdOut()).init(
        "Downloading ...",
        .{ .style = .dots },
        .{},
    );

    try sp.start();
    std.time.sleep(100 * std.time.ns_per_ms);

    var buf: [64]u8 = undefined;
    for (0..100) |i| {
        const text = try std.fmt.bufPrint(&buf, "Progress {d:>02} %", .{i});
        sp.setMessage(text);
        std.time.sleep(50 * std.time.ns_per_ms);
    }
    try sp.stop(.{ .symbol = "✅", .message = "Finsihed." });
}
