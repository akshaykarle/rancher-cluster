# Rancher

Installs a rancher server cluster and environments.

## Requirements

* docker
* terraform

## Getting started
* Create the rancher server and environments cluster: `sh setup.sh`
* Create the rancher server: `sh ./server/setup.sh`
* Create the rancher environment: `terraform env new Test environment; terraform apply environment`
* Create the rancher agents for the environment: `sh ./agents/setup.sh Test`
