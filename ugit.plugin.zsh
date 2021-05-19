#!/usr/bin/env zsh
# Copyright 2021 Joseph Block <jpb@unixorn.net>
#
# Licensed under the MIT license.

# Append the repo's main directory to $PATH to make ugit available
PLUGIN_BIN="$(dirname $0)"
export PATH=${PATH}:${PLUGIN_BIN}
