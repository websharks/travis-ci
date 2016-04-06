<?php
set_error_handler(function ($errno, $errstr, $errfile, $errline) {
    echo "\n".'PHP Error: '.$errstr."\n";
    echo 'File: '.$errfile.' @ Line: '.$errline."\n";
});
