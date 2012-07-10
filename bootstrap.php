<?php
date_default_timezone_set('America/Sao_Paulo');

define('BD', realpath(dirname(__FILE__)));

error_reporting(-1);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);

set_include_path(implode(PATH_SEPARATOR, array(
	BD . '/library/',
	get_include_path()
)));

spl_autoload_register(function($classname) {
    $classname = ltrim($classname, "\\");
    preg_match('/^(.+)?([^\\\\]+)$/U', $classname, $match);
    $classname = str_replace("\\", "/", $match[1]) . str_replace(["\\", "_"], "/", $match[2]) . ".php";
    
    echo "\n$classname\n";
    include_once $classname;	
});
