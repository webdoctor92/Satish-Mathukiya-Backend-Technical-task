<?php 
error_reporting(0);
$con = mysqli_connect("localhost","root","root","job_search");

// Check connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  exit();
}
?>
