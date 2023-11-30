<?php


require_once __DIR__ . "/GetConection.php";

$connection = getConnection();

$username = "bramasta";
$password = "rahasia";

$sql = "SELECT * FROM admin WHERE username = ? AND password = ?";
$statment = $connection->prepare($sql);
$statment->execute([$username, $password]);

$success = false;
$find_user = null;
foreach ($statment as $row) {
    //sukses
    $success = true;
    $find_user = $row["username"];
}

if ($success) {
    echo "Sukses login : " . $find_user . PHP_EOL;
} else {
    echo "Gagal login" . PHP_EOL;
}

$connection = null;
