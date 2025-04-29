{
  description = "A basic Nix flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in
    {
      devShells.default = pkgs.mkShell {
        buildInputs = with pkgs; [
            rustup
            yarn
        ];
      };
    };
}
