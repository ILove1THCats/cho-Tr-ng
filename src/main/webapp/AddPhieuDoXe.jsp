<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm phiếu đỗ xe</title>
<link rel="stylesheet" type="text/css" href="Css/StyleAdd.css">
</head>
<body>
	<section>
		<h1>Thêm nhân viên mới</h1>
			<form method="Post" action="CreatePhieuDoXe" >
				<label for="id">Mã phiếu đỗ xe:</label><br> <input type="text" name="id"><br> 
				<label for="id_car">Mã xe:</label><br>
				<select id="id_car" name="id_car" required>
					<option value = "">---Chon loại xe---</option>
					<c:forEach var = "cr" items = "${create}">
						<option value = "${cr.id}">${cr.id}</option>
					</c:forEach>					
				</select>
				<label for="timeIn">Thời gian vào:</label><br> <input type="number" name="timeIn"><br>
				<label for="timeOut">Thời gian ra:</label><br> <input type="number" name="timeOut"><br>
				<label for="price">Số tiền:</label><br> <input type="number" name="price"><br>
				<input type="submit" value="Thêm phiếu đỗ xe">
			</form>
	</section>
</body>
</html>