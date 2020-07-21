<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>알림</title>
<link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="../css/sb-admin-2.min.css" rel="stylesheet">
<!-- CSS 영역 -->
<style>
.alarmContainer {
	width: 90%;
	margin-left: 2%;
}

.topLine {
	height: 40px;
}

.button {
	background-color: white;
	color: black;
	border: 1px solid #008CBA;
	text-align: center;
	padding: 2%, 2%;
}

.registerButton {
	float: right;
}

.textTitle {
	float: left;
}

.alarmTitle {
	float: center;
}

.table {
	margin-top: 10px;
	text-align: center;
	vertical-align:middle;
	text-valign: middle;
	width: 100%;
	table-layout: fixed;
}

.table td{
	margin-top: 10px;
	text-align: center;
	vertical-align:middle;
	text-valign: middle;
	font-size:13px
	
}

.alignLeft {
	float: left;
}

.alignRight {
	float: right;
}

.formAction {
	float: right;
}

form {
	display: inline;
}

.paging {
	margin-top: 20px;
	text-align: center;
	margin-bottom: 100px;
}

.paging a {
	display: inline-block;
	margin: 0 3px;
	text-decoration: none;
	padding: 5px 10px;
	border: 1px solid #ccc;
	color: #999999;
	background-color: #fff;
}

.arrow prev {
	border: 0px;
}

.arrow next {
	border: 0px;
}

.modal-body-top{
	display: inline-block;
	height: 15%;
	width: 90%;
	margin: 5% auto;
}

</style>
</head>
<!-- body 시작 -->
<body id="page-top">
	<div id="wrapper">
		<!-- Header/Nav -->
	<%@ include file="/view/include/side.jsp" %>
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<%@ include file="/view/include/head.jsp" %>
				<!-- end Header/Nav -->
				<!-- 구매 후기 영역 -->
				<div class="alarmContainer">
					<!-- topLine -->
					<div class="topLine" style="width:100%;">
						<div class="textTitle" style="width:70%; float:reft;">
							<h4>알림</h4>
						</div>
						<div style="width:30%; float:right;">
							<div style="width:35%; float:left; margin-left:5%;">
								<a onClick="window.location.reload()" style="cursor: pointer;"><div class="button">새로고침</div></a>
							</div>
							<div style="float:right; margin-left:5%;">
								<button type="button" class="button dropdown-toggle" data-toggle="dropdown">
										<i class="fa fa-cog fa-fw"></i>
										앱 알림 설정
									</button>
										<!-- 알림 아이콘 메뉴창 -->
										<!-- <form> 나중에 여기다가 체크한거 푸시 알림 설정 값 넘겨줘야 함. -->
									<form id="alarmCheck" action="post">
										<ul class="dropdown-menu shadow">
													<!--  
													<h5 class="dropdown-header">앱 알림 설정(푸시)</h5>
													<hr>
													-->
													<li><a class="dropdown-item d-flex align-items-center samll" tabIndex="-1" data-value="option1"><input type="checkbox" />메시지가 올 때</a></li>
													<hr>
													<li><a class="dropdown-item d-flex align-items-center samll" tabIndex="-1" data-value="option2"><input type="checkbox" />&nbsp;댓글이 달릴 때</a></li>
													<hr>
													<li><a class="dropdown-item d-flex align-items-center samll" tabIndex="-1" data-value="option3"><input type="checkbox" />&nbsp;주문 받을 때</a></li>
													<hr>
													<li><a class="dropdown-item d-flex align-items-center samll" tabIndex="-1" data-value="option4"><input type="checkbox" />&nbsp;작품이 매진 되었을 때</a></li>
													<hr>
													<li style="text-align:center;">
														<input type="submit" class="button save" value="확인">
      												</li>
											</ul>
									</form>
							</div>
						</div>
					</div>
					<!-- end of topLine -->
					<hr>
					<div class="middleLine"> 
							<div class="formAction" style="float:right;">
								<form action="#" class="show_number">
									<select name="show" id="show_id">
										<option value="showten">10개씩 보기</option>
										<option value="showthirty">30개씩 보기</option>
										<option value="showfifty">50개씩 보기</option>
									</select>
								</form>
							</div>
					</div>
					<!-- middleLine -->
					<br>
					
					<!-- 테이블 시작 -->
					<div class="table">
						<table id="alarmTable" style="width:100%;">
							<thead>
								<tr>
									<th style="width:15%;">발신자</th>
									<th style="width:15%;">일자</th>
									<th style="width:70%;">내용</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>아이디어스</td>
									<td>2019년 4월 25일</td>
									<td><a href="#">작가님 추천 광고 입찰이 시작되었습니다작가님 추천 광고 입찰이 시작되었습니다작가님 추천 광고 입찰이 시작되었습니다작가님 추천 광고 입찰이 시작되었습니다작가님 추천 광고 입찰이 시작되었습니다작가님 추천 광고 입찰이 시작되었습니다작가님 추천 광고 입찰이 시작되었습니다작가님 추천 광고 입찰이 시작되었습니다작가님 추천 광고 입찰이 시작되었습니다작가님 추천 광고 입찰이 시작되었습니다</a></td>								
								</tr>
								<tr>
									<td>아이디어스</td>
									<td>2019년 4월 25일</td>
									<td><a href="#">작가님 추천 광고 입찰이 시작되었습니다</a></td>								
								</tr>
							</tbody>
						</table>
					</div>
					<!-- 테이블 끝 -->

					<!-- 페이징 처리 -->
					<div class="paging">
						<a class="arrow prev" href="#">이전</a><a href="#">1</a><a class="arrow next" href="#">다음</a>
					</div>
				</div>
				
				<!-- 모달 내용 부분 -->

				<!-- end of Container -->
				<%@ include file="/view/include/footer.jsp" %>
				<!-- end footer -->

				<!-- Scroll to Top Button-->
				<a class="scroll-to-top rounded" href="#page-top"> <i
					class="fas fa-angle-up"></i>
				</a>

				<script src="../vendor/jquery/jquery.min.js"></script>
				<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

				<!-- Core plugin JavaScript-->
				<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

				<!-- Custom scripts for all pages-->
				<script src="../js/sb-admin-2.min.js"></script>

			</div>
			<!-- end of content -->
		</div>
	</div>
</body>
</html>