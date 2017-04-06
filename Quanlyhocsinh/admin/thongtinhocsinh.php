<?php
include_once('../includes/xtemplate.class.php');
$xtpl = new xtemplate('../templates/thongtinhocsinh.tpl');

$dbhost = "localhost";
$dbname = "quanlyhocsinh";
$dbuser = "root";
$dbpass = "";
$con = mysql_connect($dbhost,$dbuser,$dbpass);
if($con!=null)
{
	$db = mysql_select_db($dbname);
	if($db!=null)
	{
		mysql_set_charset('utf8');
		$result = mysql_query("SELECT * FROM hocsinh");
		$stt = 1;
		while ($row = mysql_fetch_array($result)) {
			$row['stt'] = $stt;

			$xtpl->assign('hocsinh',$row);
			$xtpl->parse('main.list_hocsinh');

			$stt++;
		}
	}
}

$xtpl->parse('main');
$xtpl->out('main');
?>