final: prev: {

  xsv = final.callPackage ./pkgs/xsv {
    inherit (final.darwin.apple_sdk.frameworks) Security;
  };

  mandown = final.callPackage ./pkgs/mandown {};

  mgenplus = final.callPackage ./pkgs/mgenplus {};

  newsreader = final.callPackage ./pkgs/newsreader {};

  shippori = final.callPackage ./pkgs/shippori {};

  xtermcolor = final.callPackage ./pkgs/xtermcolor {};
}
