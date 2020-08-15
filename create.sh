#!/usr/bin/env bash
mkdir -p jenkins_home

if [[ "${OSTYPE:0:6}" == "darwin" || "${OSTYPE:0:5}" == "linux" ]]; then
  export DOCKER_SOCK=/var/run/docker.sock
else
  echo "${OSTYPE} not supported"
  exit 1
fi

read -p "Enter GitHub Username: "  TVS_USERNAME
read -s -p "Enter GitHub Password: " TVS_PASSWORD
echo

export GH_USERNAME
export GH_PASSWORD

cat jenkins.yaml.template | envsubst > jenkins.yaml
cat docker-compose.yaml.template | envsubst > docker-compose.yaml
exit 0
