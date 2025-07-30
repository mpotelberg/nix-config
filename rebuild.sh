#!/usr/bin/env bash
pushd ~/.nix-config > /dev/null
sudo nixos-rebuild switch --install-bootloader --flake .#$(hostname)
popd > /dev/null
