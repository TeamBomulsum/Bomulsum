<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="${pageContext.request.contextPath }/resources/vendor/jquery/jquery.min.js"></script>


<script type="text/javascript">
	var dd = document.getElementById('messageContent');
	var isScrollUp = false;
	var lastScrollTop;
	var unreadCnt = 0;
	let today = new Date();

	let year = today.getFullYear(); // 년도
	let month = today.getMonth() + 1; // 월
	let date = today.getDate(); // 날짜
	let hours = today.getHours(); // 시
	let minutes = today.getMinutes(); // 분

	$(function() {
		$('#input').click(
						function() {
							var message = document
									.getElementById('messageContent').value;

							let day = month + '/' + date + "/" + hours + ":"
									+ minutes;
							console.log(day);

							var dTag = document.createElement("div");
							var tag = document.createElement('span');
							let dayTag = document.createElement('span');

							var x = $('#scroll');

							if ($('#messageContent').val() == '') {
								alert('메세지를 입력해주세요');
							} else {
								dayTag.innerHTML = day;
								tag.innerHTML = message.replace(/\n/gi, '<br>');
								tag.setAttribute('style',
										'background-color: #e5f3ff');
								dTag.setAttribute('style', 'padding: 1%');
								dayTag.setAttribute('style',
										'font-size: 60%; padding: 1%');
								console.log(tag.innerHTML);
								dTag.appendChild(tag);
								document.getElementById('list').appendChild(
										dTag).appendChild(dayTag);
								$('#messageContent').val("");
							}
							$('#scroll').scrollTop(1E10);

						});
		$('#messageContent').keydown(function(key) {
			if (key.which == 13) {
				if (!event.shiftKey) {

					$('#input').click();
					return false;
				}
			}
			/*else if(key.shiftKey){
				if(key.which == 13){
				var str = document.querySelector('#messageContent');
				console.log(str)
				alert('성공!');
				}
			}*/
			$('#scroll').scrollTop(1E10);
		});

		//받는 메세지
		$('#test').click(function() {
							let day = month + '/' + date + "/" + hours + ":"
									+ minutes;
							console.log(day);
							let dayTag = document.createElement('span');

							var message = document.getElementById('sendTest').value;
							/* console.log(message); */

							var dTag = document.createElement("div");
							var tag = document.createElement('span');
							if ($('#sendTest').val() == '') {
								alert('메세지를 입력해주세요');
							} else {
								dayTag.innerHTML = day;
								tag.innerHTML = message.replace(/\n/gi, '<br>');
								console.log(tag.innerHTML);
								dayTag.setAttribute('style',
										'font-size: 60%; padding: 1%');
								tag.setAttribute('style',
										'background-color: #f9f3a9;');
								dTag
										.setAttribute('style',
												'padding: 1%; width: 100%; text-align:right;');
								dTag.appendChild(tag);
								document.getElementById('list').appendChild(
										dTag).append(dayTag);
								$('#sendTest').val("");
							}
							$('#scroll').scrollTop(1E10);

						});

	});
	function remove() {
		alert("삭제하시겠습니까?");
	}
</script>


<meta charset="UTF-8">
<title>메세지리스트</title>
<link href="${pageContext.request.contextPath }/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="${pageContext.request.contextPath }/resources/css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body id="page-top">
	<div id="wrapper">
		<!-- Header/Nav -->
		<%@ include file="/view/include/side.jsp" %>
		<div id="content-wrapper" class="d-flex flex-column">
			<%@ include file="/view/include/head.jsp" %>
			<!-- end Header/Nav -->
			<div id="content">






				<div style="display: flex; flex-direction: row; height: 750px;">
					<div
						style="width: 30%; border-right: 1px black solid; padding: 1%;">
						<div style="display: flex; flex-direction: row; width: 100%;">
							<!-- 메세지 / 설정 -->
							<p>메세지</p>
							<input style="margin-left: 65%; width: 15%; font-size: 100%;"
								type="submit" value="삭제" onclick="remove()">
						</div>
						<hr>
						<!-- ======================== -->
						<div style="overflow: scroll; height: 90%">
							<!-- 한 명 시작 -->
							<c:forEach begin="1" end="12">
								<div style="display: flex; flex-direction: row;">
									<!--for문자리-->
									<!-- 메세지 리스트 -->
									<div style="width: 30%;" id="messageList">
										<!-- 사용자 정보 시작 -->
										<div>
											<input type="checkbox">
										</div>
										<!-- 이미지 -->
										<a href=""><img style="width: 100%" name="uProfile"
											src="../img/test.png "></a>
									</div>
									<div>
										<div>
											<a href="">조원희</a>
										</div>
										<hr>
										<div>
											<a href="">안녕</a>
										</div>
										<!--  사용자 정보 끝 -->
									</div>
								</div>
								<hr>
							</c:forEach>
							<!--for문끝-->
						</div>
						<!-- overflow 끝 -->
						<!-- 한명 끝 -->


					</div>
					<hr>



					<div
						style="width: 70%; padding: 1%; display: flex; flex-direction: column;">
						<div style="display: flex; flex-direction: row;">
							대화상대 검색&nbsp;&nbsp;<input type="text"><input
								type="submit" value="검색">
						</div>
						<hr>

						sender 테스트 영역
						<p style="display: flex; flex-direction: row;">
							<input id="sendTest" type="text" style="position: fixed;">
							<input style="margin-left: 65%; width: 15%; font-size: 100%;"
								type="submit" value="삭제" id="test">
						</p>

						<hr>
						<div
							style="width: 100%; height: 430px; background-color: white; overflow: auto; display: flex; flex-direction: column; justify-content: flex-end; border: 1px black solid;"
							id="scroll">
							<div id="listP">
								<!-- 메세지 영역 -->
								<div id="list"></div>
							</div>
						</div>
						<hr>
						<div style="display: flex; flex-direction: row;">
							<textarea rows="7%" cols="120%" id="messageContent"></textarea>
							<input style="width: 10%;" type="submit" value="입력" id="input">
						</div>
					</div>

				</div>




















				<%@ include file="/view/include/footer.jsp" %>
				<!-- end footer -->
				<!-- Scroll to Top Button-->
				<a class="scroll-to-top rounded" href="#page-top"> <i
					class="fas fa-angle-up"></i>
				</a>

				<script src="${pageContext.request.contextPath }/resources/vendor/jquery/jquery.min.js"></script>
				<script src="${pageContext.request.contextPath }/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

				<!-- Core plugin JavaScript-->
				<script src="${pageContext.request.contextPath }/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

			</div>
		</div>
	</div>
</body>
</html>