{ pkgs ? (import <nixpkgs> {}).pkgs }:

with pkgs; stdenv.mkDerivation {
  name = "plotting";
  buildInputs = [ gnuplot ];
  src = ./.;
  # shellHook ="
  # ";
  # buildPhase = "
  # ";
}
