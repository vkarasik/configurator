<?php
require 'config/db.php';

// Current Component
$componet = $_GET['cmpt'];
$filter = $_GET['filter'];
$id = $_GET['id'];

// Create Query
if (isset($id)) {
    $id = $componet . "_id";
    $query = "SELECT * FROM $componet WHERE $id = $id";
} elseif (isset($filter)) {
    $filter = explode('/', $filter); // turn into arr
    $filter = ('"' . implode('", "', array_map(strval, $filter)) . '"'); // turn into string with comma
    $query = "SELECT * FROM $componet WHERE type IN ($filter)";
} else {
    $query = "SELECT * FROM $componet";
}


// Get Result
$result = mysqli_query($conn, $query);

// Fetch Data
$components = mysqli_fetch_all($result, MYSQLI_ASSOC);

// Data Array
$data = [];

// Loop through $components and add to $data array
foreach ($components as $key => $value) {
    $data[] = $value;
}

// Return JSON from $data array
echo json_encode($data, JSON_NUMERIC_CHECK);
