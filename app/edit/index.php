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
    <link rel="apple-touch-icon" sizes="180x180" href="../favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="../favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="../favicon/favicon-16x16.png">
    <link rel="manifest" href="../favicon/site.webmanifest">
    <link rel="mask-icon" href="../favicon/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="theme-color" content="#ffffff">
    <title>Редактор прайса</title>
    <meta name="description" content="" />
    <link rel="stylesheet" href="../css/main.min.css">
    <script src="../js/edit.js"></script>
</head>

<body>
    <div class="container container_editor">
        <h1>Редактор прайса</h1>
        <div class="edit-panel">
            <select name="components" id="components">
                <option value="">Выбрать категорию</option>
                <option value="base">Платформы</option>
                <option value="cpu">Процессоры</option>
                <option value="ram">Оперативная память</option>
                <option value="hdd">HDD диски</option>
                <option value="ssd">SSD диски</option>
                <option value="options">Опции</option>
            </select>
            <button class="button button_add">Добавить</button>
        </div>
        <table class="components">
            <thead>
                <tr>
                    <td>Наименование</td>
                    <td>Цена</td>
                    <td>Срок&nbsp;поставки</td>
                    <td>Активность</td>
                    <td>Изменить</td>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>

    <div class="modal modal_form">
    <div class="modal__inner modal__inner_form">
        <div class="modal__close"></div>
        <h2 class="modal__head">Добавить компонент</h2>
        <p class="modal__text">Для добавления компонента заполните все поля</p>
        <form method="POST" class="add-cmpt" id="add-cmpt">
            <div class="add-cmpt__inner"></div>
            <div class="modal__message"></div>
            <button class="button button_insert" type="submit">Добавить</button>
        </form>
    </div>
</div>
</body>

</html>
