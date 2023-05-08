<?php

include($_SERVER['DOCUMENT_ROOT'] . '/layout/header.php');

/* TODO: Welcome page, admin/users views $_SESSION['id_rol']... */

if(isset($_SESSION['name'])){
    /* echo "Welcome " . $_SESSION['name']; */
    echo "<center>";
    print_r($_SESSION);
    echo session_id();
    echo "</center>";

} else {
    echo "Welcome...";
}

include($_SERVER['DOCUMENT_ROOT'] . '/layout/footer.php');
