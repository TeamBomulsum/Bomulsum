<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현황</title>
<link href="<c:url value='/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="<c:url value='/css/sb-admin-2.min.css'/>" rel="stylesheet">
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	google.charts.load('current', {
		'packages' : [ 'bar' ]
	});
	google.charts.setOnLoadCallback(drawChart);

	function drawChart() {
		var data = google.visualization.arrayToDataTable([
				[ 'Year', 'Expenses' ],
				[ '2014',100 ], [ '2015', 460 ],
				[ '2016', 500 ], [ '2017',500 ] ]);

		var options = {
			width : '100%'
		};

		var chart = new google.charts.Bar(document
				.getElementById('columnchart_material'));

		chart.draw(data, google.charts.Bar.convertOptions(options));
	}
</script>
</head>



</head>
<body id="page-top">
	<div id="wrapper">
		<!-- Header/Nav -->
		<%@ include file="../include/side.jsp" %>
		<div id="content-wrapper" class="d-flex flex-column">
			<%@ include file="../include/head.jsp" %>
			<!-- end Header/Nav -->
			<div id="content">


				<div style="width: 100%; height: 100%;">
					<header>
						<h3 style="padding: 1%;">매출</h3>
					</header>
					<hr>
					<div style="display: flex; flex-direction: row; margin: 1%;">
						<input type="button" value="주간"><input type="button"
							value="월간"> &nbsp;&nbsp;&nbsp; <input type="date">&nbsp;&nbsp;
						~ &nbsp;&nbsp; <input type="date"> &nbsp;&nbsp;&nbsp; <input
							type="submit" value="검색">
					</div>
					<p style="margin: 1%;">! 조회기간은 최대 15주(주간),12달(월간) 검색이 가능합니다.</p>

					<div style="width: 80%; height: 60%; border: 1px black solid; margin: 1%;">
						<!-- Area Chart -->
						<div class="col-xl-8 col-lg-7" style="padding: 1%;">
							<div class="card shadow mb-4">
								<!-- Card Header - Dropdown -->
								<div
									class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">주문 현황 그래프</h6>
								</div>
							</div>
						</div>
						<div id="columnchart_material" style="width: 80%; height: 100%; padding: 1%; margin-top: 10%"></div>


					</div>
					<br>
					<hr>
					<br>
					<div style="margin:1%; width:80%;">
						<table style="width: 100%" border="1">
							<tr style="background-color: #f2f2f2; color: black;">
								<td rowspan="2" style="width: 15%; text-align: center;">기간</td>
								<td rowspan="2" style="width: 15%; text-align: center;">판매수</td>								
								<td colspan="2" style="width: 30%; text-align: center;">정산</td>
								<td colspan="4" style="width: 30%; text-align: center;">매출</td>
							</tr>
							<tr style="font-size: 80%; width:25%; text-align: center; background-color: #f2f2f2;">
								<td>보물섬 수수료</td>
								<td>결제 수수료</td>
								<td>작품금액</td>
								<td>배송비</td>
								<td>후원금</td>
								<td>할인쿠폰(작품 + 배송비)</td>
							</tr>
							<tr>
								<td style="text-align: center;">데이터넣어</td>
								<td style="text-align: center;">데이터넣어</td>
								<td style="text-align: center;">데이터넣어</td>
								<td style="text-align: center;">데이터넣어</td>
								<td style="text-align: center;">데이터넣어</td>
								<td style="text-align: center;">데이터넣어</td>
								<td style="text-align: center;">데이터넣어</td>
								<td style="text-align: center;">데이터넣어</td>
							
							</tr>
						</table>
					</div>











					<%@ include file="../include/footer.jsp" %>
					<!-- end footer -->
					<!-- Scroll to Top Button-->
					<a class="scroll-to-top rounded" href="#page-top"> <i
						class="fas fa-angle-up"></i>
					</a>

					<script src="<c:url value='/vendor/jquery/jquery.min.js'/>"></script>
					<script src="<c:url value='/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

					<!-- Core plugin JavaScript-->
					<script src="<c:url value='/vendor/jquery-easing/jquery.easing.min.js'/>"></script>

					<!-- Custom scripts for all pages-->
					<script src="<c:url value='/resources/js/sb-admin-2.min.js'/>"></script>


				</div>
			</div>
		</div>
	</div>
</body>
</html>