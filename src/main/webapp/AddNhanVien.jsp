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
			<form>
				<label for="name">Tên nhân viên:</label><br>
				<input type="text" id="name" name="name"><br>
		
				<label for="address">Địa chỉ:</label><br>
				<input type="text" id="address" name="address"><br>
		
				<label for="phone">Số điện thoại:</label><br>
				<input type="tel" id="phone" name="phone" pattern="[0-9]{10}"><br>
		
				<label for="capacity">Sức chứa:</label><br>
				<input type="number" id="capacity" name="capacity" min="1" max="1000"><br>
		
				<input type="submit" value="Thêm nhân viên">
			</form>	
		</section>
</body>
</html>