<?php
include("connection.php");

if(!isset($_GET["code"]))
{
   exit("Can't find page");
}
$code = $_GET["code"];
$getEmailQuery = mysqli_query($con, "SELECT email FROM resetpass WHERE code='$code' ");
if(mysqli_num_rows($getEmailQuery) == 0) {
     exit("Can't find page");
} 

if(isset($_POST["password"]))
{
   $pw = $_POST["password"];
   
   $row = mysqli_fetch_array($getEmailQuery);
   $email = $row["email"];

  $query = mysqli_query($con, "UPDATE customer_info SET cust_pwd= '$pw' WHERE cust_email='$email' ");
  if($query) {
   $query = mysqli_query($con, "DELETE FROM resetpass WHERE code='$code' ");
   exit("Password updated");
} 
  else{
            exit("Something went wrong");
}
}
?>
<form method="POST">
  <input type="password" name="password" placeholder="New password">
  <br>
  <input type="submit" name="submit" value="update password">
</form>