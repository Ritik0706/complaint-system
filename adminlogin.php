<?php
$uname=$_POST['uname'];//username
$password=$_POST['password'];//password 
session_start();

$conn=mysqli_connect("localhost","root","","project");//mysqli("localhost","username of database","password of database","database name")
$result=mysqli_query($conn,"SELECT * FROM `admin` WHERE `uname`='$uname' && `password`='$password'");
$count=mysqli_num_rows($result);
if($count==1)
{
	echo "Login success";
	$_SESSION['login']=1;
	header("refresh:2;url=afteradminlogin.php");

}
else
{
	echo "please fill proper details";

	header("refresh:2;url=adminlogin.php");// it takes 2 sec to go index page
}








// $name=$_POST['name'];
// $pass=$_POST['passw'];

// if($name==$pass)
// {
// 	echo "<script>window.location.assign('afteradminlogin.php');</script>";
// }
// else
// {
// 	readfile('adminlogin2.html');
// }


?>

