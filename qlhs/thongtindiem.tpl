<!-- BEGIN:main -->
<!DOCTYPE html>
<html>
<head>
	<title>quản lý điểm</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="congculamdep/style.css">
	<link rel="stylesheet" type="text/css" href="congculamdep/css/bootstrap.min.css">
		<meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" href="congculamdep/dialog.css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script type="text/javascript" src="congculamdep/dialog.js"></script>
</head>
<body>
	<div class="formtren"></div>
	
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
				<div id="thediv_scroll">   
							<table class="table table-bordered">
						<thead >
							<tr>
								<th> stt </th>
								<th> id</th>
								<th> mã học sinh </th>
								<th> mã môn học </th>	
								<th> điểm </th>
								<th> chức năng </th>

							</tr>
						</thead>
							<!-- BEGIN:userlist -->
							<tbody>
								<tr>
									<td>{USER.stt}</td>
									<td>{USER.id}</td>	
									<td>{USER.mahs}</td>
									<td>{USER.mamh}</td>
									<td>{USER.diem}</td>
									
									<td><a href="xoa.php?id={USER.id}"  title="xóa điểm" class="btn btn-danger">
											<i class="fa fa-edit"></i>
											<span class="glyphicon glyphicon-remove"></span>
										</a>
										<a href="suadiem.php?id={USER.id}"  title="sửa điểm" class="btn btn-danger">
											<i class="fa fa-edit"></i>
											<span class="glyphicon glyphicon-remove"></span>
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
		<p class="login_title"> thêm học sinh </p>
        <a href="#" class="close"><img src="congculamdep/close.png" class="img-close" title="Close Window" alt="Close" /></a>
        <form method="post" class="login-content" action="them.php" enctype="multipart/form-data">
        	<table align="center">
        		<thead>
        			<div>
				        	<table align="center">
				        		<thead>
				        			<tr><td><input type="text" name="mahs" class="form-control" placeholder="nhập mã hs" "></br></td>
				        			<tr><td><select name="mamh">
				        				<option value="">--Chọn--</option>
				        				<option >MLS</option>
				        				<option >MT</option>

				        				</select>
				        			</br></td></tr>
				        			<tr><td><input type="text" name="diem" class="form-control" placeholder="nhập điểm" "></br></td></tr>
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