<?php
$file = 'classes.txt';
$url = 'http://coursetable.com/Table';
$output = file_get_contents($url);
file_put_contents($file,$output); 
?>