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
		<h1>Thay đổi thông tin xe</h1>
			<form action="EditXe?id_cu=${xe.getId()}" method="post">
			
				<label for="catagory">Loại xe:</label><br>
				<select id="catagory" name="catagory" required>
					<option value = "${cal}">${cal}</option>
					<c:forEach var = "cr" items = "${create}">
						<option value = "${cr.id}">${cr.id}</option>
					</c:forEach>					
				</select>
				
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