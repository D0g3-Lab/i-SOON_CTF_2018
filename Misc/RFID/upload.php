<?php
echo "<meta charset='utf-8' >";
// 允许上传的后缀
$allowedExts = array("dump");
$temp = explode(".", $_FILES["file"]["name"]);
$extension = end($temp);     // 获取文件后缀名
if (($_FILES["file"]["size"] < 2048)&& in_array($extension, $allowedExts)&&$_FILES["file"]['type']=="application/octet-stream")// 小于 2kb
{
    if ($_FILES["file"]["error"] > 0)
    {
        echo "错误：: " . $_FILES["file"]["error"] . "<br>";
        exit();
    }
    else
    {
        $file = $_FILES["file"]["tmp_name"];
        $file_md5 = hash_file("md5", $file);
        if($file_md5=="965133d930a741226555f9add418b071")
        {
            echo "给你flag：6f4798563957774c272ab852aea0f18e";
            exit();
        }
        else
        {
            echo "文件不对，不能给你flag哦";
            exit();
        }
        
    }
}
else
{
    echo "非法的文件格式";
}
?>