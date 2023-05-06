<?php

$servername = DB_SERVER;
$user_db = DB_USER;
$pass_db = DB_PASSWORD;
$database = DB_DATABASE;

/* POST VARIABLES */

$email = $_POST['email'];
$password = $_POST['password'];
$name = $_POST['name'];
$surname = $_POST['surname'];

try {
    $conn = new PDO("mysql:host=$servername;dbname=$database", $user_db, $pass_db);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // insert query (rol:2 -> normal user)
    $sql = "INSERT INTO users (email, password, name, surname, rol) VALUES ('$email', '$password', '$name', '$surname', 2)";
    // use exec() because no results are returned
    $conn->exec($sql);

    /* FIXME:
        - DUPLICATED REGISTRATION EMAILS
        - CHANGE TO PREPARED STATMENTS AND BOUND PARAMETERS -> https://www.w3schools.com/php/php_mysql_prepared_statements.asp
        - PROTECT PASSWORDS
     */

    // load view
    include($_SERVER['DOCUMENT_ROOT'] . '/layout/header.php');
    echo "User registered successfully!";
    include($_SERVER['DOCUMENT_ROOT'] . '/layout/footer.php');

} catch (PDOException $e) {
    echo $sql . "<br>" . $e->getMessage();
}

$conn = null;
