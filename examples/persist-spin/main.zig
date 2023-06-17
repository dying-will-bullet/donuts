const std = @import("std");
const Donuts = @import("donuts").Donuts;

const one_second = 1 * std.time.ns_per_s;
const success_message = "Loading success";
const failed_message = "Loading failed";
const unicorn_message = "Loading unicorn";

pub fn main() !void {
    var sp = Donuts(std.io.getStdOut()).init(success_message, .{ .style = .dots }, .{});
    sp.setOptions(.{ .sep = "" });

    try sp.start();
    std.time.sleep(one_second);
    try sp.stop(.{ .symbol = "✅", .message = success_message });

    sp.setMessage(failed_message);
    try sp.start();
    std.time.sleep(one_second);
    try sp.stop(.{ .symbol = "❌", .message = failed_message });

    sp.setMessage(unicorn_message);
    try sp.start();
    std.time.sleep(one_second);
    try sp.stop(.{ .symbol = "🦄", .message = unicorn_message });
}
