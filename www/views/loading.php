<?php

/* BASIC JS TIMEOUT */

/* TODO: ADD CSS SPINNER, EXPLORE BETTER OPTIONS FOR THIS... */

/**
 * Redirect login/logout
 */
function wait_spinning($msg = 'Please wait...'){

    include($_SERVER['DOCUMENT_ROOT'] . '/layout/header.php');
    echo "
        <script>
            let main = document.querySelector('main');
            main.insertAdjacentHTML('beforeend', '<h2>$msg</h2>');
            let wait = () => setTimeout(() => {
                window.location.href = '" . HOST . "';
                console.log('$msg');
            }, 3000);
            wait();
        </script>
    ";
    include($_SERVER['DOCUMENT_ROOT'] . '/layout/footer.php');

}

