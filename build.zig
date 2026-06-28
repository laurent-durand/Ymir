const std = @import("std");

pub fn build(b: *std.Build) void {
    _ = b.addExecutable(.{ .name = "ymir", .root_source_file = .{ .path = "src/main.zig" } });
}
