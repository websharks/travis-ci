#!/usr/bin/env bash

# Force root user.

if [[ "$(whoami)" != 'root' ]]; then
  sudo -E "${BASH_SOURCE[0]}"; exit; fi;

# ----------------------------------------------------------------------------------------------------------------------

# Clone the websharks/travis-ci repo.
# Run setup scripts in websharks/travis-ci repo.

apt-get install git --yes || exit 1; # Make sure Git is installed first.
git clone https://github.com/websharks/travis-ci /bootstrap-ci --branch=master --depth=1 || exit 1;
. /bootstrap-ci/src/setup || exit 1; # In strict mode after this line finishes.

# ----------------------------------------------------------------------------------------------------------------------

# Custom code reinserted here via [custom] marker. Add your <custom></custom> comment markers here please.

# ----------------------------------------------------------------------------------------------------------------------

# Run build now; e.g., Phing, etc (after any custom code above).

. /bootstrap-ci/src/build;
