<?php
	include_once'includes/xtemplate.class.php';
	
	$dbhost='localhost';
	$dbuser = 'root';
	$dbpass = '';
	$dbname ='quanlyhocsinh';
	$id=isset($_GET['id'])?$_GET['id'] :0;
	echo "string".$id;
	if (isset($_POST['submit'])){
		$malop= $_POST['malop'];
		
		$gvcn= $_POST['gvcn'];
		
		$loptruong= $_POST['loptruong'];
		$soluong = $_POST['soluong'];

		$conn=mysql_connect($dbhost,$dbuser,$dbpass);
		if (!empty($conn))
		{
			$db=mysql_select_db($dbname);
			if (!empty($db)) {
					mysql_set_charset('utf8');	
					$sql="INSERT INTO `lop`(`malop`, `soluong`, `gvcn`, `loptruong`) VALUES ('".$malop."','".$soluong."','".$gvcn."','".$loptruong."')";
					echo "lệnh sql khách hàng: ".$sql;
					mysql_query($sql);
					header('location:qllophp.php');
				
		}
	}
}
?>