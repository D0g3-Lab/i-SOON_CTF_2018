<?php

//including the Mysql connect parameters.
include("../sdqxld-anxunctf/db-creds.inc");

@error_reporting(0);
@$con = mysqli_connect($host,$dbuser,$dbpass,"anxun");

// Check connection
if (!$con)
{
    echo "Failed to connect to MySQL: " . mysql_error();
}

mysqli_set_charset ( $con, 'utf8' );

?>




 
