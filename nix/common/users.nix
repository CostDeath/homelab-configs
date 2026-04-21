{config, pkgs, ...}:

{
  # Shared users across servers. Passwords must be set manually with 'passwd'

  users.users.cost = {
    isNormalUser = true;
    description = "Cost";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

}