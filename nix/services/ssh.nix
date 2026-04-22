{config, pkgs, ...}:

{
  services.openssh.enable = true;
  services.openssh.settings.PasswordAuthentication = false;

  services.fail2ban = {
    enable = true;
    ignoreIP = [
      "10.0.0.0/8"
      "192.168.0.0/16"
    ];
  };

  # Public Keys
  users.users.cost.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILypGHkEy8mVsmK9QxCxcsgEuWbQ5FbgqhfPsEEEi/DD Cost@DESKTOP-1N571BP"
  ];

  networking.firewall.allowedTCPPorts = [ 22 ];
}