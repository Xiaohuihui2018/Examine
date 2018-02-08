<?php
    require('connect.php');
    $gN=isset ($_GET['gN'])? $_GET['gN'] :null;
    $model=isset ($_GET['model'])? $_GET['model'] :null;
    $data= $conn->query("select * from goods where gN='$gN' and model='$model'");
    $res=$data->fetch_all(MYSQLI_ASSOC);
    echo json_encode($res,JSON_UNESCAPED_UNICODE);
    // 释放查询内存(销毁)
    $data->free();
    //关闭连接
    $conn->close();
?>