<?php
require '../config/db.php';

$componet = $_GET['cmpt'];

// Get Columns
$query = "DESC $componet";

// Get Result
$result = mysqli_query($conn, $query);

// Data Array
$data = array();

// Loop through and add to $data array
while (($row = mysqli_fetch_assoc($result))) {
    array_push($data, $row);
}

// Return JSON from $data array
echo json_encode($data, JSON_NUMERIC_CHECK);
