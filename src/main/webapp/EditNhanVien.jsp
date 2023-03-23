<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%String id = request.getParameter("id"); %>
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
			
				<label for="name">Name:</label> 
				<input type="text" id="name" name="name"> 
				
				<label for="email">Email:</label>
				<input type="text" id="email" name="email">
				
				<label for="role">Role:</label> 
				<input type="text" id="role" name="role">
				
				<input type="hidden" name = "id" value="<%= id%>"> 
				<input type="submit" value="Sửa thông tin nhân viên">
			</form>
	</section>
</body>
</html>