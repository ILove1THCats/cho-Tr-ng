<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Css/StyleAdd.css">
</head>
<body>
	<section>
		<h1>Thay đổi thông tin nhân viên</h1>
			<form action="EditNhanVienServlet" method="post">
			
				<label for="id_nhanvien">Mã nhân viên:</label> 
				<input type="text" id="id_nhanvien" name="id_nhanvien" value = "${nhanvien.getId_nhanvien()}"> 
			
				<label for="name">Name:</label> 
				<input type="text" id="name" name="name" value = "${nhanvien.getName()}" > 
				
				<label for="phone">Điện thoại:</label>
				<input type="text" id="phone" name="phone" value = "${nhanvien.getPhone()}">
				
				<label for="role">Role:</label> 
				<input type="text" id="role" name="role" value = "${nhanvien.getRole()}">
				
				<label for="shift">Ca làm:</label> 
				<input type="text" id="shift" name="shift" value = "${nhanvien.getShift()}"> 
				<input type="submit" value="Sửa thông tin nhân viên">
			</form>
	</section>
</body>
</html>