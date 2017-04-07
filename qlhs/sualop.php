<?php
	include_once'includes/xtemplate.class.php';
	$xtpl= new xtemplate('sualop.tpl');
	$dbhost='localhost';
	$dbuser = 'root';
	$dbpass = '';
	$dbname ='quanlyhocsinh';
	$id=isset($_GET['id'])?$_GET['id'] :0; 
		if (!empty($id)) {
			# code...
			$conn = mysql_connect('localhost', 'root', '');
			if (!empty($conn)) {
				$db=mysql_select_db($dbname);
				if (!empty($db)) {
					mysql_set_charset('utf8');
					$sql = "SELECT * FROM lop WHERE lop.malop ='".$id."'";
					$result = mysql_query($sql);
					$row = mysql_fetch_array($result);
					$xtpl->assign('USER',$row);
				}

		    }
	     }
	$xtpl->parse('main');
	$xtpl->out('main');
	     #sua
	    if (isset($_POST['submit'])) {
		$malop= $_POST['malop'];
		$soluong = $_POST['soluong'];
		$gvcn = $_POST['gvcn'];
		$loptruong = $_POST['loptruong'];
		
		$conn=mysql_connect($dbhost,$dbuser,$dbpass);
		if (!empty($conn)) {
			# code...
			$db=mysql_select_db($dbname);
			if (!empty($db)) {
				
				$sql = "UPDATE `lop` SET `malop`='".$malop."',`soluong`='".$soluong."',`gvcn`='".$gvcn."',`loptruong`='".$loptruong."' WHERE  malop='".$id."' ";
				echo "string".$sql;
				mysql_query($sql);
				header("Location: qllophp.php");
			}
		}
	}



	
?>
