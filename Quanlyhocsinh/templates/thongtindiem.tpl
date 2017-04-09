<!-- BEGIN:main -->
<!DOCTYPE html>
<html>
<head>
	<title>Xem điểm</title>
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/team.css">
	<link rel="stylesheet" type="text/css" href="../css/bodycss.css">
	<meta charset="utf-8">
</head>
<body class="form_body">
<div class="container">
<div  class="row">
	<div class="col-sm-0.5"></div>
	<div class="col-sm-12 form-quanly">
		<div class="text-center"><h1>Thông tin điểm</h1></div>
		<div>
			<a href="../templates/giaodien.html">Về giao diện</a>
		</div>
		<table class="table table-bordered ">
						<thead>
							<tr>
								<th class="text-center">#</th>
								<th>Mã học sinh</th>
								<th>Mã môn học</th>
								<th>Điểm</th>
							</tr>
						</thead>

					<!-- BEGIN: list_diem -->
						<tbody>
							<tr>
								<td class="text-center">{diem.stt}</td>
								<td>{diem.mahs}</td>
								<td>{diem.mamh}</td>
								<td>{diem.diem}</td>
						</tbody>
					<!-- END: list_diem -->
					
					</table>
		</div>
	<div class="col-sm-0.5"></div>
</div>
</div>

</body>
</html>
<!-- END:main -->