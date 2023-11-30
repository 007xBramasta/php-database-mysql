 <?php

 require_once  __DIR__ . '/GetConection.php';
require_once __DIR__ . '/Model/Comment.php';
require_once __DIR__ . '/Repository/CommentRepository.php';

 use Repository\CommentRepositoryImpl;
 use Model\Comment;

$conncection = getConnection();
$repository = new CommentRepositoryImpl($conncection);

//$comment = new Comment(email: "repository@test.com", comment: "Hi");
//$newComment = $repository->insert($comment);
//
//var_dump($newComment->getId());

// $comment = $repository->findById(50);
// var_dump($comment);

 $comment = $repository->findAll();
 var_dump($comment);

$conncection = null;