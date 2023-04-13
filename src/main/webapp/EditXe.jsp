<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit vehicle information</title>
<link rel="stylesheet" type="text/css" href="Css/StyleAdd.css">
<link rel="icon" type="image/x-icon" href="https://github.com/Truong02022002/demojava/blob/master/src/main/webapp/img/favicon.PNG?raw=true">
</head>
<body>
	<section>
		<h1>Edit vehicle information</h1>
			<form action="EditXe?id_cu=${xe.getId()}" method="post">
			
				<label for="catagory">Type of vehicle:</label><br>
				<select id="catagory" name="catagory" required>
					<option value = "${cal}">${cal}</option>
					<c:forEach var = "cr" items = "${create}">
						<option value = "${cr.id}">${cr.id}</option>
					</c:forEach>					
				</select>
				<br>
				<br>
				<label for="seanum">License plate number:</label>
				<input type="text" id="seanum" name="seanum" value = "${xe.getBienso()}">
				
				
				<label for="color">Color:</label> 
				<input type="text" id="color" name="color" value = "${xe.getMausac()}">
				
				<label for="state">Status:</label> 
				<input type="text" id="state" name="state" value = "${xe.getTinhtrang()}"> 
				<input type="submit" value="Edit vehicle information">
			</form>
	</section>
</body>
</html>