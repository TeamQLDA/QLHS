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
			$sql="DELETE FROM `hocsinh` WHERE hocsinh.malop='".$id."'";
			mysql_query($sql);
			$sql="DELETE FROM `lop` WHERE malop='".$id."'";
			echo "string".$sql;
			mysql_query($sql);
			header("location:qllophp.php");
		}
	}
	
?>