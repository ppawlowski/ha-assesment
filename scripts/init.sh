#!/bin/bash
set -e

ENVIRONMENT_NAME=$1
script_directory=$(dirname "$0")
source "${script_directory}/config"
source "${script_directory}/functions.bash"

terraform -chdir="${infrastructure_directory}" init -reconfigure
