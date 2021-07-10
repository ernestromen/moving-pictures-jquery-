<?php

//database configuration
$host = "mysql:host=localhost;dbname=boxes;charset=UTF8";
$user = 'root';
$password = '';
$db = new PDO($host,$user,$password);
$db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
$res = $db->query("SELECT id,name,position,image FROM boxnames ORDER BY position");

