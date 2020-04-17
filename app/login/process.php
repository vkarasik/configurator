<?php
echo ($_SERVER['REQUEST_URI']);
var_dump($_SERVER);
// $username = $_POST['username'];
// $password = $_POST['password'];

// // Prevent mysql inject
// $username = stripcslashes($username);
// $password = stripcslashes($password);

// if ($username === 'admin' && $password === '123') {
//     $_SESSION['admin'] = $username;
//     header("Location: ../edit-price.php");
//     exit;
// }
