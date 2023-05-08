<?php

include($_SERVER['DOCUMENT_ROOT'] . '/layout/header.php');
include($_SERVER['DOCUMENT_ROOT'] . '/layout/loading.php');
include($_SERVER['DOCUMENT_ROOT'] . '/layout/footer.php');
wait_spinning('Closing session...'); //fake loading
session_destroy();