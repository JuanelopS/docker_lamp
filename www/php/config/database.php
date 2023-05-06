<?php

$servername = DB_SERVER;
$user_db = DB_USER;
$pass_db = DB_PASSWORD;
$database = DB_DATABASE;

try {
    $conn = new PDO("mysql:host=$servername;dbname=$database", $user_db, $pass_db);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // echo "Connected successfully";
} catch (PDOException $e) {
    echo "Connection to database failed: " . $e->getMessage();
}

$conn = null;