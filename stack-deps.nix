{ compiler ? "ghc865" }:
let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
in
pkgs.haskell.lib.buildStackProject {
  name = "kubernetes-client-haskell";
  buildInputs = with pkgs; [
    zlib
  ];
  ghc = pkgs.haskell.compiler.${compiler};
}
