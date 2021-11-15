package(default_visibility = ["//visibility:private"])

load("@rules_rust//rust:defs.bzl", "rust_library", "rust_test")

rust_library(
    name = "hello_lib",
    srcs = [
        "src/greeter.rs",
        "src/lib.rs",
    ],
    visibility = ["//hello_world:__pkg__"],
)

rust_test(
    name = "greeting_test",
    srcs = ["tests/greeting.rs"],
    deps = [":hello_lib"],
)
