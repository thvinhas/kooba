<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

$config['site_license_key'] = '';
// ExpressionEngine Config Items
// Find more configs and overrides at
// https://docs.expressionengine.com/latest/general/system-configuration-overrides.html

$config['app_version'] = '7.2.10';
$config['encryption_key'] = '51439265c2b29e8b2ef829e80534248fcb6fb56b';
$config['session_crypt_key'] = 'a0d2e2cd5b8f7764eb279909b9d93f2510a1ef7a';
$config['database'] = array(
	'expressionengine' => array(
		'hostname' => 'localhost',
		'database' => 'kooba',
		'username' => 'root',
		'password' => '',
		'dbprefix' => 'exp_',
		'char_set' => 'utf8mb4',
		'dbcollat' => 'utf8mb4_unicode_ci',
		'port'     => ''
	),
);
$config['show_ee_news'] = 'y';

// EOF