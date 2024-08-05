{
  description = "Entry Point for NixOS, Nix Darwin and Home Manager";

  inputs = { 

    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    };

    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = { self, ...}@inputs:
  {
    # Build darwin flake using: darwin-rebuild build --flake ~/.config/nix/
    darwinConfigurations = 
    let 
      inherit (inputs.nix-darwin.lib) darwinSystem;
      # inherit (inputs.home-manager.darwinModules) home-manager;
    in {
      "Midnight-Air" = darwinSystem {
        system = "aarch64-darwin";
        modules = [ ./darwin.nix ];
      };
    };

    # Expose the package set, including overlays, for convenience.
    darwinPackages = self.darwinConfigurations."Midnight-Air".pkgs;
  };
}