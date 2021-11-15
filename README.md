# Rust Hello World, with Bazel Rules

Rust with rust_rules, because Rust rules.

## Motivation

I haven't had fun writing code for a while and decided to combine Bazel and Rust. This mostly follows the examples on https://bazelbuild.github.io/rules_rust/, with some changes as I learn.

Ok maybe my definition of fun is different to yours, but Rust and Bazel are pretty great.

I want to get to being able to codegen a hello world message and have `cargo check` run over my Bazel-ified Rust code base.

## Setup

We're using nix and direnv to control the Rust, Bazel, and Cargo versions. You'll need to install direnv and then run `direnv allow`.

Install direnv: https://direnv.net/

## Useful commands

Lint your code with `./tools/build/verify_rust.sh`.

```
bazel test //hello_lib:greeting_test
bazel run //hello_world
```

## TODO list

- Add CI checks to make sure all the Rust is linted.
- Use https://bazelbuild.github.io/rules_rust/rust_proto.html to generate part of the Hello World message.
- Build a Docker image.
- Invoke the Docker image over a localhost call to return Hello World, or Hello Whaterver.
- Make this into a Cloudflare Worker to get webscale Hello World with Bazel and Rust.

