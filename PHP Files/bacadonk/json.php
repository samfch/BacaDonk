<?php
require_once 'config.php';
header('Content-type: text/javascript');
$db->orderBy("id", "desc");
$json = $db->JsonBuilder()->get("articles", 10);
echo $json;