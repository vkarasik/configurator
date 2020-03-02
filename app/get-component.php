<?php
require 'config/db.php';

// Current Component
$componet = $_GET['cmpt'];
$condition = $_GET['cond'];

// Create Query
if(isset($condition)){
    $query = "SELECT * FROM $componet WHERE cpu_id = $condition";
}else{
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
echo json_encode($data);
