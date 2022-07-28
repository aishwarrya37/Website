<?php
include("../connection.php");
  session_start(); // Start the session

  $cid = $_SESSION[ "uid" ];

  ?>

<!doctype html>

<html lang="en">

  <head>

   <title>Customer - <?php echo $_SESSION["name"]; ?> - Artistic Lane</title>

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">

<link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon">
<link rel="icon" href="../img/favicon.ico" type="image/x-icon">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="../boots/css/bootstrap.css">

    <!-- jQuery library -->



    <!-- Latest compiled JavaScript -->

    <script src="../boots/js/bootstrap.js"></script>

    <link rel="stylesheet" href="../css/style.css">

	

	<link rel="stylesheet" href="../assets/css/main.css" />



<!-- Latest compiled JavaScript -->

<script src="../boots/js/jquery.js"></script>

<!-- Scripts -->

			<script src="../assets/js/jquery.min.js"></script>

			<script src="../assets/js/jquery.scrollex.min.js"></script>

			<script src="../assets/js/skel.min.js"></script>

			<script src="../assets/js/util.js"></script>

			<script src="../assets/js/main.js"></script>



 </head>