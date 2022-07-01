#!/usr/bin/env bash

set -e

source "/shim/vpn.sh"

exec rsync $@
