<h2 class="subtitle">
    Login
</h2>

<form action="" method="post" class="form">
    <label for="user">User</label>
    <input type="text" name="user" id="input-user" required>
    <label for="password">Password</label>
    <input type="password" name="password" id="input-password" required>
    <input type="submit" value="Login">
</form>

<?php

if(isset($_POST['user'])){
    echo "El usuario introducido es " . $_POST['user'];
    echo " y su contraseña es " . $_POST['password'];
}