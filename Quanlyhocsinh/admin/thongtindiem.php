<?php
include_once('../includes/xtemplate.class.php');
$xtpl = new xtemplate('../templates/thongtindiem.tpl');

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
		$result = mysql_query("SELECT * FROM diem");
		$stt = 1;
		while ($row = mysql_fetch_array($result)) {
			$row['stt'] = $stt;

			$xtpl->assign('diem',$row);
			$xtpl->parse('main.list_diem');

			$stt++;
		}
	}
}

$xtpl->parse('main');
$xtpl->out('main');
?>