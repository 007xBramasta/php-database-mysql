<?php

require_once __DIR__ . '/GetConection.php';

$connection = getConnection();

$sql = <<<SQL
    INSERT INTO customers(id, name, email)
    VALUES ('tio', 'Albatio', 'Albatio@test.com');
SQL;

$connection->exec($sql);

$connection = null;