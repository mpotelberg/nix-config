#!/usr/bin/env bash
pushd ~/.system > /dev/null
sudo home-manager switch --flake .#$(whoami)@$(hostname)
popd > /dev/null
