<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
			<form action="EditNhanVienServlet?id_cu=${nhanvien.getId()}" method="post" enctype="multipart/form-data">
			
				<label for="id">Mã nhân viên:</label> 
				<input type="text" id="id" name="id" value = "${nhanvien.getId()}"> 
			
				<label for="name">Họ tên:</label> 
				<input type="text" id="name" name="name" value = "${nhanvien.getHo_ten()}" > 
				
				<label for="bdate">Ngày sinh:</label>
				<input type="date" id="bdate" name="bdate" value = "${nhanvien.getNgay_sinh()}">
				
				<label for="sex">Giới tính:</label> 
				<input type="text" id="sex" name="sex" value = "${nhanvien.getGioi_tinh()}">
				
				<label for="address">Địa chỉ:</label> 
				<input type="text" id="address" name="address" value = "${nhanvien.getDia_chi()}"> 
				
				<label for="phone">Số điện thoại:</label> 
				<input type="text" id="phone" name="phone" value = "${nhanvien.getSdt()}"> 
				
				<label>Hình đại diện đang dùng</label>
				<img alt="#" src="${nhanvien.getHinh_anh()}" width="100" height="100">
				
				<label for="pictureNV">Hình đại diện thay đổi:</label> 
				<input type="file" id="pictureNV" name="pictureNV" value = ""> 
				
				<input type="submit" value="Sửa thông tin nhân viên">
			</form>
	</section>
</body>
</html>