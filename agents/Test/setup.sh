#!/bin/bash
set -e

pwd
[ -d /var/lib/rancher ] || sudo mkdir -p /var/lib/rancher
$(cd ./environments/Test && terraform output -module=Test registration_command)
