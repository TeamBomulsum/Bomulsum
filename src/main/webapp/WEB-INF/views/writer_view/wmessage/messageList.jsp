<%@page import="com.web.bomulsum.writer.login.repository.WriterRegisterVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
<script src="http://localhost:82/socket.io/socket.io.js"></script>

<style>
.dndud_writer_message_who_text {
	max-width: 300px;
	overflow: hidden;
	display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 1;
	text-overflow: ellipsis;
}

::-webkit-scrollbar {
  width: 6px;
}
::-webkit-scrollbar-track {
  background-color: transparent;
}
::-webkit-scrollbar-thumb {
  border-radius: 3px;
  background-color: gray;
}
::-webkit-scrollbar-button {
  width: 0;
  height: 0;
}
</style>

<script type="text/javascript">
	var dd = document.getElementById('messageContent');
	var isScrollUp = false;
	var lastScrollTop;
	var unreadCnt = 0;
	var code;
	var writer;
	
	$(document).ready(function(){
		
		var socket = io("http://localhost:82");
		<%
			WriterRegisterVO vo = (WriterRegisterVO)session.getAttribute("writer_login");
		%>
		code = '<%= vo.getWriterSeq() %>';
		writer = '<%= vo.getWriterName() %>';
		console.log(code);
		
		socket.on(code, function(msg){
			var msgArray = msg.split('*|*');
			var msgDate = msgArray[1];
			let today = new Date(msgDate);
			let year = today.getFullYear(); // 년도
			let month = today.getMonth() + 1; // 월
			let date = today.getDate(); // 날짜
			let hours = today.getHours(); // 시
			let minutes = today.getMinutes(); // 분
			let day = month + '월' + date + "일  " + hours + ":" + minutes;
			
			var dTag = document.createElement("div");
			var Tag = document.createElement("div");
			var tag = document.createElement('span');
			let dayTag = document.createElement('span');
			
			
			
			dayTag.innerHTML = day;
			tag.innerHTML = msgArray[0].replace(/\n/gi, '<br>');
			Tag.setAttribute('style','padding: 10px 15px; background-color: #d6e5c8;'+
				'border-radius: 0 15px 15px 15px; font-size: 14px;max-width: 50%;');
			dTag.setAttribute('style', 'padding: 1%; display:flex;flex-direction:row;'+
				'justify-content: flex-start;align-items: center;');
			
			dayTag.setAttribute('style','font-size: 60%; padding: 1%; align-self: flex-end;');
			Tag.appendChild(tag);
			dTag.appendChild(Tag);
			dTag.appendChild(dayTag);
			document.getElementById('listP').appendChild(dTag);
			
			
			// ajax로 디비 연결해서 저장.
			
			
			var objDiv = document.getElementById("listP");
			objDiv.scrollTop = objDiv.scrollHeight;
		});
	
		$(function() {
			$('#input').click(function() {
				
				let today = new Date();
				let year = today.getFullYear(); // 년도
				let month = today.getMonth() + 1; // 월
				let date = today.getDate(); // 날짜
				let hours = today.getHours(); // 시
				let minutes = today.getMinutes(); // 분
				
				var message = document
						.getElementById('messageContent').value;
				let day = month + '월' + date + "일 " + hours + ":" + minutes;
				console.log(day);
				
				var dTag = document.createElement("div");
				var Tag = document.createElement("div");
				var tag = document.createElement('span');
				let dayTag = document.createElement('span');
				
				
				if ($('#messageContent').val() == '') {
					alert('메세지를 입력해주세요');
				} else {
					dayTag.innerHTML = day;
					tag.innerHTML = message.replace(/\n/gi, '<br>');
					Tag.setAttribute('style','padding: 10px 15px; background-color: #f5eacc;' +
						'border-radius: 15px 0 15px 15px; font-size: 14px;max-width: 50%;');
					dTag.setAttribute('style', 'padding: 1%; display:flex;flex-direction:row;' +
						'justify-content: flex-end;align-items: center;');
				
					dayTag.setAttribute('style','font-size: 60%; padding: 1%; align-self: flex-end;');
					Tag.appendChild(tag);
					dTag.appendChild(dayTag);
					dTag.appendChild(Tag);
					
					var sendToCode = 'member_code_sq55';
					var sendToId = '최우영';
					
					socket.emit('send_to_writer', sendToCode + "*|*" + sendToId + "*|*" + code + "*|*" + writer + "*|*" + message + "*|*" + today);
					
					document.getElementById('listP').appendChild(dTag);
					$('#messageContent').val("");
				}
				
				
				var objDiv = document.getElementById("listP");
				objDiv.scrollTop = objDiv.scrollHeight;
			});
			
			$('#messageContent').keydown(function(key) {
				if (key.which == 13) {
					if (!event.shiftKey) {
	
						$('#input').click();
						return false;
					}
				}
				var objDiv = document.getElementById("listP");
				objDiv.scrollTop = objDiv.scrollHeight;
			});
	
			//받는 메세지
			$('#test').click(function() {
				let day = month + '/' + date + "/" + hours + ":"
						+ minutes;
				console.log(day);
				let dayTag = document.createElement('span');
				var message = document.getElementById('sendTest').value;
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
					dTag.setAttribute('style',
							'padding: 1%; width: 100%;');
					dTag.appendChild(tag);
					document.getElementById('listP').appendChild(
							dTag).append(dayTag);
					$('#sendTest').val("");
				}
	
			});
	
		});
	});
</script>


<meta charset="UTF-8">
<title>메세지리스트</title>
<link
	href="<c:url value='/resources/vendor/fontawesome-free/css/all.min.css'/>"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="<c:url value='/resources/css/sb-admin-2.min.css'/>"
	rel="stylesheet">
</head>
<body id="page-top">
	<div id="wrapper">
		<!-- Header/Nav -->
		<%@ include file="../include/side.jsp"%>
		<div id="content-wrapper" class="d-flex flex-column">
			<%@ include file="../include/head.jsp"%>
			<!-- end Header/Nav -->
			<div id="content">






				<div style="display: flex; flex-direction: row; height: 750px;">
					<div
						style="width: 30%; border-right: 1px black solid; padding: 1%;">
						<div
							style="display: flex; flex-direction: row; width: 100%; align-items: center;">
							<!-- 메세지 / 설정 -->
							<p style="margin: 0">메세지</p>
							<input style="margin-left: 50%; width: 18%; font-size: 100%;" type="submit" value="추가"> 
							<input style="margin-left: 4%; width: 18%; font-size: 100%;" type="submit" value="나가기">
						</div>
						<hr>
						<!-- ======================== -->
						<div style="overflow-y: auto; height: 640px;">
							<!-- 한 명 시작 -->
							<c:forEach begin="1" end="12">
								<div style="display: flex; flex-direction: row; height: 100px;">
									<!--for문자리-->
									<!-- 메세지 리스트 -->
									<div style="width: 30%; display: flex;" id="messageList">
										<!-- 사용자 정보 시작 -->
										<div>
											<input type="checkbox"> <input type="hidden"
												value="member_code">
										</div>
										<!-- 이미지 -->
										<a><img style="width: 90px; height: 90px;" name="uProfile"
											src="<c:url value='/resources/img/test.png'/>"></a>
									</div>
									<div>
										<div class="dndud_writer_message_who_text">
											<a>조원희ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd</a>
										</div>
										<hr>
										<div class="dndud_writer_message_who_text">
											<a>안녕dd ddd ddddd dddddd ddddddd dd dddddddddd dddddddd
												dddddd dddddddd dddddddddddddddddddddddddddddd</a>
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

						<div
							style="width: 100%; height: 620px; background-color: white; border: 1px black solid;"
							id="scroll">
							<div id="listP"
								style="height: 100%; overflow-y: auto; display: flex; flex-direction: column;">
								<!-- 메세지 영역 -->

							</div>
						</div>
						<hr>
						<div
							style="display: flex; flex-direction: row; justify-content: space-between;">
							<textarea rows="3%" cols="120%" id="messageContent"
								style="resize: none"></textarea>
							<input style="width: 10%;" type="submit" value="입력" id="input">
						</div>
					</div>

				</div>




















				<%@ include file="../include/footer.jsp"%>
				<!-- end footer -->
				<!-- Scroll to Top Button-->
				<a class="scroll-to-top rounded" href="#page-top"> <i
					class="fas fa-angle-up"></i>
				</a>

				<script
					src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
				<script
					src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

				<!-- Core plugin JavaScript-->
				<script
					src="<c:url value='/resources/vendor/jquery-easing/jquery.easing.min.js'/>"></script>

			</div>
		</div>
	</div>
</body>
</html>