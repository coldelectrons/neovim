{
  description = "Jake Hamilton's Neovim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";

    snowfall-lib = {
      url = "github:snowfallorg/lib";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs:
    inputs.snowfall-lib.mkFlake {
      inherit inputs;

      src = ./.;

      outputs-builder = channels: {
        packages.default = "neovim-plusultra";
      };
    };
}
