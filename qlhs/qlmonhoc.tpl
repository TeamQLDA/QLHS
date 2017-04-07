<!-- BEGIN:main -->
<!DOCTYPE html>
<html>
<head>
	<title>quản lý học sinh</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="congculamdep/style.css">
	<link rel="stylesheet" type="text/css" href="congculamdep/css/bootstrap.min.css">
	<meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" href="congculamdep/dialog.css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script type="text/javascript" src="congculamdep/dialog.js"></script>
</head>
<body>
	<div class="formtren">
	<img class="img1" src="congculamdep/anh/qtu1.png">
	</div>
	<div class="nav">
		<a href="templates/giaodienquanly.html"> TRANG CHỦ</a>
		<a href="qldiem.php"> QUẢN LÝ ĐIỂM </a>
		<a href="qlhs.php"> QUẢN LÝ HỌC SINH </a>
		<a href="qllophp.php"> QUẢN LÝ LỚP HỌC </a>
		<a href="qlmonhoc.php"> QUẢN LÝ MÔN HỌC </a>
	</div>
	<div class="container">
		<div class="row">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
				<div class="nut">
					<a href="#login-box" class="login-window button btn btn-info" title="thêm học sinh">
									<i class="fa fa-edit"></i>
									<span class="glyphicon glyphicon-edit"></span>
					</a>
				</div>
				<div  id="thediv_scroll"> 
					<table class="table table-bordered">
						<thead >
							<tr>
								<th> stt </th>
								<th> mã mh </th>
								<th> tên môn học </th>	
								<th> số tiết </th>
								<th> chức năng </th>
								
							</tr>
						</thead>
							<!-- BEGIN:userlist -->
							<tbody>
								<tr>
									<td>{USER.stt}</td>
									<td>{USER.mamh}</td>	
									<td>{USER.tenmh}</td>
									<td>{USER.sotiec}</td>
									
									<td><a href="xoamonhoc.php?id={USER.mamh}" title="xóa " class="btn btn-danger">
											<i class="fa fa-edit"></i>
											<span class="glyphicon glyphicon-remove"></span>
										</a>
										<a href="suamonhoc.php?id={USER.mamh}" title="sửa thông tin" class="btn btn-primary">
											<i class="fa fa-edit"></i>
											<span class="glyphicon glyphicon-pencil"></span>
										</a>
									</td>
									
									
								</tr>
							</tbody>
							<!-- END:userlist -->
					</table>
					</div>  
				</div>
				<div class="col-md-2"></div>
			</div>
		</div> 
	<div id="login-box" class="login">
		<p class="login_title"> thêm môn học </p>
        <a href="#" class="close"><img src="congculamdep/close.png" class="img-close" title="Close Window" alt="Close" /></a>
        <form method="post" class="login-content" action="themmonhoc.php" enctype="multipart/form-data">
        	<table align="center">
        		<thead>
        			<div>
				        	<table align="center">
				        		<thead>
				        			<tr><td><input type="text" name="mamh" class="form-control" placeholder="nhập mã môn" "></br></td></tr>
				        			<tr><td><input type="text" name="tenmh" class="form-control"  placeholder="tên môn học" "></br></td></tr>
				        			<tr><td><input type="text" name="sotiec" class="form-control"  placeholder="số tiết" "></br></td></tr>
				        			
				        			<tr><td><input type="submit" name="submit" class="btn btn-info" value="thêm" ></td></tr>
								</thead>
							</table> 
				</div>
				</thead>
			</table> 
		</form>
	</div>   
</body>
</html>
<!-- END:main -->