<?php
    require('connect.php');
    $submit=isset($_GET['submit']) ? $_GET['submit'] : 'no';
    $username =isset($_GET['UserName']) ? $_GET['UserName'] :null;
    $password =isset($_GET['PassWord']) ? $_GET['PassWord'] :null;
    $data= $conn->query("select * from user where 
        PhoneNum='$username'");
    if($submit=='no'){
        if($data->num_rows==0){
             echo 'yes';
        }else{
             echo 'no';
        }
    }else{
        $password=md5($password);
        $sql="insert into user(PhoneNum,PassWord) values('$username','$password')";
        $res= $conn->query($sql);
        if($res){
            echo 'success';
        }else{
            echo 'fail';
        }
    }
    // 释放查询内存(销毁)
    $data->free();

    //关闭连接
    $conn->close();
?>