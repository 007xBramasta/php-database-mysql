<?php

require_once __DIR__ . '/GetConection.php';

$connection = getConnection();

$username = $connection->quote("admin");
$password = $connection->quote("admin");
$sql = "SELECT * FROM admin WHERE username = $username AND password = $password;";

$statment= $connection->query($sql);

$success = false;
$find_user = null;
foreach ($statment as $row){
    //sukses
    $success= true;
    $find_user = $row["username"];
}

if ($success) {
    echo "Sukses login : " . $find_user . PHP_EOL;
} else {
    echo "Gagal login" . PHP_EOL;
}

$connection = null;