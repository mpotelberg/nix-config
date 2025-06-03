#!/usr/bin/env bash
pushd ~/.nix-config > /dev/null
sudo nixos-rebuild test --flake .#$(hostname)
popd > /dev/null
