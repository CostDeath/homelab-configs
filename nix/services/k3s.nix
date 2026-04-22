{config, pkgs, ...}:

let inherit (import ../variables.nix) k3s_token;

in {

  services.k3s = {
    enable = true;
    role = "server";
    token = k3s_token;
  };

  networking.firewall.allowedTCPPorts = [
    6443 # k3s API server
    2379 2380 # etcd
  ];
  networking.firewall.allowedUDPPorts = [
    8472 # flannel
  ];

  environment.systemPackages = with pkgs; [
    kubectl kubernetes-helm
  ];

}