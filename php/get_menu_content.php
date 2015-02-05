<?php

include_once("autoloader.php");

$cq = New ContentQueries("127.0.0.1","SekaiNet","root","mysql");

//get menu links for a specific menu_name if told to do so 
//(by receiving correct AJAX data), else get all menu_names
//get all menu_links for a specific menu_name
echo(json_encode($cq->getAllLinks()));