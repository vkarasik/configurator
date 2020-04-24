<?php
session_start();
if (isset($_POST['username'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    if ($username == 'admin' && md5($password) == 'b5483b774218e7d9a182dc926a56693f') {
        $_SESSION['admin'] = $username;
        header("Location: index.php");
        exit;

    } else {
        $error = '<div class="modal__message modal__message_error" style="display:block">Неверный логин/пароль :(</div>';
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Cache-control" content="no-cache">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="-1">
    <link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
    <link rel="manifest" href="favicon/site.webmanifest">
    <link rel="mask-icon" href="favicon/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="theme-color" content="#ffffff">
    <title>Редактор прайса</title>
    <meta name="description" content="" />
    <link rel="stylesheet" href="../css/main.min.css">
</head>
<html>
    <body>
        <div class="container">
            <h1>Авторизация</h1>
            <form class="auth" method="POST">
                <input type="text" name="username" placeholder="Login">
                <input type="password" name="password" placeholder="Pass">
                <div><?php echo ($error); ?></div>
                <button class="button button_login" type="submit">Login</button>
            </form>
        </div>
    </body>
</html>
