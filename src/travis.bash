#!/usr/bin/env bash

# Include strict mode & functions.

. ~/ws/repos/travis-ci/src/bash/strict-mode;
. ~/ws/repos/travis-ci/src/bash/functions;

# Run setup scripts in this order now.

. ~/ws/repos/travis-ci/src/bash/setups/run-vars;
. ~/ws/repos/travis-ci/src/bash/setups/preamble;

. ~/ws/repos/travis-ci/src/bash/setups/directories;
. ~/ws/repos/travis-ci/src/bash/setups/replacements;

. ~/ws/repos/travis-ci/src/bash/setups/php;
. ~/ws/repos/travis-ci/src/bash/setups/mysql;
. ~/ws/repos/travis-ci/src/bash/setups/nginx;

. ~/ws/repos/travis-ci/src/bash/setups/wordpress;

# Build all; via Phing.

echo '--- Phing Build Process ----------------------------------------------';
echo; # This starts the Phing build process.
phing -f "${CI_CFG_BUILD_DIR}"/build.xml build-all;
echo; # If anything fails during the build, Phing exits.

# Check for any PHP errors that occurred; e.g., during unit testing.

if [[ -s ~/ws/logs/php/errors.log ]]; then
  echo '--- The following PHP errors were found in the log: ------------------';
  echo; # Display PHP error log for careful review.
  cat ~/ws/logs/php/errors.log; exit 1;
fi;
# Complete. Indicate success w/ final output now.

echo '--- Complete ---------------------------------------------------------';
echo; # Indicate success in final output now.
echo 'Build success — fantastic!';
