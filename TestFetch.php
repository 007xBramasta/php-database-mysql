<?php


require_once __DIR__ . "/GetConection.php";

$connection = getConnection();

$username = "bramasta";
$password = "rahasia";

$sql = "SELECT * FROM admin WHERE username = :username AND password = :password";
$statment = $connection->prepare($sql);
$statment->bindParam("username", $username);
$statment->bindParam("password", $password);
$statment->execute();

if ($row = $statment->fetch()) {
    echo "Sukses login : " . $row["username"] . PHP_EOL;
} else {
    echo "Gagal Login" . PHP_EOL;
}

$connection = null;
