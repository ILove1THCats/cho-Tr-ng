<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Parking lot management</title>
<link rel="stylesheet" type="text/css" href="Css/StyleAdd.css">
<link rel="icon" type="image/x-icon" href="https://github.com/Truong02022002/demojava/blob/master/src/main/webapp/img/favicon.PNG?raw=true">
</head>
<body>
	<section>
			<h1>Add new vehicle</h1>
			<form method="post" action="CreateXe" enctype="multipart/form-data">
				<label for="id">ID:</label><br>
				<input type="text" id="id" name="id"><br>
				<br>
				<label for="catagory">Type of vehicle:</label><br>
				<select id="catagory" name="catagory" required>
					<option value = "">---Select type of vehicle---</option>
					<c:forEach var = "cr" items = "${create}">
						<option value = "${cr.id}">${cr.id}</option>
					</c:forEach>					
				</select>
				<br>
				<br>
				<label for="seanum">License plate number:</label><br>
				<input type="text" id="seanum" name="seanum" ><br>
				<br>
				<label for="imageX">Vehicle image:</label><br> 
				<input type="file" name="imageX" required> 
				<br><br>
				<input type="submit" value="Add vehicle">
			</form>	
		</section>
</body>
</html>