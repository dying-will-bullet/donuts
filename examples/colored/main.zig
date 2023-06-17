const std = @import("std");
const Donuts = @import("donuts").Donuts;

pub fn main() !void {
    var sp = Donuts(std.io.getStdOut()).init(
        "Scanning files...",
        .{ .style = .dots },
        .{
            .spinner_style = .{
                .bg = .MAGENTA,
            },
            .message_style = .{ .fg = .blue, .bold = true },
        },
    );
    try sp.start();

    std.time.sleep(1 * std.time.ns_per_s);
    try sp.echoLine(
        "1) build.zig",
        .{ .fg = .WHITE, .bold = true },
    );

    std.time.sleep(1 * std.time.ns_per_s);
    try sp.echoLine(
        "2) build.zig.zon",
        .{ .fg = .yellow, .bold = true },
    );

    std.time.sleep(1 * std.time.ns_per_s);

    try sp.echoLine(
        "3) README.md",
        .{ .fg = .CYAN, .bold = true },
    );
    try sp.stop(
        .{
            .symbol = "✓",
            .symbol_style = .{ .fg = .GREEN, .bold = true },
            .message = "Done",
            .message_style = .{ .fg = .GREEN, .bold = true },
        },
    );
}
