#!/bin/bash
set -e

pwd
[ -d /var/lib/rancher ] || sudo mkdir -p /var/lib/rancher
$(cd ./environments && terraform output test_registration_command)
