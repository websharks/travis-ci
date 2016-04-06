<?php
/*
 * Globalize some WordPress variables, because PHPUnit loads this file inside a function
 * See: https://github.com/sebastianbergmann/phpunit/issues/325
 */
global $table_prefix, $wpdb, $current_site, $current_blog, $wp_rewrite, $shortcode_tags, $wp, $phpmailer;
