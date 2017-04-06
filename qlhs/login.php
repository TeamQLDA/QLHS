<?php
	include_once'includes/xtemplate.class.php';
	$xtpl= new xtemplate('login.tpl');
	$dbhost='localhost';
	$dbuser = 'root';
	$dbpass = '';
	$dbname ='quanlyhocsinh';
	 	if (isset($_POST['submit'])) {
			$username=$_POST['username'];
			$password=$_POST['password'];
		
			$conn= mysql_connect($dbhost,$dbuser,$dbpass);
			if (!empty($conn)) {
				$db=mysql_select_db($dbname);
				if (!empty($db)) {
					$sql= "SELECT * FROM dangnhap WHERE (username= '".$username."') AND (password = '".$password."')";
					echo "string".$sql;
					$resut = mysql_query($sql);
					if (mysql_num_rows($resut)==1) {
						
							header('Location:qldiem.php');	
						
					}
				}
			}
		}
	$xtpl->parse('main');
	$xtpl->out('main');
?>