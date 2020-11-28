{
  description = "A small POSIX shell script which manages source directories for you.";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-20.09";

  outputs = { self, nixpkgs }: {

    defaultPackage.x86_64-linux =
      with import nixpkgs { system = "x86_64-linux"; };
      stdenv.mkDerivation {
        name = "src";
        src = self;

        makeFlags = [ "PREFIX=$(out)" ];
      };

  };
}
