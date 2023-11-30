<?php

require_once __DIR__ . '/GetConection.php';

$connection = getConnection();

$connection->exec("INSERT INTO comments(email, comment) VALUES ('bramasta@test.com', 'hi')");
$id = $connection->lastInsertId();

echo $id . PHP_EOL;


$connection = null;
