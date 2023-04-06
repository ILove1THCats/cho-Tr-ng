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
		<h1>Thay đổi thông tin phiếu đỗ xe</h1>
			<form action="EditPhieuDoXe?id_cu=${phieu.getId()}" method="post">
			
				<label for="id">Mã phiếu đỗ xe:</label> 
				<input type="text" id="id" name="id" value = "${phieu.getId()}"> 
			
				<label for="id_car">Mã xe:</label><br>
				<select id="id_car" name="id_car" required>
					<option value = "${cal}">${cal}</option>
					<c:forEach var = "cr" items = "${create}">
						<option value = "${cr.id}">${cr.id}</option>
					</c:forEach>					
				</select>
				
				<label for="timeIn">Thời gian vào:</label>
				<input type="date" id="timeIn" name="timeIn" value = "${phieu.getThoi_gian_vao()}">
				
				<label for="timeOut">Thời gian ra:</label> 
				<input type="date" id="timeOut" name="timeOut" value = "${phieu.getThoi_gian_ra()}">
				
				<label for="price">Số tiền:</label> 
				<input type="text" id="price" name="price" value = "${phieu.getSo_tien()}"> 
				
				<input type="submit" value="Sửa thông tin phiếu đỗ xe">
			</form>
	</section>
</body>
</html>