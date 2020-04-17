<?php
require '../config/db.php';

$username = $_POST['username'];
$password = $_POST['password'];

// Prevent mysql inject
$username = stripcslashes($username);
$password = stripcslashes($password);
/* $username = mysqli_real_escape_string($username);
$password = mysqli_real_escape_string($password); */

// Create Query
$query = "SELECT * FROM users WHERE username = '$username' and password = '$password'";

// Get Result
$result = mysqli_query($conn, $query);

$user = mysqli_fetch_all($result, MYSQLI_ASSOC);

if(isset($user)){
    pre_r($user);
}



function pre_r($arr)
{
    echo '<pre>';
    print_r($arr);
    echo '</pre>';
}
