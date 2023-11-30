<?php

require_once __DIR__ . '/GetConection.php';

 $connection = getConnection();

 $sql = "SELECT id,name,email FROM customers";
 $statment = $connection->query($sql);

 foreach ($statment as $row){
    $id = $row["id"];
    $name = $row["name"];
    $email = $row["email"];

    echo "id : $id" . PHP_EOL;
    echo "Name : $name" . PHP_EOL;
    echo "Email : $email" . PHP_EOL;
 }

 $connection = null;