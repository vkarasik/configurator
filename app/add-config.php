<?php
require 'config/db.php';

// Create Query
$query = "INSERT INTO orders VALUES (DEFAULT, '$data->config', $data->quantity, $data->price, $data->term, '$data->company',  '$data->email', '$data->comment')";

// Request
mysqli_query($conn, $query);

// Get last index
$num = (mysqli_insert_id($conn));

// Close
mysqli_close($conn);
