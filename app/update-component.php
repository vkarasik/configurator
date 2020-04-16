<?php
require 'config/db.php';

// Current Component
$componet = $_GET['cmpt'];
$id = $_GET['id'];
$price = $_GET['price'];
$term = $_GET['term'];

$column = $componet . "_id";
$query = "UPDATE $componet SET price = $price, term = $term WHERE $column = $id";

// Get Result

if (mysqli_query($conn, $query)) {

    echo json_encode(
        array(
            'status' => 'success',
            'message' => 'Сохранено успешно'
        )
    );
} else {

    echo json_encode(
        array(
            'status' => 'error',
            'message' => "Ошибка: " . mysqli_error($conn)
        )
    );
}

mysqli_close($conn);
