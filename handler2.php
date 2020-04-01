<?php
session_start();
require_once "conf.php";

if (($_POST['password'] != $_POST['password_confirmation'])){
    $_SESSION['error']['password_confirmation'] = "Пароли не совпадают";
    header("location: register.php");
}
elseif(empty($_POST['name']) && empty($_POST['email']) &&  empty($_POST['password'])){
    $_SESSION['error']['name'] = "Заполните поле";
    $_SESSION['error']['email'] = "Заполните поле";
    $_SESSION['error']['password'] = "Заполните поле";
    header("location: register.php");
}
elseif (empty($_POST['name'])){
    $_SESSION['error']['name'] = "Заполните поле";
    header("location: register.php");
}

elseif (empty($_POST['email'])){
    $_SESSION['error']['email'] = "Заполните поле";
    header("location: register.php");
}

elseif (empty($_POST['password'])){
    $_SESSION['error']['password'] = "Заполните поле";
    header("location: register.php");
}
else{
    require_once 'database.php';
    $name = $_POST['name'];
    $mail = $_POST['email'];
    $password = $_POST['password'];

    //подготовка и выполнение запроса
    $sql ='INSERT INTO register (Name, Mail_Address, Password ) VALUES  (?,?,?) ';
    $sql = 'SELECT * from register where e-Mail_Address = $_POST[email]';

    $statement = $pdo->prepare($sql);
    $result = $statement->execute([$name, $mail, $password]);

    $_SESSION['name'] ['email'] ['password']= 'Регистрация прошла успешно!';
    header("location: register.php");
}

