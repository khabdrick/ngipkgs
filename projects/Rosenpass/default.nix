{
  lib,
  pkgs,
  sources,
}@args:

{
  metadata = {
    summary = "Rosenpass is a formally verified, post-quantum secure VPN that uses WireGuard to transport the actual data.";
    subgrants = [
      "Rosenpass"
      "Rosenpass-API"
      "Rosenpass-integration"
    ];
    links = {
      docs = {
        text = "Rosenpass documentation";
        url = "https://rosenpass.eu/docs/";
      };
      docker = {
        text = "Rosenpass in Docker";
        url = "https://github.com/rosenpass/rosenpass/blob/main/docker/USAGE.md";
      };
      build = {
        text = "Build from source";
        url = "http://rosenpass.eu/docs/rosenpass-tool/compilation/#installation-via-binary-files";
      };
    };
  };

  nixos.modules.programs = {
    rosenpass = {
      name = "rosenpass";
      module = ./programs/basic/module.nix;
      examples.basic = {
        module = ./programs/basic/examples/basic.nix;
        description = "";
        tests.basic = import ./programs/basic/tests/basic.nix args;
      };
    };
  };

  nixos.modules.services = {
    rosenpass = {
      name = "rosenpass";
      module = "${sources.inputs.nixpkgs}/nixos/modules/services/networking/rosenpass.nix";
    };
  };
}
