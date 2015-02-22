<?php

include_once("autoloader.php");

$cq = New ContentQueries("127.0.0.1","SekaiNet","root","mysql");

  echo(json_encode($cq->get_images()));
