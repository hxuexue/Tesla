<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/6/27
 * Time: 16:16
 */
@$usermail = $_REQUEST['UserMail'] or die ('UserMail required');
@$userpw = $_REQUEST['UserPw'] or die('UserPw required');

header("Content-Type:text/html;charset=utf-8");
$con = mysql_connect("localhost","root","");

if(!$con){
    die("数据库连接失败");
}

mysql_query("SET NAMES utf8 ");
@mysql_select_db("db",$con);
//console.log('sus');

$sql = "select email,pw from user where(email='$usermail' and pw='$userpw')";
$result = mysql_query($sql);
$row = mysql_fetch_assoc($result);

if($row){
    $output['code'] = 1;
    $output['UserMail'] =$row['email'];
    $output['UserPw'] = $row['pw'];
}else {
    $output['code'] = 0;
}
echo json_encode($output);
