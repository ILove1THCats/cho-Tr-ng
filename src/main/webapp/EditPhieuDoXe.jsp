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
			
				<label for="id">Mã phiếu đỗ xe:</label> 
				<input type="text" id="id" name="id" value = "${phieu.getID()}"> 
			
				<label for="id_car">Mã xe:</label> 
				<input type="text" id="id_car" name="id_car" value = "${phieu.getId_xe()}" > 
				
				<label for="timeIn">Thời gian vào:</label>
				<input type="number" id="timeIn" name="timeIn" value = "${phieu.getThoi_gian_vao()}">
				
				<label for="timeOut">Thời gian ra:</label> 
				<input type="number" id="timeOut" name="timeOut" value = "${phieu.getThoi_gian_ra()}">
				
				<label for="price">Số tiền:</label> 
				<input type="number" id="price" name="price" value = "${phieu.getSo_tien()}"> 
				
				<input type="submit" value="Sửa thông tin phiếu đỗ xe">
			</form>
	</section>
</body>
</html>