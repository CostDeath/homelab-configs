{config, pkgs, ...}:

let inherit (import ../variables.nix) wifi_name wifi_pass;

in {

    networking.networkmanager.enable = false;
    networking.wireless.enable = true;

    networking.wireless.networks = {
      "${wifi_name}" = {
        psk = wifi_pass;
      };
    };

}