<?php
require 'config/db.php';

// Create Query

$query = "INSERT INTO orders VALUES (DEFAULT, '$data->config', $data->quantity, $data->price, $data->term, '$data->company',  '$data->email', '$data->comment')";

// Add
mysqli_query($conn, $query);
