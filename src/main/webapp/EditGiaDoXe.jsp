<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý bãi đỗ xe</title>
<link rel="stylesheet" type="text/css" href="Css/StyleAdd.css">
</head>
<body>
	<section>
		<h1>Thay đổi thông tin nhân viên</h1>
			<form action="EditGiaDoXe" method="post">
			
				<label for="id">Mã nhân viên:</label> 
				<input type="text" id="id" name="id" value = "${gia.getID()}"> 
			
				<label for="name">Loại xe:</label> 
				<input type="text" id="name" name="name" value = "${gia.getName()}" > 
				
				<label for="time">Thời gian:</label>
				<input type="date" id="time" name="time" value = "${gia.getTime()}">
				
				<label for="price">Giá:</label> 
				<input type="number" id="price" name="price" value = "${gia.getPrice()}">
			</form>
	</section>
</body>
</html>