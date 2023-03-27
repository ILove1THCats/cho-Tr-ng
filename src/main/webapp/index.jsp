<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<link rel="stylesheet" type="text/css" href="Css/Style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<header>
		<h1>Quản lý bãi đỗ xe</h1>
		<p>${nhanvien}</p>
		<nav>
			<ul>
				<li><a href="index.jsp"><i class="fa fa-home"></i> Trang chủ</a></li>
				<li><a href="IndexBaiDo?index=0"><i class="fa fa-car"></i> Bãi đỗ</a></li>
				<li><a href="IndexNhanVien?index=0"><i class="fa fa-users"></i> Nhân viên</a></li>
				<li><a href="IndexThongke.jsp"><i class="fa fa-map-marker"></i> Địa chỉ</a></li>
				<li><a href='LogIn.jsp'><i class='fa fa-sign-in'></i> Đăng nhập</a></li>
			</ul>
		</nav>
	</header>
	<main>
		<section>
			<center>
				<img src="img/anh-dong.jpg"alt="alternatetext" width="1000px" height="500px">
			</center>
		</section>
	</main>
</body>
</html>