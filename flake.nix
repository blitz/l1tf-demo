{
  description = "A demonstrator for L1TF/Foreshadow";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable-small";

  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.default =
      nixpkgs.legacyPackages.x86_64-linux.callPackage ./nix/build.nix {
        src = self;
      };
  };
}
