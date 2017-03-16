# Rancher

Installs a rancher server cluster and environments.

## Requirements

* docker
* terraform

## Getting started
* Create the rancher server and environments cluster: `sh setup.sh`
* Create the rancher server: `sh ./server/setup.sh`
* Create the rancher environments: `sh ./environments/setup.sh apply environments`
* Create the rancher agents for the environments: `sh ./agents/setup.sh`
