#!/bin/bash
set -x
set -eufo pipefail

find .build -name '*qcow2'
rm -rf .build

./build kvm-rootlessPodman-lima

cat << EOF > lima-manifest.yaml
vmType: qemu
os: Linux
images:
  - location: "$(greadlink -f $(find .build -name '*qcow2'))"

containerd:
  system: false
  user: false
EOF

limactl create --name=gardenlinux-$(date +%s) lima-manifest.yaml
