#!/bin/bash
set -e

if [ -z $1 ]; then
  echo "Please enter an environment name. Run terraform env list and select an env"
  exit 1
fi

[ -d /var/lib/rancher ] || sudo mkdir -p /var/lib/rancher
terraform env select $1
$(terraform output registration_command)
