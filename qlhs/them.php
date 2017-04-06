<?php
	include_once'includes/xtemplate.class.php';
	
	$dbhost='localhost';
	$dbuser = 'root';
	$dbpass = '';
	$dbname ='quanlyhocsinh';
	$id=isset($_GET['id'])?$_GET['id'] :0;
	echo "string".$id;
	if (isset($_POST['submit'])){
		$mamh= $_POST['mamh'];
		echo "string".$mamh;
		$diem= $_POST['diem'];
		echo "string".$diem;
		$mahs= $_POST['mahs'];

		$conn=mysql_connect($dbhost,$dbuser,$dbpass);
		if (!empty($conn))
		{
			$db=mysql_select_db($dbname);
			if (!empty($db)) {
					mysql_set_charset('utf8');	
					$sql="INSERT INTO `diem`(`mahs`, `mamh`, `diem`) VALUES ('".$mahs."','".$mamh."','".$diem."')";
					echo "lệnh sql khách hàng: ".$sql;
					mysql_query($sql);
					header('location:qldiem.php');
				
		}
	}
}
?>