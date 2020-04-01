<?php
// соединение с базой
$pdo = new PDO('mysql:host=localhost; dbname=users; charset=utf8;', 'root');
$options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION];


//подготовка и выполнение запроса