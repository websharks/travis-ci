#!/usr/bin/env bash

set -o errexit;

mkdir --parents ~/ws/repos &>/dev/null;
git clone https://github.com/websharks/travis-ci ~/ws/repos/travis-ci --branch=master --depth=1 &>/dev/null;

. ~/ws/repos/travis-ci/src/.travis.bash;
