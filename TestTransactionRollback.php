<?php


require_once __DIR__ . '/GetConection.php';

$connection = getConnection();

$connection->beginTransaction();

$connection->exec("INSERT INTO comments(email, comment) VALUES ('tio@test.com', 'hi')");
$connection->exec("INSERT INTO comments(email, comment) VALUES ('tio@test.com', 'hi')");
$connection->exec("INSERT INTO comments(email, comment) VALUES ('tio@test.com', 'hi')");
$connection->exec("INSERT INTO comments(email, comment) VALUES ('tio@test.com', 'hi')");
$connection->exec("INSERT INTO comments(email, comment) VALUES ('tio@test.com', 'hi')");


$connection->rollBack();

$conncetion = null;
