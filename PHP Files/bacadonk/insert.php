<?php
require_once 'config.php';

$title = $_POST["title"];
$content = $_POST["content"];
$author = $_POST["author"];

$data = Array ("title" => $title,
               "content" => $content,
               "author" => $author
);
$id = $db->insert ('articles', $data);
if(!empty($id)){
    header("Location:index.php");
}

