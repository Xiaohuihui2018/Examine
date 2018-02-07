<?php
    require('connect.php');
    $data= $conn->query("select * from `index`");
    $res=$data->fetch_all(MYSQLI_ASSOC);
    echo json_encode($res,JSON_UNESCAPED_UNICODE);
    // 释放查询内存(销毁)
    $data->free();
    //关闭连接
    $conn->close();
?>