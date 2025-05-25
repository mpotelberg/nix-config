#!/usr/bin/env bash
pushd ~/.system > /dev/null
home-manager switch --flake .#$(whoami)@$(hostname)
popd > /dev/null
