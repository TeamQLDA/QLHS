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
		<a href="qllophp.php"> QUẢN LÝ LỚP HỌC </a>
		<a href="qlmonhoc.php"> QUẢN LÝ MÔN HỌC </a>
		
	</div>
	<div class="container">
		<div class="row">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">    
				        <form method="post" class="login-content" action="suamonhoc.php?id={USER.mamh}" enctype="multipart/form-data">
				        	<table align="center">
				        		<thead>
				        			<tr><td><input type="text" name="mamh" class="form-control" value="{USER.mamh}" ></br></td></tr>
				        			<tr><td><input type="text" name="tenmh" class="form-control" value="{USER.tenmh}"  ></br></td></tr>
				        			<tr><td><input type="text" name="sotiec" class="form-control"  value="{USER.sotiec}" ></br></td></tr>
				        			
				        		
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