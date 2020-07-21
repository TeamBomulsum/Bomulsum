<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
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
<meta charset="UTF-8">
<title>요약</title>
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body id="page-top">
	<div id="wrapper">
		<!-- Header/Nav -->
		<%@ include file="/view/include/side.jsp" %>
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<%@ include file="/view/include/head.jsp" %>
				<!-- end Header/Nav -->
				<div style="margin-left: 2%; margin-right: 2%;">
					<h2 style="text-style: bold; margin-bottom: 0rem;">요약</h2>
					<hr
						style="margin-top: 0rem; border: 0; background: #ccc; height: 0.2rem;">


					<div style="">
						<div style="display: flex; flex-flow: row; padding: 1">
							<!-- 전일 매출!!!!!!!!!!!!!! -->
							<table border=1 style="width: 25%; margin:10px;">
								<tr>
									<th>전일 매출</th>
									<td><a href="">더보기 ></a></td>
								</tr>
								<tr>
									<td>작품금액</td>
									<td>0원</td>
								</tr>
								<tr>
									<td>배송비</td>
									<td>0원</td>
								</tr>
								<tr>
									<td>후원금</td>
									<td>0원</td>
								</tr>
								<tr>
									<td>할인쿠폰</td>
									<td>0원</td>
								</tr>

							</table>
							<!-- end 전일매출!!!!!!!!!!!!!!!!!!! -->
							<!-- 전일 작품활동!!!!!!!!!!!!!! -->
							<table border=1 style="width: 25%;margin:10px;">
								<tr>
									<th colspan="2">전일 작품 활동 현황</th>
								</tr>
								<tr>
									<td>작품금액</td>
									<td>0원</td>
								</tr>
								<tr>
									<td>배송비</td>
									<td>0원</td>
								</tr>
								<tr>
									<td>후원금</td>
									<td>0원</td>
								</tr>
								<tr>
									<td>할인쿠폰</td>
									<td>0원</td>
								</tr>

							</table>
							<!-- end 전일 매출!!!!!!!!!!!!!! -->
							<!-- 주문!!!!!!!!!!!!!! -->
							<table border=1 style="width: 25%;margin:10px;">
								<tr>
									<th colspan="2">주문</th>
								</tr>
								<tr>
									<td>작품금액</td>
									<td>0원</td>
								</tr>
								<tr>
									<td>배송비</td>
									<td>0원</td>
								</tr>
								<tr>
									<td>후원금</td>
									<td>0원</td>
								</tr>
								<tr>
									<td>할인쿠폰</td>
									<td>0원</td>
								</tr>

							</table>
							<!-- end 주문!!!!!!!!!!!!!! -->
							<!-- 환불!!!!!!!!!!!!!! -->
							<table border=1 style="width: 25%;margin:10px;">
								<tr>
									<th colspan="2">전일 작품 활동 현황</th>
								</tr>
								<tr>
									<td>작품금액</td>
									<td>0원</td>
								</tr>
								<tr>
									<td>배송비</td>
									<td>0원</td>
								</tr>
								<tr>
									<td>후원금</td>
									<td>0원</td>
								</tr>
								<tr>
									<td>할인쿠폰</td>
									<td>0원</td>
								</tr>

							</table>
							<!-- end 환불!!!!!!!!!!!!!! -->
						</div>
						<div style="display: flex; flex-direction: row;">
							<table border=1 style="width:50%; margin: 10px;">
								<tr>
									<td>
									매출 바로가기
									<a href=""><img style="width:100%" src="graph.PNG">
									</a>
									</td>
								</tr>
							</table>
							<table border=1 style="width:50%;height:418px; margin: 10px;">
								<tr>
									<th>메세지</th>
								</tr>
							</table>
						</div>
						<div style="display: flex; flex-direction: row;">
						<table border=1 style="width:50%; margin: 10px;">
								<tr>
									<th>작품</th>
									<td>바로가기</td>
								</tr>
								<tr>
									<td>판매 중 작품</td>
									<td>1건</td>
									
								</tr>
								<tr>
									<td>일시 중지 작품 </td>
									<td>5</td>
								</tr>
						</table>
						<table border=1 style="width:50%; margin: 10px;">
								<tr>
									<th>공지사항</th>
								</tr>
						</table>
					</div>


				</div>

				<%@ include file="/view/include/footer.jsp" %>
				<!-- end footer -->
				<!-- Scroll to Top Button-->
				<a class="scroll-to-top rounded" href="#page-top"> <i
					class="fas fa-angle-up"></i>
				</a>

				<script src="vendor/jquery/jquery.min.js"></script>
				<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
				<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
				<script
					src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.14.3/xlsx.full.min.js"></script>

				<!-- Core plugin JavaScript-->
				<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

				<!-- Custom scripts for all pages-->
				<script src="js/sb-admin-2.min.js"></script>

				<!-- Page level plugins -->
				<script src="vendor/chart.js/Chart.min.js"></script>

				<!-- Page level custom scripts -->
				<script src="js/demo/chart-area-demo.js"></script>
				<script src="js/demo/chart-pie-demo.js"></script>
			</div>
		</div>
	</div>

</body>
</html>