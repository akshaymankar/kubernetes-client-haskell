let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
in {
  env = pkgs.buildEnv {
    name = "kubernetes-client-haskell";
    paths = with pkgs; [
      stack
      haskell-language-server
    ];
  };
}
