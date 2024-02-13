const std = @import("std");

pub fn build(b: *std.Build) void {
    // const target = b.standardTargetOptions(.{});
    // const optimize = b.standardOptimizeOption(.{});
    const lib = b.addSharedLibrary("imgzig", "src/image.zig", b.version(0, 0, 1));
    b.installArtifact(lib);
}
