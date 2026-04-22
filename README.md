# Homelab Configs

This repository is a collection of configs used in my homelab. It is easier for me to manage and keep the configs across
different servers organised.

## NixOS Configs

These nix configs are found in the [nix directory](nix) which is deployed to all nix machines in my homelab network.

The configs include some common modules which can be reused across systems, as well as the individual host configs.

### Installation

Run the following command from the repository directory
```sh
tar -cjf ~/nixos_backup.tar.bz2 /etc/nixos/*
rm -r /etc/nixos/*
ln -sf "$(pwd)/nix/hosts/$(hostname)/configuration.nix" /etc/nixos/
nixos-rebuild switch
```