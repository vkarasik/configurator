<?php
require 'config/db.php';

// Current Component
$componet = $_GET['cmpt'];

// Create Query
$query = "SELECT * FROM $componet WHERE ";

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
