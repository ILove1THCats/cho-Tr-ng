<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm nhân viên</title>
<link rel="stylesheet" type="text/css" href="Css/StyleAdd.css">
</head>
<body>
	<section>
		<h1>Thêm nhân viên mới</h1>
			<form method="Post" action="CreateNhanVien" enctype="multipart/form-data">
				<label for="id">Mã nhân viên:</label><br> <input type="text" name="id"><br> 
				<label for="name">Tên nhân viên:</label><br> <input type="text" name="name"><br> 
				<label for="bdate">Ngày sinh:</label><br> <input type="date" name="bdate"><br>
				<label for="sex">Giới tính:</label><br> <input type="text" name="sex"><br>
				<label for="address">Địa chỉ:</label><br> <input type="text" name="address"><br>
				<label for="phone">Số điện thoại:</label><br> <input type="text" name="phone"><br>
				<label for="pictureNV">Ảnh nhân thân:</label><br> 
				<input type="file" name="pictureNV" required> 
				<input type="submit" value="Thêm nhân viên">
			</form>
	</section>
</body>
</html>