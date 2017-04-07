<?php
	include_once'includes/xtemplate.class.php';
	$dbhost='localhost';
	$dbuser = 'root';
	$dbpass = '';
	$dbname ='quanlyhocsinh';
	$id=isset($_GET['id'])?$_GET['id'] :0;

	$conn=mysql_connect($dbhost,$dbuser,$dbpass);
	if (!empty($conn))
	{
		$db=mysql_select_db($dbname);
		if (!empty($db)) {
			# code...	
			$sql="DELETE FROM `diem` WHERE diem.mamh='".$id."'";
			mysql_query($sql);
			$sql="DELETE FROM `monhoc` WHERE monhoc.mamh='".$id."'";
			echo "string".$sql;
			mysql_query($sql);
			header("location:qlmonhoc.php");
		}
	}
	
?>