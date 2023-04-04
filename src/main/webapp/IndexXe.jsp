<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Xe</title>
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
				<form action="SearchXe" method="post">
					<input type="text" id="search" name="search" placeholder="Tìm kiếm...">
					<button type="submit">Tìm kiếm</button>
				</form>
			</div>
			<h2>Nhân Viên</h2>
			<table>
				<thead>
					<tr>
						<th>Mã xe</th>
						<th>Loại xe</th>
						<th>Biển số</th>
						<th>Màu sắc</th>
						<th>Tình trạng</th>
						<th>Sửa</th>
						<th>Xóa</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="l" items="${lst}">
						<tr>
							<td>${l.id}</td>
							<td>${l.loaixe}</td>
							<td>${l.bienso}</td>
							<td>${l.mausac}</td>
							<td>${l.tinhtrang}</td>
							<td><a href="EditXe?id=${l.id}"><i class="fa fa-edit"></i></a></td>
							<td><a href="DeleteXe?id=${l.id}"><i class="fa fa-trash"></i></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="add1">
				<c:forEach begin="0" end="${end}" var = "i">
					<a href = "IndexXe?index=${i}">${i}</a>
				</c:forEach>
			</div>
			<div class="add">
				<button>
					<a href="CreateXe">Thêm xe</a>
				</button>
			</div>
		</section>
	</main>
</body>
</html>