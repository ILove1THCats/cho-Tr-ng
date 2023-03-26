<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm bãi đỗ</title>
<link rel="stylesheet" type="text/css" href="Css/StyleAdd.css">
</head>
<body>
		<section>
			<h1>Thêm bãi đỗ xe mới</h1>
			<form method="Post" action = "CreateBaiDo">
				<label for="name">Biển số:</label><br>
				<input type="text" id="name" name="name"><br>
		
				<label for="address">Tên bãi đỗ:</label><br>
				<input type="text" id="address" name="address"><br>
		
				<label for="phone">Số điện thoại:</label><br>
				<input type="tel" id="phone" name="phone"><br>
		
				<input type="submit" value="Thêm bãi đỗ xe">
			</form>	
		</section>
</body>
</html>