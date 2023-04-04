<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm giá đỗ xe</title>
<link rel="stylesheet" type="text/css" href="Css/StyleAdd.css">
</head>
<body>
	<section>
		<h1>Giá đỗ xe</h1>
			<form method="Post" action="CreateGiaDoXe" >
				<label for="id">Mã giá đỗ xe:</label><br> <input type="text" name="id"><br> 
				<label for="name">Loại xe:</label><br> <input type="text" name="name"><br> 
				<label for="time">Thời gian:</label><br> <input type="date" name="time"><br>
				<label for="price">Giá:</label><br> <input type="text" name="price"><br>
				<input type="submit" value="Giá đỗ xe">
			</form>
	</section>
</body>
</html>