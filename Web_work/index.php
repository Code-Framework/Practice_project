<?php
$insert=false;
$server  ="localhost";
$username = "root";
$password = "";
$con = mysqli_connect($server,$username,$password);
if (!$con) {
  die("connection to databse has been lost due to mysql connect error".mysqli_connect_error());

  // code...
}
  $name = $_POST['name'];
  $age = $_POST['age'];
  $gender = $_POST['gender'];
  $email = $_POST['email'];
  $phone = $_POST['phone'];
  $desc = $_POST['desc'];
$sql ="INSERT INTO `trip`.`trip`(`name`, `age`, `gender`, `email`, `phone`, `other`, `dt`) VALUES ('$name', '$age', '$gender', '$email', '$phone', '$desc', current_timestamp());";
echo "data has been inserted";

if($con->query($sql) == true){
$insert= true;

}else {

  echo "ERROR: $sql <br> $con->error";
}
$con->close();
?>
