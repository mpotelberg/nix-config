#!/usr/bin/env bash
pushd ~/.nix-config > /dev/null
sudo nixos-rebuild switch --flake .#$(hostname)
popd > /dev/null
