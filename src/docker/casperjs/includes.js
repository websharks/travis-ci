$ = casper; // Casper alias.
$$ = {}; // Custom extensions.

$$.system = require('system');
_ = require('/bootstrap-ci/src/docker/casperjs/libs/underscore.js');
$$.www = require('/bootstrap-ci/src/docker/casperjs/libs/www.js');
$$.wp = require('/bootstrap-ci/src/docker/casperjs/libs/wp.js');

require('/bootstrap-ci/src/docker/casperjs/events/resources.js');
require('/bootstrap-ci/src/docker/casperjs/other/aliases.js');
