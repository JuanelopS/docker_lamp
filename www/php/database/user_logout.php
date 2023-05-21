<?php

include($_SERVER['DOCUMENT_ROOT'] . '/views/loading.php');

wait_spinning("Farewell...");
session_destroy();

