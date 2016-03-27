#!/usr/bin/env bash

# Include strict mode & functions.

. /bootstrap/src/bash/strict-mode;
. /bootstrap/src/bash/functions;

# Run setup scripts in this order now.

. /bootstrap/src/setups/aptitude;
. /bootstrap/src/setups/utilities;
. /bootstrap/src/setups/timezone;

. /bootstrap/src/setups/ci-vars;

. /bootstrap/src/setups/hosts;
. /bootstrap/src/setups/mkdirs;
. /bootstrap/src/setups/env-vars;
. /bootstrap/src/setups/ssl-certs;

. /bootstrap/src/setups/postfix;
. /bootstrap/src/setups/nginx;
. /bootstrap/src/setups/mysql;

. /bootstrap/src/setups/ramdisk;
. /bootstrap/src/setups/memcache;

. /bootstrap/src/setups/php/stub;

. /bootstrap/src/setups/phing;
. /bootstrap/src/setups/phpcs;
. /bootstrap/src/setups/apigen;
. /bootstrap/src/setups/composer;

. /bootstrap/src/setups/wp-cli;
. /bootstrap/src/setups/wordpress;
