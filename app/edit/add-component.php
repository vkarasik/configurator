<?php
require '../config/db.php';

$data = $_GET;

// решить с авторизацией???

// Create Query
$component = $_GET['cmpt'];
$columns = $component . "_id";
$values = "DEFAULT"; // autoincrement id column

foreach ($data as $key => $val) {
    if ($key === "cmpt") {
        continue; // exclude
    }
    $columns .= ", " . $key;
    $values .= ", " . "'" . $val . "'";
}

$query = "INSERT INTO orders ($columns) VALUES ($values)";

// Request
mysqli_query($conn, $query);

// Close
mysqli_close($conn);

echo ($query);

// echo json_encode($_GET);
