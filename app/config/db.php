<?php
// Data Base Info
$host = 'localhost';
$user = 'root';
$password = '';
$db = 'server_components';

// Create Connection
$conn = mysqli_connect($host, $user, $password, $db);

// Check Connection
if (mysqli_connect_errno()) {
    // Print error and die
    die('Failed to connect to MySQL ' . mysqli_connect_errno());
}
