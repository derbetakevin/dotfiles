{
  config,
  pkgs,
  ...
}: {
  config = {
    users = {
      users = {
        derbetakevin = {
          extraGroups = [
            "libvirt"
            "kvm"
          ];
        };
      };

      groups = {
        libvirtd = {
          members = [
            "root"
            "derbetakevin"
          ];
        };
      };
    };

    programs = {
      virt-manager = {
        enable = true;
      };
    };

    virtualisation = {
      libvirtd = {
        enable = true;

        qemu = {
          swtpm = {
            enable = true;
          };

          ovmf = {
            enable = true;
            packages = [pkgs.OVMFFull.fd];
          };
        };

        onBoot = "ignore";
        onShutdown = "shutdown";
      };
    };

    environment = {
      sessionVariables = {
        LIBVIRT_DEFAULT_URI = ["qemu:///system"];
      };
      systemPackages = with pkgs; [
        spice
      ];
    };
  };
}
