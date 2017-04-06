<?php
include_once('../includes/xtemplate.class.php');
$xtpl = new xtemplate('../templates/thongtinlop.tpl');

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
		$result = mysql_query("SELECT * FROM lop");
		$stt = 1;
		while ($row = mysql_fetch_array($result)) {
			$row['stt'] = $stt;

			$xtpl->assign('lop',$row);
			$xtpl->parse('main.list_lop');

			$stt++;
		}
	}
}

$xtpl->parse('main');
$xtpl->out('main');
?>