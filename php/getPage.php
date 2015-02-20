<?php

include_once("autoloader.php");

$cq = New ContentQueries("127.0.0.1","SekaiNet","root","mysql");

if (isset($_REQUEST["get_page"])) {
  //save page and echo ContentQueries response
  echo(json_encode($cq->getPages($_REQUEST["get_page"])));
}