<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
int ID = 1;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bãi đỗ</title>
<link rel="stylesheet" type="text/css" href="Css/Style.css">
</head>
<body>
	<header>
		<div class="search">
			<form action="IndexNhanVien" method="get">
				<input type="text" id="search" name="search"
					placeholder="Tìm kiếm...">
				<button type="submit">Tìm kiếm</button>
			</form>
		</div>
		<h1>Quản lý bãi đỗ xe</h1>
		<nav>
			<ul>
				<li><a href="index.jsp">Trang chủ</a></li>
				<li><a href="IndexBaiDo">Bãi đỗ</a></li>
				<li><a href="IndexNhanVien">Nhân viên</a></li>
				<li><a href="IndexThongke.jsp">Thống kê</a></li>
				<li><a href="LogIn.jsp">Đăng nhập</a></li>
				<li><a href="index.jsp">Đăng xuất</a></li>
			</ul>
		</nav>
	</header>
	<main>
		<section>
			<div class="search">
				<input type="text" placeholder="Tìm kiếm...">
				<button>Tìm kiếm</button>
			</div>
			<h2>Xe đang trong bãi</h2>
			<table>
				<thead>
					<tr>
						<th></th>
						<th>Tên bãi đỗ</th>
						<th>Địa chỉ</th>
						<th>Số điện thoại</th>
						<th>Sức chứa</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="l" items="${lst}">
						<tr>
							<td><%=ID%>
								<%
								ID++;
								%></td>
							<td>${l.namePlot}</td>
							<td>${l.addRess}</td>
							<td>${l.teLephone}</td>
							<td>${l.caPacity}</td>
							<td><a href="EditBaiDo?id=${l.id}">Edit</a></td>
							<td><a href="DeleteBaiDo?id=${l.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="add">
				<c:forEach begin="0" end="${end}" var="i">
					<a href="IndexBaiDo?index=${i}">${i}</a>
				</c:forEach>
			</div>
			<div class="add">
				<button>
					<a href="AddBaiDo.jsp">Thêm xe</a>
				</button>
			</div>
		</section>
	</main>
</body>
</html>