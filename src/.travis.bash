#!/usr/bin/env bash

# Force root user.

if [[ "$(whoami)" != 'root' ]]; then
  sudo -E "${BASH_SOURCE[0]}"; exit; fi;

# Clone Travis CI repo.

mkdir --parents ~/ws/repos &>/dev/null || exit 1;
git clone https://github.com/websharks/travis-ci /bootstrap --branch=master --depth=1 &>/dev/null || exit 1;

# Run setup scripts.

. /bootstrap/src/setup.bash &>/dev/null || exit 1;

# Custom code reinserted here via [custom] marker. Add your <custom></custom> comment markers here please.

# Run build now; i.e., Phing, etc.

. /bootstrap/src/build.bash;
