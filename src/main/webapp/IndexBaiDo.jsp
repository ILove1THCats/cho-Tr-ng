<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bãi đỗ</title>
<link rel="stylesheet" type="text/css" href="Css/Style.css">
</head>
<body>
	<header>
		<h1>Quản lý bãi đỗ xe</h1>
		<nav>
			<ul>
				<li><a href="index.jsp">Trang chủ</a></li>
				<li><a href="IndexBaiDo.jsp">Bãi đỗ</a></li>
				<li><a href="IndexNhanVien.jsp">Nhân viên</a></li>
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
						<th>Biển số</th>
						<th>Thời gian vào bãi</th>
						<th>Thời gian ra bãi</th>
						<th>Số tiền phải thanh toán</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>51G-12345</td>
						<td>2022-03-16 10:30:00</td>
						<td>2022-03-16 16:45:00</td>
						<td>100,000 đồng</td>
					</tr>
					<tr>
						<td>51G-54321</td>
						<td>2022-03-16 11:15:00</td>
						<td>2022-03-16 19:30:00</td>
						<td>150,000 đồng</td>
					</tr>
					<tr>
						<td>51G-67890</td>
						<td>2022-03-16 14:30:00</td>
						<td>2022-03-16 21:45:00</td>
						<td>200,000 đồng</td>
					</tr>
				</tbody>
			</table>
			<div class="add">
				<button><a href="AddXe.jsp">Thêm xe</a></button>
			</div>
		</section>
	</main>
</body>
</html>