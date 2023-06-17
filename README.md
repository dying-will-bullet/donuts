<h1 align="center"> donuts 🍩 </h1>

[![CI](https://github.com/dying-will-bullet/donuts/actions/workflows/ci.yaml/badge.svg)](https://github.com/dying-will-bullet/donuts/actions/workflows/ci.yaml)
![](https://img.shields.io/badge/language-zig-%23ec915c)

Beautiful spinners for terminal.

## Features

- 75 built-in spinners.
- Supports ANSI Color.

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

![output](https://github.com/dying-will-bullet/donuts/assets/9482395/1f14a0f6-744c-4438-b6c3-69dcfe7b8c20)

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

![output](https://github.com/dying-will-bullet/donuts/assets/9482395/4fc15a13-e57d-45b3-b211-978974b091cd)

## Installation

Add `donuts` as dependency in `build.zig.zon`:

```
.{
    .name = "my-project",
    .version = "0.1.0",
    .dependencies = .{
       .donuts = .{
           .url = "https://github.com/dying-will-bullet/donuts/archive/refs/tags/v0.1.0.tar.gz",
           .hash = "1220bada42a79e3a368511af68dbc71c71f5dfc55844ed420f3a1637936ef99356a7",
       },
    },
}
```

Add `donuts` as a module in `build.zig`:

```diff
diff --git a/build.zig b/build.zig
index 957f625..d1a906c 100644
--- a/build.zig
+++ b/build.zig
@@ -15,6 +15,9 @@ pub fn build(b: *std.Build) void {
     // set a preferred release mode, allowing the user to decide how to optimize.
     const optimize = b.standardOptimizeOption(.{});

+    const opts = .{ .target = target, .optimize = optimize };
+    const donuts_module = b.dependency("donuts", opts).module("donuts");
+
     const exe = b.addExecutable(.{
         .name = "tmp",
         // In this case the main source file is merely a path, however, in more
@@ -23,6 +26,7 @@ pub fn build(b: *std.Build) void {
         .target = target,
         .optimize = optimize,
     });
+    exe.addModule("donuts", donuts_module);

     // This declares intent for the executable to be installed into the
     // standard location when the user invokes the "install" step (the default
```

## LICENSE

MIT License Copyright (c) 2023, Hanaasagi
