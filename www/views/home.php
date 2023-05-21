<?php

include($_SERVER['DOCUMENT_ROOT'] . '/layout/header.php');

/* TODO: Welcome page, admin/users views $_SESSION['id_rol']... */

if(isset($_SESSION['email'])){
    /* echo "Welcome " . $_SESSION['name']; */
    echo "<h2><center>";
    echo "Welcome " . $_SESSION['name'];
    echo "</center></h2>";

} else {
    echo "Welcome...";
}

include($_SERVER['DOCUMENT_ROOT'] . '/layout/footer.php');
