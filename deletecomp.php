<?php 
// $compnum=$_POST["complaintnum"];
$user=$_POST['user'];

  //$id = $_GET['id'];

$servername='localhost';
$username='root';
$password='';
$dbname='project';

$conn=mysqli_connect($servername,$username,$password,$dbname);

if(isset($_REQUEST['Delete'])){

 $sql = "DELETE FROM 'completedcomp' WHERE `completedcomp`.`id`='$id' ";
if(mysqli_query($conn, $sql)){
     echo "Record Deleted";
}else{
     echo "Error Unable t Delete Record";
}

}

// $sql = "DELETE FROM 'completedcomp' WHERE id = {$_REQUEST['id']} ";
       
//       $delete = mysqli_query($conn,$sql);  
//       echo $delete;
//       if ($delete) {  
//            header('location:deletecomp.php');  

//       }
      

 ?>  