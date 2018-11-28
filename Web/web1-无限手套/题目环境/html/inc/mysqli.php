<?php
$servername='localhost';
$username='admin';
$password='Just_AXgam3';
$con=mysqli_connect($servername,$username,$password,'gloves');
if (mysqli_connect_errno($con))
  {
  die('Could not connect: ' . mysqli_connect_error());
  }

