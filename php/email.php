<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/7/7
 * Time: 15:17
 */
@$usermail = $_REQUEST['UserMail'] or die ('UserMail required');


header("Content-Type:text/html;charset=utf-8");
$con = mysql_connect("localhost","root","");

if(!$con){
    die("数据库连接失败");
}

mysql_query("SET NAMES utf8 ");
mysql_select_db("db",$con);
//console.log('sus');
$exsit = mysql_query("select * from ema where(email='$usermail')");
$row = mysql_fetch_row($exsit);
if($row)
{
    $output['code'] = 2;
    echo json_encode($output);
}
else{
    $res = mysql_query("select * from ema",$con);
    $row_num = mysql_num_rows($res);
//echo $sql_num;
    $row_num = $row_num+1;
    $sql = "insert into ema (id,email) values ('$row_num','$usermail') ";
    $result = mysql_query($sql);
//$row = mysql_fetch_assoc($result);

    if($result){
        $output['code'] = 1;
    }else {
        $output['code'] = 0;
    }
    echo json_encode($output);
}
