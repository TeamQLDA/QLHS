<?php
	include_once'includes/xtemplate.class.php';
	$xtpl= new xtemplate('qldiem.tpl');
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
			mysql_set_charset('utf8');
			$sql="SELECT `mahs`, `tenhs`, `malop`  FROM `hocsinh` ";
			
			$result=mysql_query($sql);
			$stt=1;
				while ($row= mysql_fetch_array($result)) {
					# code...
					$row['stt']=$stt;
					$xtpl->assign('USER',$row);
					$xtpl->parse('main.userlist');
					$stt ++;	
				}
		}
	}
	$xtpl->parse('main');
	$xtpl->out('main');
?>