let
  nixpkgs = fetchGit {
    url = "https://github.com/NixOS/nixpkgs.git";
    ref = "release-21.05";
    # most recent bump to `pkgs/development/compilers/rust/1_55.nix` - rustc 1.55.0
    rev = "28d980df026af90bd0872b82dc9a652e0485c78e";
  };
in
  import nixpkgs

