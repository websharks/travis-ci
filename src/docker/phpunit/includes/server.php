<?php
$_SERVER['SERVER_NAME']     = $_SERVER['CFG_HOST'];
$_SERVER['SERVER_ADDR']     = '127.0.0.1';
$_SERVER['SERVER_PORT']     = '443';
$_SERVER['SERVER_SOFTWARE'] = 'Apache';
$_SERVER['SERVER_PROTOCOL'] = 'HTTP/1.1';
$_SERVER['SERVER_ADMIN']    = 'hostmaster@'.$_SERVER['CFG_HOST'];

$_SERVER['PATH_INFO']       = '';
$_SERVER['PHP_SELF']        = '/index.php';
$_SERVER['SCRIPT_NAME']     = '/index.php';
$_SERVER['DOCUMENT_URI']    = '/index.php';
$_SERVER['SCRIPT_FILENAME'] = $_SERVER['CI_NFO_WWW_DIR'].'/index.php';
$_SERVER['PATH_TRANSLATED'] = $_SERVER['CI_NFO_WWW_DIR'].'/index.php';
$_SERVER['DOCUMENT_ROOT']   = $_SERVER['CI_NFO_WWW_DIR'];

$_SERVER['HTTPS']          = 'on';
$_SERVER['REQUEST_SCHEME'] = 'https';
$_SERVER['REQUEST_METHOD'] = 'GET';
$_SERVER['HTTP_HOST']      = $_SERVER['CFG_HOST'];
$_SERVER['REQUEST_URI']    = '/index.php';
$_SERVER['QUERY_STRING']   = '';

$_SERVER['REMOTE_ADDR']     = '127.0.0.1';
$_SERVER['HTTP_USER_AGENT'] = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36';
