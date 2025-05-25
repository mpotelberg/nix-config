#!/usr/bin/env bash
pushd ~/.system > /dev/null
sudo nixos-rebuild switch --flake .#$(hostname)
popd > /dev/null
