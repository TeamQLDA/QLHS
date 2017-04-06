<!-- BEGIN:main -->
<!DOCTYPE html>
<html>
<head>
	<title>quản lý học sinh</title>
	<link rel="stylesheet" type="text/css" href="congculamdep/style.css">
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
					<div  id="thediv_scroll">   
				        <form method="post" class="login-content" action="suadiem.php?id={USER.id}" enctype="multipart/form-data">
				        	<table align="center">
				        		<thead>
				        			<tr><td><input type="text" name="mahs" class="form-control" value="{USER.mahs}" ></br></td></tr>
				        			<tr><td><input type="text" name="mamh" class="form-control" value="{USER.mamh}"  ></br></td></tr>
				        			<tr><td><input type="text" name="diem" class="form-control"  value="{USER.diem}" ></br></td></tr>
				        			<tr><td><input type="submit" name="submit" class="btn btn-info" value="sửa" ></td></tr>
								</thead>
							</table> 
						</form>
					</div>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>   
</body>
</html>
<!-- END:main -->