<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thống kê</title>
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
				<li><a href="LogIn.jsp">Đăng nhập</a></li>
				<li><a href="index.jsp">Đăng xuất</a></li>
			</ul>
		</nav>
	</header>
	<main>
		<section>
			<h2>Thống kê</h2>
			<div class="charts">
				<h3>Số xe đỗ hôm nay</h3>
				<canvas id="parked-cars"></canvas>
				<h3>Doanh thu hôm nay</h3>
				<canvas id="revenue"></canvas>
			</div>
		</section>
	</main>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script>
		// Draw charts
		var parkedCarsChart = new Chart(document.getElementById('parked-cars').getContext('2d'), {
			type: 'line',
			data: {
				labels: ['8:00 AM', '9:00 AM', '10:00 AM', '11:00 AM', '12:00 PM', '1:00 PM', '2:00 PM', '3:00 PM', '4:00 PM', '5:00 PM', '6:00 PM', '7:00 PM'],
				datasets: [{
					label: 'Number of Cars Parked',
					data: [10, 20, 35, 40, 45, 55, 70, 75, 80, 85, 90, 100],
					fill: false,
					borderColor: '#3e95cd',
					lineTension: 0.1
				}]
			},
			options: {
				scales: {
					yAxes: [{
						ticks: {
							beginAtZero: true
						}
					}]
				}
			}
		});

		var revenueChart = new Chart(document.getElementById('revenue').getContext('2d'), {
			type: 'bar',
			data: {
				labels: ['8:00 AM', '9:00 AM', '10:00 AM', '11:00 AM', '12:00 PM', '1:00 PM', '2:00 PM', '3:00 PM', '4:00 PM', '5:00 PM', '6:00 PM', '7:00 PM'],
				datasets: [{
					label: 'Revenue',
					data: [100, 200, 350, 400, 450, 550, 700, 750, 800, 850, 900, 1000],
					backgroundColor: '#3cba9f'
				}]
			},
			options: {
				scales: {
					yAxes: [{
						ticks: {
							beginAtZero: true
						}
					}]
				}
			}
		});
	</script>
</body>
</html>
