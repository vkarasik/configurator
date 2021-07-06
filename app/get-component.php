<?php
require 'config/db.php';

// Current Component
$componet = $_GET['cmpt'];
$filter = $_GET['filter'];
$id = $_GET['id'];
$active = true;

// Create Query
if (isset($id)) {
    $column = $componet . "_id";
    $query = "SELECT * FROM $componet WHERE $column = $id AND active = $active";
} elseif (isset($filter)) {
    $filter = explode('/', $filter); // turn into arr
    $filter = ('"' . implode('", "', array_map(strval, $filter)) . '"'); // turn into string with comma
    $query = "SELECT * FROM $componet WHERE type IN ($filter) AND active = $active";
} else {
    $query = "SELECT * FROM $componet WHERE active = $active";
}

// Get Result
$result = mysqli_query($conn, $query);

// Data Array
$data = array();

// Loop through and add to $data array
while (($row = mysqli_fetch_assoc($result))) {
    array_push($data, $row);
}

// Close
mysqli_close($conn);

// // Fetch Data
// $components = mysqli_fetch_all($result, MYSQLI_ASSOC);

// // Loop through $components and add to $data array
// foreach ($components as $key => $value) {
//     $data[] = $value;
// }

// Return JSON from $data array
echo json_encode($data, JSON_NUMERIC_CHECK);
