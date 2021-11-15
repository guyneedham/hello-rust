{ nixpkgs ? import ./nixpkgs.nix { config = {}; overlays = []; } }:
with nixpkgs;
let
  baseInputs = [
    bazel_4
    cargo
    rustc
  ];
in
stdenv.mkDerivation {
  name = "rust-dev";
  
  # Do not be tempted to mess about with cross-platform C linking stuff here.
  # It's a time sink. You have better things to do.
  # Rust, it turns out, is incredbily sensitive to the C/C++ linking being correct.
  # If you change something around C et al, be sure to run the main and unit tests before commiting!
  buildInputs = baseInputs;
}
