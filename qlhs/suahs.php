<?php
	include_once'includes/xtemplate.class.php';
	$xtpl= new xtemplate('suahs.tpl');
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
					$sql = "SELECT * FROM hocsinh WHERE hocsinh.mahs ='".$id."'";
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
		$mahs= $_POST['mahs'];
		$tenhs = $_POST['tenhs'];
		$malop = $_POST['malop'];
		$gioitinh = $_POST['gioitinh'];
		$dantoc = $_POST['dantoc'];
		
		$noisinh = $_POST['noisinh'];
		$quequan = $_POST['quequan'];
		$conn=mysql_connect($dbhost,$dbuser,$dbpass);
		if (!empty($conn)) {
			# code...
			$db=mysql_select_db($dbname);
			if (!empty($db)) {
				
				$sql = "UPDATE `hocsinh` SET `mahs`='".$mahs."',`tenhs`='".$tenhs."',`malop`='".$malop."',`gioitinh`='".$gioitinh."',`dantoc`='".$dantoc."',`noisinh`='".$noisinh."',`quequan`='".$quequan."' WHERE mahs='".$id."'";
				echo "string".$sql;
				mysql_query($sql);
				header("Location: qlhs.php");
			}
		}
	}



	
?>
