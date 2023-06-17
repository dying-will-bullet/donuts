<h1 align="center"> donuts 🍩 </h1>

[![CI](https://github.com/dying-will-bullet/donuts/actions/workflows/ci.yaml/badge.svg)](https://github.com/dying-will-bullet/donuts/actions/workflows/ci.yaml)
![](https://img.shields.io/badge/language-zig-%23ec915c)

Beautiful spinners for terminal.

## Tutorial

### Create a spinner with a text message.

```zig
const std = @import("std");
const Donuts = @import("donuts").Donuts;

pub fn main() !void {
    // Create a spinner
    var sp = Donuts(std.io.getStdOut()).init(
        // message
        "Scanning files...",
        // spinner style
        .{ .style = .dots },
        // options
        .{},
    );

    // Start a thread to render spinner
    try sp.start();

    std.time.sleep(1 * std.time.ns_per_s);
    // Write text to same stream
    try sp.echoLine("1) build.zig", .{});

    std.time.sleep(1 * std.time.ns_per_s);
    try sp.echoLine("2) build.zig.zon", .{});

    std.time.sleep(1 * std.time.ns_per_s);

    try sp.echoLine("3) README.md", .{});
    // Stop the spinner thread and render exit text.
    try sp.stop(.{ .symbol = "✅", .message = "Done" });
}
```

![output](https://github.com/dying-will-bullet/donuts/assets/9482395/e108b876-53d6-4678-9704-cfbc0a5231fe)

### Colorful spinner and message.

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

### Simple download progress bar

```zig
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
    try sp.stop(.{ .symbol = "✅", .message = "Finsihed." });
}
```

![output](https://github.com/dying-will-bullet/donuts/assets/9482395/1f14a0f6-744c-4438-b6c3-69dcfe7b8c20)

![output](https://github.com/dying-will-bullet/donuts/assets/9482395/34cdeab7-8561-4d33-80f5-a20cbde02ccd)


## Installation

## LICENSE

MIT License Copyright (c) 2023, Hanaasagi
