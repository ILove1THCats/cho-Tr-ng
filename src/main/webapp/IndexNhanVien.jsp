<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nhân viên</title>
<link rel="stylesheet" type="text/css" href="Css/Style.css">
</head>
<body>
	<header>
		<h1>Quản lý bãi đỗ xe</h1>
		<nav>
			<ul>
				<li><a href="index.jsp">Trang chủ</a></li>
				<li><a href="IndexBaiDo.jsp">Bãi đỗ</a></li>
				<li><a href="IndexThongke.jsp">Thống kê</a></li>
				<li><a href="LogIn.jsp">Đăng nhập</a></li>
				<li><a href="index.jsp">Đăng xuất</a></li>
			</ul>
		</nav>
	</header>
	<main>
	<h1>${lst}</h1>
		<section>
			<h2>Nhân Viên</h2>
			<table>
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Email</th>
						<th>Role</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items= ${lst} var="l">
						<tr>
							<td></td>
							<td>${l.name}</td>
							<td>${l.email}</td>
							<td>${l.role}</td>
							<td><a href="editnhanvien?code=${l.id}">Edit</a></td>
							<td><a href="deletenhanvien?code=${l.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="add">
				<button>
					<a href="AddNhanVien.jsp">Thêm nhân viên</a>
				</button>
			</div>
		</section>
	</main>
</body>
</html>
