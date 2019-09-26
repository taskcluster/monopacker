#!/bin/bash

set -exv

# init helpers
helpers_dir=${MONOPACKER_HELPERS_DIR:-"/etc/monopacker/scripts"}
. ${helpers_dir}/*.sh

docker --version

# Versions for sidecar containers

# Pull images used for sidecar containers
taskcluster_proxy_version=5.1.0
retry docker pull taskcluster/taskcluster-proxy:$taskcluster_proxy_version

livelog_version=4
retry docker pull taskcluster/livelog:v$livelog_version

dind_service_version=4.0
retry docker pull taskcluster/dind-service:v$dind_service_version

relengapi_proxy_version=2.3.1
retry docker pull taskcluster/relengapi-proxy:$relengapi_proxy_version
