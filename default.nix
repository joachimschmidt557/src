{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation rec {
  name = "src";

  src = ./.;
  # src = builtins.fetchGit {
  #   url = "https://github.com/joachimschmidt557/src";
  #   ref = "master";
  # };

  installPhase = ''
    mkdir -p $out/bin
    cp src $out/bin
  '';
}
