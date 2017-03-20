#!/bin/bash
set -e

sh ./server/setup.sh
sh ./environments/Test/setup.sh apply
sh ./agents/Test/setup.sh
