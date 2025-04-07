{
  lib,
  pkgs,
  sources,
}@args:
{
  # NOTE:
  # - Check `projects/models.nix` for a more detailed project structure
  # - Each program/service must have at least one example
  # - Set attributes to `null` to indicate that they're needed, but not available
  metadata = {
    summary = "SCION is a clean-slate Next-Generation Internet (NGI) architecture which offers a.o. multi-path and path-awareness capabilities by design.";
    subgrants = [
      "SCION-proxy"
      "SCION-router-codealignment"
      "Verified-SCION-router"
      "SCION-Rains"
      "SCION-Swarm"
      "SCION-IPFS"
      "SCION-1M"
    ];
  };

  nixos.modules.programs = {
    scion = {
      name = "scion";
    # module = ./module.nix;
    # examples.foobar = {
    #   module = ./example.nix;
    #   description = "";
    #   tests.basic = ./test.nix;
      };
      links = {
        build = {
          text = "SCION Documentation";
          url = "https://docs.scion.org/en/latest/";
        };
        build = {
          text = "Build from source";
          url = "https://github.com/scionproto/scion?tab=readme-ov-file#build-from-sources";
        };
        tests = {
          text = "Testing Tutorial";
          url = "https://docs.scion.org/en/latest/tutorials/deploy.html#tasks-to-perform";
        };
      };
    };

  };

  # NOTE: same structure as programs
  nixos.modules.services = {
    name = "service name";
   # module = "./services/scion/module.nix";
    links = {
        build = {
          text = "SCION Documentation";
          url = "https://docs.scion.org/en/latest/";
        };
        build = {
          text = "Build from source";
          url = "https://github.com/scionproto/scion?tab=readme-ov-file#build-from-sources";
        };
        tests = {
          text = "Testing Tutorial";
          url = "https://docs.scion.org/en/latest/tutorials/deploy.html#tasks-to-perform";
        };
      };
  };
}
