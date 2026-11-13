#!/bin/bash

commands=(
        "uname -a"
        "command -v gcc lsblk findmnt blkid pvs vgs lvs"
        "lsblk -f"
        "lsblk -o NAME,TYPE,FSTYPE,SIZE,FSAVAIL,FSUSE%,UUID,MOUNTPOINTS"
        "findmnt --all --list --output TARGET,SOURCE,FSTYPE,OPTIONS"
        "sudo pvs"
        "sudo vgs"
        "sudo lvs"
        "gcc --version"
)

{
        for cmd in "${commands[@]}"; do
        echo "=================================="
        echo "COMMAND INITIATED: $cmd"
        echo "=================================="
        eval "$cmd"
        echo ""
        done
} > summary.txt 2>&1
