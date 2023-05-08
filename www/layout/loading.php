<?php

/* BASIC JS TIMEOUT */

/* TODO: ADD CSS SPINNER, EXPLORE BETTER OPTIONS FOR THIS... */

function wait_spinning($msg = ''){
    echo "
        <script>
            let main = document.querySelector('main');
            main.insertAdjacentHTML('beforeend', '<h2>$msg</h2>');
            let wait = () => setTimeout(() => {
                window.location.href = '" . HOST . "';
                console.log('$msg');
            }, 5000);
            wait();
        </script>
    ";
}

