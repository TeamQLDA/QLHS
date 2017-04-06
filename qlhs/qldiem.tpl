<!-- BEGIN:main -->
<!DOCTYPE html>
<html>
<head>
	<title>quản lý điểm</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="congculamdep/css/bootstrap.min.css">
</head>
<body>
	<div class="formtren"></div>
	<div class="nav">
		<a href="index.php"> TRANG CHỦ</a>
	</div>
	<div class="container">
		<div class="row">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
				<table class="table table-bordered">
						<thead >
							<tr>
								<th> stt </th>
								<th> mã học sinh </th>	
								<th> tên học sinh </th>
								<th> mã lớp </th>
								<th> chức năng </th>

							</tr>
						</thead>
							<!-- BEGIN:userlist -->
							<tbody>
								<tr>
									<td>{USER.stt}</td>	
									<td>{USER.mahs}</td>
									<td>{USER.tenhs}</td>
									<td>{USER.malop}</td>
									<td><a href="thongtindiem.php?id={USER.mahs}"  title="xem thông tin điểm" class="btn btn-warning">
											<i class="fa fa-edit"></i>
											<span class="glyphicon glyphicon-edit"></span>
										</a>
									</td>
									
								</tr>
							</tbody>
							<!-- END:userlist -->
					</table>
					
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>   
</body>
</html>
<!-- END:main -->