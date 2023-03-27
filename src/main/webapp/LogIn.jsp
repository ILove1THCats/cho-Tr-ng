<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
<link rel="stylesheet" href="Css/styleLogIn.css">
</head>
<body>
	<main>
		<section>
			<h2>Đăng nhập</h2>
			<form method = "POST", action="LogInServlet">
				<label for="username">Tên đăng nhập</label>
				<input type="text" id="username" name="username" placeholder="Nhập tên đăng nhập...">
				<label for="password">Mật khẩu</label>
				<input type="password" id="password" name="password" placeholder="Nhập mật khẩu...">
				<button type="submit">Đăng nhập</button>
				<a href="SignIn.jsp" style = "color: #555; text-decoration: none"><h5>Đăng kí tại đây</h5></a>
			</form>
		</section>
	</main>	
</body>
</html>