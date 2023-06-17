#!/bin/python3

import re

FILE = "./spinner.zig"
TARGET = "./style.zig"

with open(FILE) as f:
    content = f.read()

names = []
for line in content.splitlines():
    line = line.strip()
    match = re.match(r"^pub const (\w+) =$", line)
    if match:
        names.append(match.group(1))

with open(TARGET, "w") as f:
    f.write(f'const sp = @import("./spinner.zig");\n')
    f.write(f"\n")

    f.write("pub const Style = enum {\n")

    for name in names:
        f.write(f"    {name},\n")

    f.write("\n")

    f.write("    pub fn data(style: Style) sp.Spinner {\n")
    f.write("        return switch (style) {\n")

    for name in names:
        f.write(f"            .{name} => sp.{name},\n")

    f.write("        };\n")
    f.write("    }\n")

    f.write("};\n")

print(f"TOTAL: {len(names)} spinners")
