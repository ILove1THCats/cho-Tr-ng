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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<header>
		<h1>Quản lý bãi đỗ xe</h1>
		<nav>
			<ul>
				<li><a href="index.jsp"><i class="fa fa-home"></i> Trang chủ</a></li>
				<li><a href="IndexBaiDo"><i class="fa fa-car"></i> Bãi đỗ</a></li>
				<li><a href="IndexNhanVien"><i class="fa fa-users"></i> Nhân viên</a></li>
				<li><a href="IndexThongke.jsp"><i class="fa fa-map-marker"></i> Địa chỉ</a></li>
				<li><a href='LogIn.jsp'><i class='fa fa-sign-in'></i> Đăng nhập</a></li>
			</ul>
		</nav>
	</header>
	<main>
		<section>
			<div class="search">
				<form action="IndexNhanVien" method="get">
					<input type="text" id="search" name="search" placeholder="Tìm kiếm...">
					<button type="submit">Tìm kiếm</button>
				</form>
			</div>
			<h2>Nhân Viên</h2>
			<table>
				<thead>
					<tr>
						<th>Mã nhân viên</th>
						<th>Tên nhân viên</th>
						<th>Số điện thoại</th>
						<th>Vị trí</th>
						<th>Ca làm</th>
						<th>Sửa</th>
						<th>Xóa</th>
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
							<td><a href="EditNhanVienServlet?id=${l.id_nhanvien}"><i class="fa fa-edit"></i></a></td>
							<td><a href="DeleteNhanVien?id=${l.id_nhanvien}"><i class="fa fa-trash"></i></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="add1">
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
