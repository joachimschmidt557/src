{
  description = "A small POSIX shell script which manages source directories for you.";

  inputs.nixpkgs.url = "nixpkgs/nixos-22.05";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    (flake-utils.lib.eachDefaultSystem (system:

      let pkgs = nixpkgs.legacyPackages.${system}; in
      {

        defaultPackage = pkgs.stdenv.mkDerivation {
          pname = "src";
          version = "master";
          src = self;

          makeFlags = [ "PREFIX=$(out)" ];
        };

        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [
            shellcheck
          ];
        };

      }
    ));

}
