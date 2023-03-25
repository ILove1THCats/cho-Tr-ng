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
				<li><a href="IndexBaiDo?index=0">Bãi đỗ</a></li>
				<li><a href="IndexNhanVien?index=0">Nhân viên</a></li>
				<li><a href="IndexThongke.jsp">Thống kê</a></li>
				<li><a href="LogIn.jsp">Đăng nhập</a></li>
				<li><a href="index.jsp">Đăng xuất</a></li>
			</ul>
		</nav>
	</header>
	<main>
		<section>
			<div class="search">
				<form action="SearchProcessing" method="post">
					<input type="text" id="search" name = "search" placeholder="Tìm kiếm...">
					<button type="submit">Tìm kiếm</button>
				</form>
			</div>
			<h2>Các bãi đỗ</h2>
			<table>
				<thead>
					<tr>
						<th>Name</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<c:forEach var="l" items="${kq}">
							<tr>
								<td></td>
							</tr>
						</c:forEach>
					</tr>
				</tbody>
			</table>
			<div class="add">
				<button>
					<a href="AddBaiDo.jsp">Thêm bãi mới</a>
				</button>
			</div>
		</section>
	</main>
</body>
</html>