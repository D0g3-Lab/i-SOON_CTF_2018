﻿<?php
ini_set('session.serialize_handler', 'php');
session_start();
class Anti
{
    public $info;
    function __construct()
    {
        $this->info = 'phpinfo();';
    }
    
    function __destruct()
    {
        eval($this->info);
    }
}
if(isset($_GET['aa']))
{
    if(unserialize($_GET['aa'])=='phpinfo')
    {
    	$m = new Anti();
    }
}
else
{
    header("location:index.html");
}

?>