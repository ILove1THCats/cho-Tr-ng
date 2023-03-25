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
			<form method="Post" action="CreateNhanVien" >
				<label for="id_nhanvien">Mã nhân viên:</label><br> <input type="text" name="id_nhanvien"><br> 
				<label for="name">Tên nhân viên:</label><br> <input type="text" name="name"><br> 
				<label for="phone">Số điện thoại:</label><br> <input type="text" name="phone"><br> 
				<label for="role">Vai trò:</label><br> <input type="text" name="role"><br>
				<label for="shift">Ca làm:</label><br> <input type="text" name="shift"><br> 
				<input type="submit" value="Thêm nhân viên">
			</form>
	</section>
</body>
</html>