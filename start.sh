#!/bin/bash

ARCH=$(uname -m)

if [[ "$ARCH" == "aarch64" ]]; then
    echo "Detected 64-bit device"
    ./xray/xray -config config.json
else
    echo "Detected 32-bit device"
    ./xray32/xray -config config.json
fi
