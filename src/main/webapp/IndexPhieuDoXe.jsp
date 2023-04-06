<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
  boolean isLoggedIn = session.getAttribute("username") != null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Phiếu đỗ xe</title>
<link rel="stylesheet" type="text/css" href="Css/Style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<header>
		<h1>Quản lý bãi đỗ xe</h1>
		<nav>
			<ul>
				<li><a href="index.jsp"><i class="fa fa-home"></i> Trang chủ</a></li>
				<li><a href="IndexGiaBaiDo?index=0"><i class="fa fa-car"></i> Giá đỗ xe</a></li>
				<li><a href="IndexXe?index=0"><i class="fa fa-users"></i> Xe</a></li>
				<li><a href="IndexPhieudoxe?index=0"><i class="fa fa-users"></i> Phiếu đỗ xe</a></li>
				<li><a href="IndexNhanVien?index=0"><i class="fa fa-users"></i> Nhân viên</a></li>
				<li><a href="IndexThongke.jsp"><i class="fa fa-map-marker"></i> Địa chỉ</a></li>
				<% if (isLoggedIn) { %>
				  <li><a href="index.jsp<%session = request.getSession();
								session.removeAttribute("username");
								isLoggedIn = false;%>"><i class='fa fa-sign-in'></i> Đăng xuất</a></li>
				<% } else { %>
				  <li><a href="LogIn.jsp"><i class='fa fa-sign-in'></i> Đăng nhập</a></li>
				<% } %>
			</ul>
		</nav>
	</header>
	<main>
		<section>
			<div class="search">
				<form action="SearchPhieuDoXe" method="post">
					<input type="text" id="search" name="search" placeholder="Tìm kiếm...">
					<button type="submit">Tìm kiếm</button>
				</form>
			</div>
			<h2>Phiếu đỗ xe</h2>
			<table>
				<thead>
					<tr>
						<th>Mã phiếu đỗ xe</th>
						<th>Mã xe</th>
						<th>Thời gian vào</th>
						<th>Thời gian ra</th>
						<th>Số tiền</th>
						<th>Sửa</th>
						<th>Xóa</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="l" items="${lst}">
						<tr>
							<td>${l.id}</td>
							<td>${l.id_xe}</td>
							<td>${l.thoi_gian_vao}</td>
							<td>${l.thoi_gian_ra}</td>
							<td>${l.so_tien}</td>
							<td><a href="EditPhieuDoXe?id=${l.id}&cal=${l.id_xe}"><i class="fa fa-edit"></i></a></td>
							<td><a href="DeletePhieuDoXe?id=${l.id}"><i class="fa fa-trash"></i></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="add1">
				<c:forEach begin="0" end="${end}" var = "i">
					<a href = "IndexPhieuDoXe?index=${i}">${i}</a>
				</c:forEach>
			</div>
			<div class="add">
				<button>
					<a href="CreatePhieuDoXe">Thêm nhân viên</a>
				</button>
			</div>
		</section>
	</main>
</body>
</html>