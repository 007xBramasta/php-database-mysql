<?php

require_once __DIR__ . '/GetConection.php';

$connection = getConnection();

$connection->beginTransaction();

$connection->exec("INSERT INTO comments(email, comment) VALUES ('bramasta@test.com', 'hi')");
$connection->exec("INSERT INTO comments(email, comment) VALUES ('bramasta@test.com', 'hi')");
$connection->exec("INSERT INTO comments(email, comment) VALUES ('bramasta@test.com', 'hi')");
$connection->exec("INSERT INTO comments(email, comment) VALUES ('bramasta@test.com', 'hi')");
$connection->exec("INSERT INTO comments(email, comment) VALUES ('bramasta@test.com', 'hi')");


$connection->commit();

$conncetion = null;
