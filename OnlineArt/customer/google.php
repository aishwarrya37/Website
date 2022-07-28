<?php include("header/header2.php"); ?>
<?php
if($_SESSION["uid"] == ""  ||  $_SESSION["uid"]==NULL)
{
header('Location:../customer/');
}
else{
	$cid = $_SESSION["uid"];
	$cn=$_SESSION["name"];
}
?>
                <?php
	$g_id= $_GET['id'];
                 $sql="SELECT* FROM exhibition_events WHERE ex_id=$g_id";
                 $runn=mysqli_query($con,$sql);?>			
				<?php
				while($row=mysqli_fetch_array($runn))
					{
					?>
                                                                    <tr>
                                                                    <td>
  				         <?PHP echo $row['g_url'];?>
                                                                   </td>
                                                                   </tr>

                                                                 <?php
					}
					?>
<?php include("../footer/footer.php"); ?>