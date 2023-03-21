<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<link rel="stylesheet" type="text/css" href="Css/Style.css">
</head>
<body>
	<header>
		<h1>Quản lý bãi đỗ xe</h1>
		<p>${nhanvien}</p>
		<nav>
			<ul>
				<li><a href="index.jsp">Trang chủ</a></li>
				<li><a href="IndexBaiDo.jsp">Bãi đỗ</a></li>
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
				<button>Search</button>
			</div>
			<h2>Các bãi đỗ</h2>
			<table>
				<thead>
					<tr>
						<th>Name</th>
						<th>Location</th>
						<th>Capacity</th>
						<th>Occupancy</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Lot 1</td>
						<td>123 Main Street</td>
						<td>50</td>
						<td>40</td>
						<td>
							<a href="#">Chỉnh sửa</a>
							<a href="#">Xóa</a>
						</td>
					</tr>
					<tr>
						<td>Lot 2</td>
						<td>456 Elm Street</td>
						<td>100</td>
						<td>80</td>
						<td>
							<a href="#">Edit</a>
							<a href="#">Delete</a>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="add">
				<button><a href="AddBaiDo.jsp">Thêm bãi mới</a></button>
			</div>
		</section>
	</main>
</body>
</html>