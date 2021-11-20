<?php
ob_start();
session_start();


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "weconnect";

$con = mysqli_connect("$servername", "$username", "$password", "$dbname");
 
 if ($con)
 {
 	echo "";

 }
  else{
  	   echo "Connection Failed";
  }

?>