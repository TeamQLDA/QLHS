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
		<a href="#"> TRANG CHỦ</a>
		<a href="qldiem.php"> QUẢN LÝ ĐIỂM </a>
		<a href="qlhs.php"> QUẢN LÝ HỌC SINH </a>
		
	</div>
	<div class="container">
		<div class="row">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">    
				        <form method="post" class="login-content" action="suahs.php?id={USER.mahs}" enctype="multipart/form-data">
				        	<table align="center">
				        		<thead>
				        			<tr><td><input type="text" name="mahs" class="form-control" value="{USER.mahs}" ></br></td></tr>
				        			<tr><td><input type="text" name="tenhs" class="form-control" value="{USER.tenhs}"  ></br></td></tr>
				        			<tr><td><input type="text" name="gioitinh" class="form-control"  value="{USER.gioitinh}" ></br></td></tr>
				        			<tr><td><input type="text" name="dantoc" class="form-control" value="{USER.dantoc}" ></br></td></tr>
				        			<tr><td><input type="text" name="quequan" class="form-control" value="{USER.quequan}" ></br></td></tr>
				        			<tr><td><input type="text" name="noisinh" class="form-control" value="{USER.noisinh}" ></br></td></tr>
				        			<tr><td><input type="text" name="malop" class="form-control" value="{USER.malop}" ></br></td></tr>
				        			<tr><td><input type="submit" name="submit" class="btn btn-info" value="sửa" ></td></tr>
								</thead>
							</table> 
						</form>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>   
</body>
</html>
<!-- END:main -->