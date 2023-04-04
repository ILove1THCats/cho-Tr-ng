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
			<h1>Thêm xe vào</h1>
			<form method="post" action="CreateXe">
				<label for="name">Mã xe:</label><br>
				<input type="text" id="name" name="name"><br>
		
				<label for="catagory">Loại xe:</label><br>
				<select id="catagory" name="catagory" required>
					<option value = "">---Chon loại xe---</option>
					<c:forEach var = "cr" items = "${create}">
						<option value = "${cr.id}">${cr.id}</option>
					</c:forEach>					
				</select>
		
				<label for="seanum">Biển số:</label><br>
				<input type="text" id="seanum" name="seanum" ><br>
		
				<label for="color">Màu sắc:</label><br>
				<input type="number" id="color" name="color"><br>
				
				<label for="state">Tình trạng:</label><br>
				<input type="number" id="state" name="state"><br>
		
				<input type="submit" value="Thêm xe">
			</form>	
		</section>
</body>
</html>