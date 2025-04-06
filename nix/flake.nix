{
  description = "Boilerplate binary wrapped as a Nix package";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
  };

  outputs = { self, nixpkgs }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in {
      packages.x86_64-linux.boilerplate = pkgs.stdenv.mkDerivation {
        pname = "boilerplate";
        version = "0.6.0";

        src = pkgs.fetchurl {
          url = "https://github.com/gruntwork-io/boilerplate/releases/download/v0.6.0/boilerplate_linux_amd64";
          # You can obtain the SHA by using the `sha256sum` on the downloaded artifact
          sha256 = "086826d53ce5eead3ef9b6e5fae397afd466427f7dcfdabe14e7faa6dac8f684"; # replace this
        };

        phases = [ "installPhase" ];

        installPhase = ''
          mkdir -p $out/bin
          cp $src $out/bin/boilerplate
          chmod +x $out/bin/boilerplate
        '';
      };
    };
}
