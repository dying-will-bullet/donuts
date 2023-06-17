const std = @import("std");

pub const Style = @import("./style.zig").Style;
pub const Donuts = @import("./donuts.zig").Donuts;
pub const spinner = @import("./spinner.zig");

// --------------------------------------------------------------------------------
//                                   Testing
// --------------------------------------------------------------------------------

test {
    // Import All files
    _ = @import("./spinner.zig");
    _ = @import("./style.zig");
    _ = @import("./donuts.zig");
    _ = @import("./ansi.zig");

    std.testing.refAllDecls(@This());
}
