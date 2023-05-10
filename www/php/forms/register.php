<h2 class="subtitle">
    Register
</h2>

<!-- TODO: VALIDATION FORM -->

<form action="/register_user" method="post" class="form">
    <label for="email">Email</label>
    <input type="email" name="email" id="input-email" required autofocus>
    <label for="password">Password</label>
    <input type="password" name="password" id="input-password" required>
    <label for="user">Name</label>
    <input type="text" name="name" id="input-name" required>
    <label for="user">Surname</label>
    <input type="text" name="surname" id="input-surname" required>
    <input type="submit" value="Register">
</form>