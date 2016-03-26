#!/usr/bin/env bash

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
