#!/bin/bash

cd environments/Test
terraform get
terraform $*
