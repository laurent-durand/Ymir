const std = @import("std");
pub fn main() !void {
    var buffer: [1024]u8 = undefined;
    var fba = std.heap.FixedBufferAllocator.init(&buffer);
    const allocator = fba.allocator();
    const memory = try allocator.alloc(u8, 100);
    std.debug.print("--- Ymir: Custom Allocator (Zig) ---\n", .{});
    std.debug.print("Allocated 100 bytes at {*}\n", .{memory.ptr});
}
