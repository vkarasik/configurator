<?php
require 'config/db.php';

// Current Component
$componet = $_GET['cmpt'];
$filter = $_GET['filter'];
$condition = $_GET['id'];
$id = $componet . "_id";

// Create Query
if(isset($condition)){
    $query = "SELECT * FROM $componet WHERE $id = $condition";
}elseif(isset($filter)){
    $query = "SELECT * FROM $componet WHERE type = $filter";
}
else{
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
