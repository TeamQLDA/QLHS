<!-- BEGIN:main -->
<!DOCTYPE html>
<html>
<head>
	<title>quản lý học sinh</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="congculamdep/css/bootstrap.min.css">
</head>
<body>
	<div class="formtren"></div>
	<div class="nav">
		<a href="qlhs.php"> TRANG CHỦ</a>
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