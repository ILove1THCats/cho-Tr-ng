<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Servlet.UserAccount"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nhân viên</title>
<link rel="stylesheet" type="text/css" href="Css/Style.css">
</head>
<body>
	<header>
		<div class="search">
			<form action="IndexNhanVien" method="get">
				<input type="text" id="search" name="search" placeholder="Tìm kiếm...">
				<button type="submit">Tìm kiếm</button>
			</form>
		</div>
		<h1>Quản lý bãi đỗ xe</h1>
		<nav>
			<ul>
				<li><a href="index.jsp">Trang chủ</a></li>
				<li><a href="IndexBaiDo">Bãi đỗ</a></li>
				<li><a href="IndexThongke">Thống kê</a></li>
				<li><a href="LogIn.jsp">Đăng nhập</a></li>
				<li><a href="index.jsp">Đăng xuất</a></li>
			</ul>
		</nav>
	</header>
	<main>
		<section>
			<h2>Nhân Viên</h2>
			<table>
				<thead>
					<tr>
						<th>Mã nhân viên</th>
						<th>Tên nhân viên</th>
						<th>Số điện thoại</th>
						<th>Vị trí</th>
						<th>Ca làm</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="l" items="${lst}">
						<tr>
							<td>${l.id_nhanvien}</td>
							<td>${l.name}</td>
							<td>${l.phone}</td>
							<td>${l.role}</td>
							<td>${l.shift}</td>
							<td><a href="EditNhanVienServlet?id=${l.id_nhanvien}">Edit</a></td>
							<td><a href="DeleteNhanVien?id=${l.id_nhanvien}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="add">
				<c:forEach begin="0" end="${end}" var = "i">
					<a href = "IndexNhanVien?index=${i}">${i}</a>
				</c:forEach>
			</div>
			<div class="add">
				<button>
					<a href="AddNhanVien.jsp">Thêm nhân viên</a>
				</button>
			</div>
		</section>
	</main>
</body>
</html>
