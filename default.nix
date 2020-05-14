{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation rec {
  name = "src";

  src = ./.;
  # src = builtins.fetchGit {
  #   url = "https://github.com/joachimschmidt557/src";
  #   ref = "master";
  # };

  buildInputs = with pkgs; [
    wget
    unzip
  ];

  makeFlags = [ "PREFIX=$(out)" ];
}
