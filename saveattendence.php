<?php
error_reporting(E_ALL ^ E_DEPRECATED);
include("./connection.php");
$stid=$_POST['stid'];
$subj=$_POST['subjid'];
$atten=$_POST['present'];
$date = date('Y-m-d H:i:s');
$query=mysqli_query($dbcon,"Insert into tbl_attendance(StudentRollNumber,SubjectId,Attendance,Date) VALUES('$stid','$subj','$atten','$date');");
if(!$query)
{
	echo mysqli_error();
	}
	else {
		echo "Noted successfully!";
	}
header("Location:AttendenceForm.php");
?>