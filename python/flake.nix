{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      utils,
    }:
    utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShell = pkgs.mkShell {
          name = "python";
          packages = with pkgs; [
            (python3.withPackages (
              python-pkgs: with python-pkgs; [
                numpy
                matplotlib
              ]
            ))
            pyright
            ruff
          ];
        };
      }
    );
}
