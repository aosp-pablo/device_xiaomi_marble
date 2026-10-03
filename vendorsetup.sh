#!/bin/bash

export SKIP_ABI_CHECKS=true

if [[ ! -d "vendor/infinity-priv/keys" ]]; then
    GIT_TERMINAL_PROMPT=0 git clone https://github.com/ProjectInfinity-X/vendor_infinity-priv_keys vendor/infinity-priv/keys/ 2>/dev/null \
        || echo "Skipping private keys repo (no access)"
fi
