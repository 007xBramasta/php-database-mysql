<?php


require_once __DIR__ . "/GetConection.php";

$connection = getConnection();

$username = "domes";
$password = "rahasia";

$sql = "INSERT INTO admin(username, password) VALUES (:username, :password)";
$statment = $connection->prepare($sql);
$statment->bindParam("username", $username);
$statment->bindParam("password", $password);
$statment->execute();



$connection = null;
