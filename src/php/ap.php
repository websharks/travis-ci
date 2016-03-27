<?php
namespace WebSharks\TravisCi\Bootstrap;

// This is loaded via INI `auto_prepend_file`.
// No strict types. This must be compatible w/ PHP v5.4+.

foreach ($_SERVER as $_key => &$_value) {
    if ($_value === ' ' && strpos($_key, 'CI_') === 0) {
        // See: `src/setups/ci-vars` for reasoning.
        $_value = ''; // Empty this string.
    }
} unset($_key, $_value);
