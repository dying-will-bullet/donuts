<h1 align="center"> donuts 🍩 </h1>

[![CI](https://github.com/dying-will-bullet/donuts/actions/workflows/ci.yaml/badge.svg)](https://github.com/dying-will-bullet/donuts/actions/workflows/ci.yaml)
![](https://img.shields.io/badge/language-zig-%23ec915c)

Beautiful spinners for terminal.

## Tutorial

```zig
const std = @import("std");
const Donuts = @import("donuts").Donuts;

pub fn main() !void {
    var sp = Donuts(std.io.getStdOut()).init(
        "Scanning files...",
        .{ .style = .dots },
        .{},
    );

    try sp.start();

    std.time.sleep(1 * std.time.ns_per_s);
    try sp.echoLine("1) build.zig", .{});

    std.time.sleep(1 * std.time.ns_per_s);
    try sp.echoLine("2) build.zig.zon", .{});

    std.time.sleep(1 * std.time.ns_per_s);

    try sp.echoLine("3) README.md", .{});
    try sp.stop(.{ .symbol = "✅", .message = "Done" });
}
```

![output](https://github.com/dying-will-bullet/donuts/assets/9482395/e108b876-53d6-4678-9704-cfbc0a5231fe)

```zig
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
```

![output](https://github.com/dying-will-bullet/donuts/assets/9482395/1f14a0f6-744c-4438-b6c3-69dcfe7b8c20)

![output](https://github.com/dying-will-bullet/donuts/assets/9482395/34cdeab7-8561-4d33-80f5-a20cbde02ccd)


## Installation

## LICENSE

MIT License Copyright (c) 2023, Hanaasagi
