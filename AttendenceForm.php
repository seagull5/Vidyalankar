<?php  $pagetitle="AttendenceForm";
?>
 <!DOCTYPE html>
<html>
<head>
	 <link rel="stylesheet" href="s.css">
</head>
<body>

<div class="topnav">
  <a class="active" href="#home">Home</a>
  <a href="#myinfo">My Info</a>
  <a href="#action">Action</a>
  <a href="#about">About</a>
</div>
<div1 class="topnav1">
  <a href="#feed">Feed</a1>
  <a href="#salary">Salary</a1>
  <a href="#leave">Leave</a1>
  <a href="#attendance">Attendance</a1>
  <a href="#directory">Directory</a1>
</div1>
<?php  
error_reporting(E_ALL ^ E_DEPRECATED);
include("./connection.php");?>
<div class="form-container">
    <form method="post" action="saveattendence.php" role="form">
     <!-- <div class="container"> -->
    <div class="col-lg-3">
      <div class="form-group">
<?php
      $qs=mysqli_query($dbcon,"select * from student_table;");
      ?>
      <?php	
      echo "<select class='form-control' name='stid' >";			
      while($stid=mysqli_fetch_row($qs))
      {				
       echo"
        <option value=$stid[0]>$stid[1] </option>";
       }
      echo "</select>"."<br>";
      ?>
      </div>
    </div> <!--col-lg-4-->
       <div class="col-lg-3">
      <?php
      $qs1=mysqli_query($dbcon,"select * from subject_table;");	
      echo "<select class='form-control' name='subjid'>";			
      while($subjid=mysqli_fetch_row($qs1))
      {				
       echo"
       <option value=$subjid[0]>$subjid[1] </option>";
       }
      echo "</select>";?>
      </div> <!--col-lg-4-->
      <input type="radio" name="present" value="P" />Present
      <input type="radio" name="present" value="A" />Absent
      <button type="submit" name="save" value="Save" class="btn btn-success btn-sm">Save</button> 
 </form>
 </div> <!--form-container-->
</div>
</body>
</html><!--container-->