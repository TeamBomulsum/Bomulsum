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
<style type="text/css">
	td{
	padding:1%; 
	margin: 1%;
	}
		th{
	padding:1%; 
	margin: 1%;
	}
</style>
<meta charset="UTF-8">
<title>요약</title>
<link href="<c:url value='/resources/vendor/fontawesome-free/css/all.min.css' /> " rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="<c:url value='/resources/css/sb-admin-2.min.css'/> " rel="stylesheet">
</head>
<body id="page-top">
<%-- <c:if test="${empty writer_login}"> --%>
<!-- 	<script> -->
<!-- // 		alert("로그인이 필요한 서비스입니다."); -->
<%-- // 		location.href="<c:url value='/writer/login.wdo'/> "; --%>
<!-- 	</script> -->
<%-- </c:if> --%>
	<div id="wrapper">
		<!-- Header/Nav -->
		<%@ include file="include/side.jsp" %>
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<%@ include file="include/head.jsp" %>
				<!-- end Header/Nav -->
				<div style="margin-left: 2%; margin-right: 2%; background-color: white; padding:1%;">
					<h2 style="text-style: bold; margin-bottom: 0rem;">요약</h2>
					<hr
						style="margin-top: 0rem; border: 0; background: #ccc; height: 0.2rem;">


					<div style="">
						<div style="display: flex; flex-flow: row;">
							<!-- 전일 매출!!!!!!!!!!!!!! -->
							<table style="width: 25%; margin:10px; border: 1px #ABABAB solid; padding:1%;">
								<tr style="border-bottom: 1px #ABABAB solid; padding:1%;">
									<th style="padding:1%; margin: 1%;">전일 매출</th>
									<td style="padding:1%; margin:1%; float: right;"><a href="">더보기 </a></td>
								</tr>
								<tr>
									<td>작품금액</td>
									<td style="float: right;">0원</td>
								</tr>
								<tr>
									<td>배송비</td>
									<td style="float: right;">0원</td>
								</tr>
								<tr>
									<td>후원금</td>
									<td style="float: right;">0원</td>
								</tr> 
								<tr>
									<td>할인쿠폰</td>
									<td style="float: right;">0원</td>
								</tr>

							</table>
							<!-- end 전일매출!!!!!!!!!!!!!!!!!!! -->
							<!-- 전일 작품활동!!!!!!!!!!!!!! -->
							<table style="border: 1px #ABABAB solid; padding:1%; width: 25%;margin:10px;">
								<tr style="border-bottom: 1px #ABABAB solid; padding:1%;">
									<th colspan="1">전일 작품 활동 현황</th>
									<td style="float: right;"><a>더보기</a></td>
								</tr>
								<tr>
									<td>작품금액</td>
									<td style="float: right;">0원</td>
								</tr>
								<tr>
									<td>배송비</td>
									<td style="float: right;">0원</td>
								</tr>
								<tr>
									<td>후원금</td>
									<td style="float: right;">0원</td>
								</tr>
								<tr>
									<td>할인쿠폰</td>
									<td style="float: right;">0원</td>
								</tr>

							</table>
							<!-- end 전일 매출!!!!!!!!!!!!!! -->
							<!-- 주문!!!!!!!!!!!!!! -->
							<table style="width: 25%;margin:10px; border: 1px #ABABAB solid; padding:1%;">
								<tr style="border-bottom: 1px #ABABAB solid; padding:1%;">
									<th colspan="1">주문</th>
									<td style="float: right;"><a>더보기</a></td>
								</tr>
								<tr>
									<td>작품금액</td>
									<td style="float: right;">0원</td>
								</tr>
								<tr>
									<td>배송비</td>
									<td style="float: right;">0원</td>
								</tr>
								<tr>
									<td>후원금</td>
									<td style="float: right;">0원</td>
								</tr>
								<tr>
									<td>할인쿠폰</td>
									<td style="float: right;">0원</td>
								</tr>

							</table>
							<!-- end 주문!!!!!!!!!!!!!! -->
							<!-- 환불!!!!!!!!!!!!!! -->
							<table style="width: 25%; margin:10px; border: 1px #ABABAB solid; padding:1%;">
								<tr style="border-bottom: 1px #ABABAB solid; padding:1%;">
									<th colspan="1">전일 작품 활동 현황</th>
									<td style="float: right;">더보기</td>
								</tr>
								<tr>
									<td>작품금액</td>
									<td style="float: right;">0원</td>
								</tr>
								<tr>
									<td>배송비</td>
									<td style="float: right;">0원</td>
								</tr>
								<tr>
									<td>후원금</td>
									<td style="float: right;">0원</td>
								</tr>
								<tr>
									<td>할인쿠폰</td>
									<td style="float: right;">0원</td>
								</tr>

							</table>
							<!-- end 환불!!!!!!!!!!!!!! -->
						</div>
						<div style="display: flex; flex-direction: row;">
							<div style="width:50%; border: 1px #ABABAB solid; padding:1%; margin: 1%;">
								<div style="border-bottom:1px #ABABAB solid; padding:1%;">
									<span>
										매출 통계
									</span>
									<span>
										더보기
									</span>							
								</div>
								<div>
										<a href="#">
											<img style="width:100%" src="<c:url value='/resources/img/graph.PNG'/> ">
										</a>
								</div>
							</div>
							<div style="width: 50%; border: 1px #ABABAB solid; padding:1%; margin: 1%;">
								<div style="display: flex; flex-direction: row; justify-content: space-between; border-bottom:1px #ABABAB solid;">
									<span><strong>메세지</strong></span>
									<span style="float: right;">더보기</span>
								</div>
								<div>
									<span>아아</span>
									<span>아아</span>
								</div>
							</div>
						</div>
						<div style="display: flex; flex-direction: row;">
						<table style="width:50%; margin: 10px; border: 1px #ABABAB solid;">
								<tr style="border-bottom: 1px #ABABAB solid;">
									<th>작품</th>
									<td style="float: right;">바로가기</td>
								</tr>
								<tr>
									<td>판매 중 작품</td>
									<td style="float: right;">1건</td>
								</tr>
								<tr>
									<td>일시 중지 작품 </td>
									<td style="float: right;">5건</td>
								</tr>
						</table>
						<table style="width:50%; margin: 10px; border: 1px #ABABAB solid;">
								<tr style="border-bottom: 1px #ABABAB solid;">
									<th style="text-align: center;">공지사항</th>
								</tr>
								<tr>
									<td style="text-align: center;">내용</td>
								</tr>
						</table>
					</div>


				</div>

				<%@ include file="include/footer.jsp" %>
				<!-- end footer -->
				<!-- Scroll to Top Button-->
				<a class="scroll-to-top rounded" href="#page-top"> <i
					class="fas fa-angle-up"></i>
				</a>

				<script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/> "></script>
				<script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js' /> "></script>
				<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
				<script
					src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.14.3/xlsx.full.min.js"></script>

				<!-- Core plugin JavaScript-->
				<script src="<c:url value='/resources/vendor/jquery-easing/jquery.easing.min.js' /> "></script>

				<!-- Custom scripts for all pages-->
				<script src="<c:url value='/resources/js/sb-admin-2.min.js' /> "></script>

				<!-- Page level plugins -->
				<script src="<c:url value='/vendor/chart.js/Chart.min.js'/> "></script>

				<!-- Page level custom scripts -->
				<script src="<c:url value='/resources/js/demo/chart-area-demo.js' /> "></script>
				<script src="<c:url value='/resources/js/demo/chart-pie-demo.js' /> "></script>
			</div>
		</div>
	</div>
</div>
</body>
</html>