$ = casper; // Casper alias.
$$ = {}; // Custom extensions.

$$.system = require('system');
require('/bootstrap/src/casperjs/libs/aliases.js');
_ = require('/bootstrap/src/casperjs/libs/underscore.js');

$$.www = require('/bootstrap/src/casperjs/libs/www.js');
$$.wp = require('/bootstrap/src/casperjs/libs/wp.js');
