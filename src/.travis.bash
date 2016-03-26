#!/usr/bin/env bash

# Clone Travis CI repo.
mkdir --parents ~/ws/repos &>/dev/null || exit 1;
git clone https://github.com/websharks/travis-ci ~/ws/repos/travis-ci --branch=master --depth=1 &>/dev/null || exit 1;

# Run setup scripts.
. ~/ws/repos/travis-ci/src/setup.bash;

# Custom code reinserted here via [custom] marker. Add your <custom></custom> comment markers here please.

# Run build now; i.e., Phing, etc.
. ~/ws/repos/travis-ci/src/build.bash;
