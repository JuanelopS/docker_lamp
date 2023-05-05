<?php

/* ROUTING SYSTEM */

$request = $_SERVER['REQUEST_URI'];

switch ($request) {

    case '':
    case '/':
        require __DIR__ . '/views/index.php';
        break;

    case '/login':
        require __DIR__ . '/views/login.php';
        break;

    case '/register':
        require __DIR__ . '/views/register.php';
        break;

    case '/about':
        require __DIR__ . '/views/about.php';
        break;

    default:
        http_response_code(404);
        require __DIR__ . '/views/404.php';
        break;
}