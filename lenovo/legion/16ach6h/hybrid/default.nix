{ lib, ... }:

{
  imports = [
    ../../../../common/cpu/amd
    ../../../../common/cpu/amd/pstate.nix
    ../../../../common/cpu/amd/zenpower.nix
    ../../../../common/gpu/amd
    ../../../../common/gpu/nvidia/prime.nix
    ../../../../common/gpu/nvidia/ampere
    ../../../../common/pc/laptop
    ../../../../common/pc/laptop/ssd
    ../edid
  ];

  hardware = {
    nvidia = {
      prime = {
        amdgpuBusId = lib.mkDefault "PCI:5:0:0";
        nvidiaBusId = "PCI:1:0:0";
      };
    };
  };
}
