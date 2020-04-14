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
    <link rel="stylesheet" href="css/main.min.css">
    <script src="js/edit.js"></script>
</head>

<body>
    <div class="container">
        <h1>Редактор прайса</h1>
        <select name="components" id="components">
            <option>Компоненты</option>
            <option value="base">Платформы</option>
            <option value="cpu">Процессоры</option>
            <option value="ram">Оперативная память</option>
            <option value="hdd">HDD диски</option>
            <option value="ssd">SSD диски</option>
            <option value="option">Опции</option>
        </select>
        <button class="button button_get">Редактировать</button>
        <table class="components">
            <thead>
                <tr>
                    <td>Наименование</td>
                    <td>Цена</td>
                    <td>Срок&nbsp;поставки</td>
                    <td>Изменить</td>
                </tr>
            </thead>
            <tbody>
                <!-- <tr class="components__category">
                    <td colspan="4">Стоечные двухпроцессорные платформы 19”</td>
                </tr>
                <tr class="components__item" data-component-name="ASUS RS100-E9-PI2">
                    <td class="components__item-desc">RS100-E9-PI2 (1U, 1xLGA1151, 4xDDR4 ECC, 2x3,5"/4x2,5" SATA, 2xM,2, Intel SW Raid 0/1/5/10,
                        DVD-RW, VGA, 2xGbE, 250W Bronze, 380mm dpt)</td>
                    <td class="components__item-price">1&nbsp;500&nbsp;$</td>
                    <td class="components__item-term">21&nbsp;дн.</td>
                    <td class="components__item-select" title="Выбор компонента"><img src="img/icon_add-blue.svg"
                            alt="Выбор компонента" title="Выбор компонента"></td>
                </tr> -->
            </tbody>
        </table>
    <?php

require 'config/db.php';

$query = "SELECT * FROM cpu";



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
?>
    </div>

</body>

</html>
