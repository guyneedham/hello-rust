package(default_visibility = ["//visibility:private"])

load("@rules_rust//rust:defs.bzl", "rust_library")

rust_library(
    name = "hello_lib",
    srcs = ["src/lib.rs"],
    visibility = ["//hello_world:__pkg__"],
)
