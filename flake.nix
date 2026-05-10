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

    nix.url = "github:NixOS/nix/2.32.4";
    nixos-hardware.url = "github:nixos/nixos-hardware";
    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0";
    nixpkgs-unstable.url = "https://flakehub.com/f/NixOS/nixpkgs/0.1";

    impermanence.url = "github:nix-community/impermanence";
      
    disko = {
      url = "github:nix-community/disko/v1.12.0";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  
    nix-snapshotter = {
      url = "github:pdtpartners/nix-snapshotter";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixos-generators = {
      url = "github:nix-community/nixos-generators";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    cachix = {
      url = "github:cachix/cachix";
      inputs.flake-compat.follows = "flake-compat";
    };

    chromium-bin = {
      url = "github:lrworth/chromium-bin-flake";
    };

    lix-module = {
      url = "https://git.lix.systems/lix-project/nixos-module/archive/2.93.0.tar.gz";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    determinate.url = "https://flakehub.com/f/DeterminateSystems/determinate/0";

    darwin = {
      url = "github:nix-darwin/nix-darwin/nix-darwin-25.11";
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
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flox = {
      url = "github:flox/flox/v1.5.0";
#     inputs.nixpkgs.follows = "nixpkgs";
    };

    incus-compose = {
      url = "github:nxmatic/incus-compose/develop";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvfetcher.url = "github:berberman/nvfetcher";

    treefmt-nix.url = "github:numtide/treefmt-nix/main";

    extra-container = {
      flake = true;
      url = "github:erikarvstedt/extra-container";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
    };

    # nxmatic 

    bird = {
      flake = true;
      url = "github:nxmatic/bird?ref=hotfix/v2.15.1-nix-darwin";
    };

    maven-mvnd = {
      flake = true;
      url = "github:nxmatic/nix-maven-mvnd/develop";
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
