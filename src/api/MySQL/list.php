<?php
    require('connect.php');
    $pageNo=isset ($_GET['pageNo'])? $_GET['pageNo'] :1;
    $num=isset ($_GET['num'])? $_GET['num'] :12;
    $beg=($pageNo-1)*$num+1;
    $end=$pageNo*$num;
    $data= $conn->query("select * from goodslist where id between '$beg' and '$end'");
    $dataT= $conn->query("select * from goodslist");
    $res=$data->fetch_all(MYSQLI_ASSOC);
    $result=array(
        'res'=>$res,
        'total'=>$dataT->num_rows
    );
    echo json_encode($result,JSON_UNESCAPED_UNICODE);
    // 释放查询内存(销毁)
    $data->free();
    $dataT->free();
    //关闭连接
    $conn->close();
?>