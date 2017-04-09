<!-- BEGIN:main -->
<!DOCTYPE html>
<html>
<head>
	<title>Xem lớp</title>
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
		<div class="text-center"><h1>Thông tin lớp</h1></div>
		<div>
			<a href="../templates/giaodien.html">Về giao diện</a>
		</div>
		<table class="table table-bordered ">
						<thead>
							<tr>
								<th class="text-center">#</th>
								<th>Mã lớp</th>
								<th>Số lượng học sinh</th>
								<th>Giáo viên chủ nhiệm</th>
								<th>Lớp trưởng</th>
							</tr>
						</thead>

					<!-- BEGIN: list_lop -->
						<tbody>
							<tr>
								<td class="text-center">{lop.stt}</td>
								<td>{lop.malop}</td>
								<td>{lop.soluong}</td>
								<td>{lop.gvcn}</td>
								<td>{lop.loptruong}</td>
						</tbody>
					<!-- END: list_lop -->
					
					</table>
		</div>
	<div class="col-sm-0.5"></div>
</div>
</div>

</body>
</html>
<!-- END:main -->