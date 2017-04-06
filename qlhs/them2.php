<?php
	include_once'includes/xtemplate.class.php';
	
	$dbhost='localhost';
	$dbuser = 'root';
	$dbpass = '';
	$dbname ='quanlyhocsinh';
	$id=isset($_GET['id'])?$_GET['id'] :0;
	echo "string".$id;
	if (isset($_POST['submit'])){
		$mahs= $_POST['mahs'];
		$tenhs= $_POST['tenhs'];
		$malop= $_POST['malop'];
		$gioitinh= $_POST['gioitinh'];
		$dantoc= $_POST['dantoc'];
		$namsinh= $_POST['namsinh'];
		$noisinh= $_POST['noisinh'];
		$quequan= $_POST['quequan'];

		$conn=mysql_connect($dbhost,$dbuser,$dbpass);
		if (!empty($conn))
		{
			$db=mysql_select_db($dbname);
			if (!empty($db)) {
					mysql_set_charset('utf8');	
					$sql="INSERT INTO `hocsinh`(`mahs`, `tenhs`, `malop`, `gioitinh`, `dantoc`, `namsinh`, `noisinh`, `quequan`) VALUES ('".$mahs."','".$tenhs."','".$malop."','".$gioitinh."','".$dantoc."','".$namsinh."','".$noisinh."','".$quequan."')";
					#echo "lệnh : ".$sql;
					mysql_query($sql);
					header('location:qlhs.php');
				
		}
	}
}
?>