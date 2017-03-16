#!/bin/bash
set -e

sh ./server/setup.sh
sh ./environments/setup.sh apply environments
sh ./agents/setup.sh
