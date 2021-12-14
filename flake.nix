{
  description = "Miscellaneous collection of Nix packages";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }: {
    overlay = import ./overlay.nix;
  } // (flake-utils.lib.eachDefaultSystem (system:
  let
    pkgs = import nixpkgs {
      inherit system;
      overlays = [ self.overlay ];
    };
  in {
    packages = {
      inherit (pkgs)
      xsv
      mandown
      mgenplus
      newsreader
      shippori
      xtermcolor
      ;
    };
  }));
}
