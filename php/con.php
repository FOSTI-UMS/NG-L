<?php
// error_reporting(E_ALL); ini_set('display_errors', '1');

// variable initiation
$user = 'root';
$pass = 'root';
$host = 'localhost';
$db = 'sekolah';

// connecting process into dbms server
$con=mysqli_connect($host,$user,$pass);
// select database whichh will be use
mysqli_select_db($con, $db) or Die("Failed to reach Database");