<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Css/StyleAdd.css">
</head>
<body>
	<section>
		<h1>Thay đổi thông tin bãi đỗ</h1>
		<form action="EditBaiDo" method="post">
			<label for="name">Biển số:</label> <input type="text" id="name" name="name" value = "${bai.getSea_number()}"> 
			<label for="address">Tên bãi đổ:</label> <input type="text" id="address" name="address" value = "${bai.getParking_plot_name()}"> 
			<label for="telephone">Số điện thoại:</label> <input type="text" id="telephone" name="telephone" value = "${bai.getPhone()}"> 
			<input type="hidden" name="id" value="<%=id%>"> 
			<input type="submit" value="Sửa thông tin bãi đổ">
		</form>
	</section>
</body>
</html>