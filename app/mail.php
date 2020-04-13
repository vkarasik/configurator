<?php

$message = '';
$status = '';

if (!empty($_POST)) {

    $data = (object)$_POST;
    // $to = 'v.karasik@cd-life.by' . ', ' . $data->email;

    $email = preg_match('/.+@.+\..+/', $data->email);

    if(empty($data->company) || !$email){
        $message = 'Заполните корректно все поля.';
        $status = 'error';
    }else{
        $to = 'v.karasik@cd-life.by';
        // $subject = 'Сборка сервера №' . $data->num;
        $message = "Компания: " . $data->company . "<br>" . "Конфигурация: " . $data->config . "<br>" . "Цена: " . $data->price . " USD без НДС" . "<br>" . "Количество: " . $data->quantity . " шт" . "<br>" . "Срок поставки: " . $data->term . " дн" . "<br>" . "Комментарий: " . $data->comment;
    
        // На случай если какая-то строка письма длиннее 70 символов мы используем wordwrap()
        $message = wordwrap($message, 70, "\r\n");
    
        $headers = "Content-type: text/html; charset=utf-8 \r\n" . "From: Конфигуратор <from@example.com>\r\n";
    
        mail($to, $subject, $message, $headers);

        $message = 'Спасибо! Ваш запрос отправлен.';
        $status = 'succsess';
    }
    
    echo json_encode(
        array(
            'status' => $status,
            'message' => $message
        )
    );
}
else{
    echo json_encode(
        array(
            'status' => 'error',
            'message' => 'Произошла ошибка. Повторите отправку.'
        )
    );
}
