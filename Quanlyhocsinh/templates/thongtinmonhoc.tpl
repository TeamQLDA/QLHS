<!-- BEGIN:main -->
<!DOCTYPE html>
<html>
<head>
	<title>Quản lý đội chơi</title>
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
		<div class="text-center"><h1>Thông tin môn học</h1></div>
		<div>
			<a href="../templates/giaodien.html">Về giao diện</a>
		</div>
		<table class="table table-bordered ">
						<thead>
							<tr>
								<th class="text-center">#</th>
								<th>Mã môn học</th>
								<th>Tên môn học</th>
								<th>Số tiếc</th>
							</tr>
						</thead>

					<!-- BEGIN: list_monhoc -->
						<tbody>
							<tr>
								<td class="text-center">{monhoc.stt}</td>
								<td>{monhoc.mamh}</td>
								<td>{monhoc.tenmh}</td>
								<td>{monhoc.sotiec}</td>
						</tbody>
					<!-- END: list_monhoc -->
					
					</table>
		</div>
	<div class="col-sm-0.5"></div>
</div>
</div>

</body>
</html>
<!-- END:main -->