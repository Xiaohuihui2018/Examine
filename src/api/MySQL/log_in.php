<?php
    require('connect.php');
    $submit=isset($_GET['submit']) ? $_GET['submit'] : 'no';
    $username =isset($_GET['UserName']) ? $_GET['UserName'] :null;
    $password =isset($_GET['PassWord']) ? $_GET['PassWord'] :null;
    $data= $conn->query("select * from user where 
        PhoneNum='$username'");
    if($submit=='no'){
        if($data->num_rows==0){
             echo 'no';
        }else{
             echo 'yes';
        }
        $data->free();
    }else{
        $password=md5($password);
        $sql="select * from user where PhoneNum='$username' and PassWord='$password'";
        $res= $conn->query($sql);
        if($res->num_rows>0){
            echo 'success';
        }else{
            echo 'fail';
        }
        $res->free();
    }
    //关闭连接
    $conn->close();
?>