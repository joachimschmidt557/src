{
  description = "A small POSIX shell script which manages source directories for you.";

  inputs.nixpkgs.url = "nixpkgs/nixos-21.05";

  outputs = { self, nixpkgs }: {

    defaultPackage.x86_64-linux =
      with import nixpkgs { system = "x86_64-linux"; };
      stdenv.mkDerivation {
        pname = "src";
        version = "master";
        src = self;

        makeFlags = [ "PREFIX=$(out)" ];
      };

  };
}
