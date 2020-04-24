<?php

session_start();
if ($_SESSION['admin'] != "admin") {
    header("Location: login.php");
    exit;
}

require '../config/db.php';

$data = $_POST;

// Create Query
$component = $_POST['cmpt'];
$columns = $component . "_id"; // primary key
$values = "DEFAULT"; // for autoincrement in primary key id column

foreach ($data as $key => $val) {
    if ($key === "cmpt") {
        continue; // exclude feild
    }
    if ($val === '') {
        exit(json_encode(
            array(
                'status' => 'error',
                'message' => 'Заполните все поля!',
            )
        ));
    }
    $columns .= ", " . $key;
    $values .= ", " . "'" . $val . "'";
}

$query = "INSERT INTO $component ($columns) VALUES ($values)";

// Request

if (mysqli_query($conn, $query)) {

    echo json_encode(
        array(
            'status' => 'success',
            'message' => 'Сохранено успешно!',
        )
    );
} else {

    echo json_encode(
        array(
            'status' => 'error',
            'message' => "Ошибка: " . mysqli_error($conn),
        )
    );
}

// Close
mysqli_close($conn);
