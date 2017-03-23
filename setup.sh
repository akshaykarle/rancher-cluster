#!/bin/bash
set -e

sh ./server/setup.sh
terraform env new Test environment
terraform apply environment
sh ./agents/setup.sh Test
