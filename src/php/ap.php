<?php
namespace WebSharks\TravisCi;
// This is loaded via INI `auto_prepend_file`.
// No strict types. This must be compatible w/ PHP v5.4+.

foreach ($_SERVER as $_key => &$_value) {
    if ($_value === ' ' && strpos($_key, 'CI_CFG_') === 0) {
        $_value = ''; // Empty this string.
    }
} unset($_key, $_value);
