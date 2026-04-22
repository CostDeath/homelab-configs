{config, pkgs, ...}:

let inherit (import ../variables.nix) wifiname wifipass;

in {

    networking.networkmanager.enable = false;
    networking.wireless.enable = true;

    networking.wireless.networks = {
      "${wifiname}" = {
        psk = wifipass;
      };
    };

}