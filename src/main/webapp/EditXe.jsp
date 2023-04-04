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
			<form action="EditNhanVienServlet" method="post">
			
				<label for="id">Mã xe:</label> 
				<input type="text" id="id" name="id" value = "${xe.getID()}"> 
			
				<label for="catagory">Loại xe:</label> 
				<input type="text" id="catagory" name="catagory" value = "${xe.getLoaixe()}" > 
				
				<label for="seanum">Biển số:</label>
				<input type="text" id="seanum" name="seanum" value = "${xe.getBienso()}">
				
				<label for="color">Màu sắc:</label> 
				<input type="text" id="color" name="color" value = "${xe.getMausac()}">
				
				<label for="state">Tình trạng:</label> 
				<input type="text" id="state" name="state" value = "${xe.getTinhtrang()}"> 
				
				<input type="submit" value="Sửa thông tin xe">
			</form>
	</section>
</body>
</html>