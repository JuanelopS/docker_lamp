<?php

$servername = DB_SERVER;
$username = DB_USER;
$password = DB_PASSWORD;
$database = DB_DATABASE;

try {
    $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // echo "Connected successfully";
} catch (PDOException $e) {
    echo "Connection to database failed: " . $e->getMessage();
}
