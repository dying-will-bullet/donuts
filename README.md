<h1 align="center"> donuts 🍩 </h1>

[![CI](https://github.com/dying-will-bullet/donuts/actions/workflows/ci.yaml/badge.svg)](https://github.com/dying-will-bullet/donuts/actions/workflows/ci.yaml)
![](https://img.shields.io/badge/language-zig-%23ec915c)

Beautiful spinners for terminal.

[![asciicast](https://asciinema.org/a/591943.svg)](https://asciinema.org/a/591943)

## Examples

```zig
const std = @import("std");
const Donuts = @import("donuts").Donuts;

pub fn main() !void {
    var sp = Donuts(std.io.getStdOut()).init(.{ .style = .dots });
    try sp.start("Scanning files...");

    std.time.sleep(1 * std.time.ns_per_s);
    try sp.echoLine("1) build.zig");

    std.time.sleep(1 * std.time.ns_per_s);
    try sp.echoLine("2) build.zig.zon");

    std.time.sleep(1 * std.time.ns_per_s);

    try sp.echoLine("3) README.md");
    try sp.stop(.{ .symbol = "✅", .message = "Done" });
}
```

## Installation

## LICENSE

MIT License Copyright (c) 2023, Hanaasagi
