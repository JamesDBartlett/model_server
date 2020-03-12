#!/bin/bash
set -ex

TEST_DIRS=tests

make docker_build_apt_ubuntu

. .venv-jenkins/bin/activate

py.test ${TEST_DIRS}/functional/ -v --test_dir=/var/jenkins_home/test_models_mzeglars