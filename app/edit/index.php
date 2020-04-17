<?php
session_start();
if ($_SESSION['admin'] != "admin") {
    header("Location: login.php");
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Cache-control" content="no-cache">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="-1">
    <link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
    <link rel="manifest" href="favicon/site.webmanifest">
    <link rel="mask-icon" href="favicon/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="theme-color" content="#ffffff">
    <title>Редактор прайса</title>
    <meta name="description" content="" />
    <link rel="stylesheet" href="../css/main.min.css">
    <script src="../js/edit.js"></script>
</head>

<body>
    <div class="container">
        <h1>Редактор прайса</h1>
        <select name="components" id="components">
            <option value="">Выбрать категорию</option>
            <option value="base">Платформы</option>
            <option value="cpu">Процессоры</option>
            <option value="ram">Оперативная память</option>
            <option value="hdd">HDD диски</option>
            <option value="ssd">SSD диски</option>
            <option value="options">Опции</option>
        </select>
        <table class="components">
            <thead>
                <tr>
                    <td>Наименование</td>
                    <td>Цена</td>
                    <td>Срок&nbsp;поставки</td>
                    <td>Изменить</td>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>
</body>

</html>
