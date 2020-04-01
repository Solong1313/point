<?php
session_start();

ini_set('error_reporting', E_ALL);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);

if(empty($_POST['name']) && empty($_POST['text'])) {
    $_SESSION['error']['name'] = "Заполните поля";
    $_SESSION['error']['text'] = "Заполните поля";
            header("location: /");
}

elseif(empty($_POST['name'])){
    $_SESSION['error']['name'] = 'Заполните поля';
            header("location: /");
}

elseif (empty($_POST['text'])){
    $_SESSION['error']['text'] = 'Заполните поля';
            header("location: /");
}
else {
    require_once 'database.php';

    $name = $_POST['name'];
    $text = $_POST['text'];

    $timestamp = time();

//подготовка и выполнение запроса
    $sql ='INSERT INTO people (name, date, text) VALUES  (?,?,?)';
    $statement = $pdo->prepare($sql);
    $result = $statement->execute([$name, $timestamp, $text ]);

    $_SESSION['name'] ['text']= 'Ваш комментарий добавлен';

            header("location: /");
}














