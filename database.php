<?php

$host = "localhost";
$db_name = "solong";
$db_user = "root";
$db_pass = "";
$charset = "utf8";

$opt = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES => false,
];

$dsn = "mysql:host=$host; dbname=$db_name; charset = $charset";

try {
    $pdo = new PDO($dsn, $db_user, $db_pass, $opt);
    $pdo->exec("SET NAMES 'utf8'");
    $pdo->exec("SET character_set_client = utf8");
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage() . "<br>";
    echo "On line: " . $e->getLine();
}