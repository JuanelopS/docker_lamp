<?php

/* ROUTING SYSTEM */

$request = $_SERVER['REQUEST_URI'];

switch ($request) {

case '':
case '/':
require $_SERVER['DOCUMENT_ROOT'] . '/views/index.php';
break;

case '/login':
require $_SERVER['DOCUMENT_ROOT'] . '/views/login.php';
break;

case '/register':
require $_SERVER['DOCUMENT_ROOT'] . '/views/register.php';
break;

case '/about':
require $_SERVER['DOCUMENT_ROOT'] . '/views/about.php';
break;

default:
http_response_code(404);
require $_SERVER['DOCUMENT_ROOT'] . '/views/404.php';
break;
}