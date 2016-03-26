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
