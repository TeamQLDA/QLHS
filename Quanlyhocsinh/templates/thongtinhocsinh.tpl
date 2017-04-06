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
		<div class="text-center"><h1>Thông tin học sinh</h1></div>
		<div>
			<a href="../templates/giaodien.html">Về giao diện</a>
		</div>
		<table class="table table-bordered ">
						<thead>
							<tr>
								<th class="text-center">#</th>
								<th>Mã học sinh</th>
								<th>Tên học sinh</th>
								<th>Mã lớp</th>
								<th>Giới tính</th>
								<th>Dân tộc</th>
								<th>Năm sinh</th>
								<th>Nơi sinh</th>
								<th>Quê quán</th>
							</tr>
						</thead>

					<!-- BEGIN: list_hocsinh -->
						<tbody>
							<tr>
								<td class="text-center">{hocsinh.stt}</td>
								<td>{hocsinh.mahs}</td>
								<td>{hocsinh.tenhs}</td>
								<td>{hocsinh.malop}</td>
								<td>{hocsinh.gioitinh}</td>
								<td>{hocsinh.dantoc}</td>
								<td>{hocsinh.namsinh}</td>
								<td>{hocsinh.noisinh}</td>
								<td>{hocsinh.quequan}</td>
							</tr>
						</tbody>
					<!-- END: list_hocsinh -->
					
					</table>
		</div>
	<div class="col-sm-0.5"></div>
</div>
</div>

</body>
</html>
<!-- END:main -->