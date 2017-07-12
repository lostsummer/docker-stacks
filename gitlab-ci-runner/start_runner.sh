#!/bin/bash

docker run --name runner -d --restart=always \
  --volume $(pwd)/data:/home/gitlab_ci_multi_runner/data \
  --env='CI_SERVER_URL=http://192.168.240.28/ci' --env='RUNNER_TOKEN=6_Hv-vxyoGGvth7k5ZAy' \
  --env='RUNNER_DESCRIPTION=mytestrunner' --env='RUNNER_EXECUTOR=shell' \
  sameersbn/gitlab-ci-multi-runner:1.1.4-7
