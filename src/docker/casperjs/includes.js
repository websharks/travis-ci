$ = casper; // Casper alias.
$$ = {}; // Custom extensions.

$$.system = require('system');
require('/bootstrap-ci/src/docker/casperjs/libs/aliases.js');
_ = require('/bootstrap-ci/src/docker/casperjs/libs/underscore.js');

$$.www = require('/bootstrap-ci/src/docker/casperjs/libs/www.js');
$$.wp = require('/bootstrap-ci/src/docker/casperjs/libs/wp.js');
