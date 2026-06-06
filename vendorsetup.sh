#!/bin/bash

bash device/xiaomi/miuicamera-marble/vendorsetup.sh

export NINJA_ARGS="-w dupbuild=warn"
export SKIP_ABI_CHECKS=true
