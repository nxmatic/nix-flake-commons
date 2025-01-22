{
  description = "nix system configurations";

  nixConfig = {
    substituters = [
      "https://cache.nixos.org"
      #      "https://kclejeune.cachix.org"
      "https://cache.flox.dev"
    ];

    trusted-public-keys = [
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      #      "kclejeuneachix.org-1:fOCrECygdFZKbMxHClhiTS6oowOkJ/I/dh9q9b1I4ko="
      "flox-cache-public-1:7F4OyH7ZCnFhcze3fJdfyXYLQw/aV7GEed86nQ7IsOs="
    ];
  };

  inputs = {
    flake-compat.url = "github:edolstra/flake-compat";
    flake-utils.url = "github:numtide/flake-utils";

    nix.url = "github:NixOS/nix/2.24.10";
    nixos-hardware.url = "github:nixos/nixos-hardware";
    #   nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-24.05-darwin";
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-24.11-darwin";
    nixpkgs-staging.url = "github:nixos/nixpkgs/staging";
    nixpkgs-develop.url = "github:nxmatic/nixpkgs/develop";

    cachix = {
      url = "github:cachix/cachix";
      inputs.flake-compat.follows = "flake-compat";
    };

    determinate.url = "https://flakehub.com/f/DeterminateSystems/determinate/0.1";

    darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    devenv = {
      url = "github:cachix/devenv/latest";
      inputs.cachix.follows = "cachix";
      inputs.flake-compat.follows = "flake-compat";
      inputs.nix.follows = "nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flox = {
      url = "github:flox/flox/v1.3.5";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvfetcher.url = "github:berberman/nvfetcher/0.7.0";

    treefmt-nix.url = "github:numtide/treefmt-nix/main";

    # nxmatic 

    bird = {
      flake = true;
      url = "github:nxmatic/bird?ref=hotfix/v2.15.1-nix-darwin";
    };

    maven-mvnd = {
      flake = true;
      url = "github:nxmatic/nix-maven-mvnd/develop";
    };

    nix-darwin-home = {
      flake = true;
      url = "github:nxmatic/nix-darwin-home/work";
    };
      
    socket-vmnet = {
      flake = true;
      url = "github:nxmatic/nix-socket-vmnet/develop";
    };

    zen-browser = {
      flake = true;
      url = "github:nxmatic/nix-zen-browser/develop";
    };

    ripvcs = {
      flake = true;
      url = "github:nxmatic/nix-ripvcs/develop";
    };

  };

  outputs = { self, nixpkgs, flake-utils, home-manager, ... }:
    {};

}
