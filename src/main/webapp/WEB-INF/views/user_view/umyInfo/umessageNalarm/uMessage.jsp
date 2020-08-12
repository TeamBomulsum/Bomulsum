<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value='/resources/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet"
   type="text/css">
<meta charset="UTF-8">
<title>보물섬|메세지</title>
<script src="http://localhost:82/socket.io/socket.io.js"></script>
<script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>

<style type="text/css">
#wonTotal {
	padding: 1px;
	height: 750px;
}

#wonHeader {
	margin-left: 25%;
	margin-right: 50%;
	height: 100%;
	width: 50%;
	display: flex;
	flex-direction: row;
	
}
.wonHeaderDiv1{
	display: flex;
	flex-direction: row;
	width: 100%;
	height: 10%;
	justify-content: space-between;
	
}

#wonHp {
	font-size: 130%;
	width: 35%;
	text-align: center;
	font-weight:bold;
}
#wonHa {
	padding: 2%;
	font-size: 150%;
	width: 30%;

	}
#wonImg{
	padding: 15%;
	width: 50%;
	height: 50%;
	align-content: center;
}
.wonHeaderDiv2{
	height: 88%;
	width: 100%;
}
#wonMenu{
	height: 100%;
	width: 30%;
    border-right: 1px solid #d8d8d8;
}
#wonContent{
	display:none;
	height:100%;
	width: 70%
}
#wonContentImg{
	height:50px;
	width: 50px;
	border-radius: 50%;
}

#divButton:hover{
	background-color: blue;
}
#divButton{
	cursor:pointer;
}
.messageUserList{
	border: none;
	cursor: pointer;
	padding:3%; 
	display: flex; 
	flex-direction: row; 
	align-items: center; 
	border-color: white;
	border-bottom: 1px #D8D8D8 solid;
}

.messageUserList--selected{
	border: none;
	cursor: pointer;
	padding:3%; 
	display: flex; 
	flex-direction: row;
	background-color: #d9d9d9;
	align-items: center; 
	border-color: white;
	border-bottom: 1px #D8D8D8 solid;
}

.wonMessagebutton1{
	display: flex;
	border:none;
	cursor:pointer;
    padding: 15px;
}

.wonMessagebutton1:hover{
	background-color: #81BEF7;
}
.wonMessagebutton2{
	display: flex;
	border:none;
	cursor:pointer;
	justify-content: center;
}

.wonMessagebutton2:hover{
	background-color: #81BEF7;
}

.messageUserList:hover{
	background-color: #81BEF7;
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

.sendButton{
	width:15%; 
	height:100%;  
	margin:3%; 
	background-color: #FFFFFF;
	border: 1px solid #d9d9d9;
	cursor:pointer;
	padding:3%;
}

.sendButton:hover{
	background-color:#81BEF7;
}

.deleteButtonClicked a{
    font-size: 14px;
    border: 1px solid #d9d9d9;
    padding: 5px 10px;
    cursor:pointer;
}

.deleteButtonClicked a:hover{
    outline: none;
    background: #f5f5f5;
    border-color: #d9d9d9;
}

.deleteButtonClickedExit a{
	font-size: 14px;
    border: 1px solid #d9d9d9;
    padding: 5px 10px;
	margin-left:3px;
	color:white;
	background: #dd5850;
	cursor:pointer;
}

.deleteButtonClickedExit a:hover{
	background:#c74f48;
}

.dndud_content_change_head_div{
	display: none;
	flex-direction: row;
	width: 100%;
	height: 10%;
	justify-content: space-between;
	align-items: center; 
	border-bottom: 1px #D8D8D8 solid;
}

.dndud_content_change_head_div p{
	margin-left:15px;
	font-weight:bold;
	font-size:14px;
}

.dndud_content_change_main_div{
	display:none;
	flex-direction: column;
	padding:15px;
	height:86%;
	background-color:#f5f5f5;
}

.dndud_content_change_main_div span{
	font-size:16px;
	font-weight:bold;
}

.dndud_content_change_main_div div{
	margin-bottom:15px;
	margin-top:15px;
}

.div_writer{
	display:flex;
	flex-direction:row;
	font-size:14px;
	align-items: center;
	cursor:pointer;
}

.div_writer img{
	width:50px;
	height:50px;
	border-radius:50%;
	margin-right:20px;
}

.dndud_content_first_main_div{
	display:flex;
	flex-direction:column;
	align-items:center;
	justify-content:center;
	height:100%;
	width: 70%;
	background-color:#f5f5f5;
	z-index: -100;
}

.dndud_content_first_main_div div{
	display:flex;
	flex-direction:column;
	align-items:center;
	justify-content:center;
}

.dndud_content_first_main_div div img{
	width:150px;
	height:120px;
	border-radius: 50%;
	margin-bottom:15px;
}

.dndud_content_first_main_div div span{
	font-size:15px;
	color: #666;
	font-weight:bold;
}

.enable{
	background-color:white;
}

.enable:hover{
	background-color: #81BEF7;
}

.able{
	background-color:#d9d9d9;
}

</style>
</head>
<body>
<div>
	<c:if test="${empty member}">
		<script>
			alert('로그인이 필요한 서비스입니다.');
			location.href='<c:url value="/user/login.do"/>';
		</script>
	</c:if>
	<%@ include file="../../include/uHeader.jsp"  %>
	<div id="wonTotal">
		<div id="wonHeader" style="border-right: 1px #D8D8D8 solid; border-left: 1px #D8D8D8 solid;">
			<div id="wonMenu">
				<div class="wonHeaderDiv1" style="align-items: center; border-bottom: 1px #D8D8D8 solid;">
					<p id="wonHp" style="width:50%;text-align: left; padding-left:15px">메세지</p>
					<div style="display: flex; flex-direction: row; width: 70%; justify-content: center;">
						<div id="addWriter" class="wonMessagebutton1"><i class="fas fa-user-plus" style="margin: 3%;width: 30%; height: 50%;align-content: center;"></i></div>
						<div id="deleteChat" class="wonMessagebutton1"><i class="fas fa-cog" style="margin: 3%;width: 30%; height: 50%;align-content: center;"></i></div>
						<div id="rollback" class="deleteButtonClicked" style="display:none"><a>취소</a></div>
						<div id="decision" class="deleteButtonClickedExit" style="display:none"><a>나가기</a></div>
					</div>
				</div>
				<div style="overflow-y: auto; height:90%">
					<c:forEach items="${chatRoom}" var="chat">
						<div>
							<div class="messageUserList enable">
								<c:choose>
									<c:when test="${not empty chat.writerImg}">
										<img id="wonContentImg" src="<c:url value='/upload/${chat.writerImg}'/>">
									</c:when>
									<c:otherwise>
										<img id="wonContentImg" src="<c:url value='/resources/img/Logo_blue.png'/>">
									</c:otherwise>
								</c:choose>
								<div style="margin: 2%; font-size: 100%; display:flex; justify-content: space-between; width:165px">
									<span>${chat.writerName}</span>
									<input type="hidden" class="writerCode" value="${chat.writerCode}">
									<input type="checkbox" class="deleteCheck" style="display:none">
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<!-- 선택된 채팅방 없을경우. -->
			<div class="dndud_content_first_main_div">
				<div>
					<img src="<c:url value='/resources/img/messageNone.PNG'/> "/>
					<span>메시지를 선택해주세요.</span>
				</div>
			</div>
			<div id="wonContent">
				<div class="wonHeaderDiv1 dndud_content_head_div" style="align-items: center; border-bottom: 1px #D8D8D8 solid;">
					<div style="width: 30%; display: flex; flex-direction: row;">
						<p id="headInfoImg" style="display: flex; flex-direction: row; margin-left:5px;"><img src="<c:url value='/resources/img/test.png'/>" style="width:65px; height:65px; border-radius: 50%;"></p>
						<a id="headInfoId" style="width: 50%; align-self: center; font-size:13px; font-weight:bold">아이디</a>
						<input type="hidden" id="headInfoCode">
					</div>
					<div style="display: flex; flex-direction: row; width:60%; justify-content: flex-end;margin-right: 3%;">
						<button class="wonMessagebutton2" style="font-size: 12px;align-items: center;margin: 1%;padding: 3%;border: 1px solid #d9d9d9;color: red;background: white;">
							<i class="fas fa-heart" style="font-size:12px"></i>작가로 추가
						</button>
						<button id="exitButton" class="wonMessagebutton2" style="font-size:12px; align-items: center;margin: 1%;padding: 3%;border: 1px solid #d9d9d9;background: white;">나가기</button>
					</div>
				</div>
				<div class="dndud_content_change_head_div">
					<p>대화 상대를 선택해 주세요.</p>
				</div>
				<div class="wonHeaderDiv2 dndud_content_main_div" style="margin-right: 1%;">
						<div style="background-color:#c8bddd; height:80%; margin: 2%; overflow-y:scroll; display: flex; flex-direction: column; justify-content: flex-end;"id="wonMessageScroll">
						<!-- <div id="listP"> -->
	                       <!-- 메세지 영역 -->
	                       <div id="wonMessageList" style="width:100%; height:100%; flex-direction:column; justify-content:flex-end"></div>
						<!-- </div> -->
						
					</div>
					<div style="display: flex; flex-direction: row;">
						<div style="margin: 3%; width:15%; display:flex; justify-content:center"><i class="fas fa-keyboard fa-2x" style="margin-left: 5%;"></i></div>
						<textarea id="wonMessageContent" style="width:60%; height: 103px; resize: none; border-color: white;"></textarea>
						<button class="sendButton" id="wonMessageButton">전송</button>
					</div>
				</div>
				<div class="dndud_content_change_main_div">
					<div class="recently_buy">
						<span>최근 구매한 작품의 작가</span>
						<div class="div_writer">
							<img src="<c:url value='/resources/img/KMWnoReviewMe.png'/>">
							<a>애잔</a>
						</div>
					</div>
					<div class="likeWriter">
						<span>좋아하는 작가</span>
						<div class="div_writer">
							<img src="<c:url value='/resources/img/KMWnoReviewMe.png'/>">
							<a>321팩토리321factory</a>
						</div>
					</div>
				</div>
								
			</div>
		
		
	</div>	
</div>	

	
	<%@ include file="../../include/uFooter.jsp" %>
</div>
<script>
var dd = document.getElementById('wonMessageContent');
var isScrollUp = false;
var lastScrollTop;
var unreadCnt = 0;

$(function(){
	$(document).ready(function(){
		var vo;
		$.ajax({
			url:"/bomulsum/user/message/data.do",
			dataType: "json",
		}).done(function(data){
			vo = data;
			console.log(vo);
			socket.emit('first_connect', vo);
		});
		
		
		
		var socket = io("http://localhost:82");
		var code = '<%= (String)session.getAttribute("member") %>';
		var member = '<%= (String)session.getAttribute("userName") %>';
		var receiveCode;
		
		// ajax 동기식으로 디비값을 끌어와서.
		
		
		socket.on(code, function(msg){
			console.log("받는 로직 : " + msg);
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
				'justify-content: flex-start;align-items: center;margin: 15px;');
			
			dayTag.setAttribute('style','font-size: 60%; padding: 1%; align-self: flex-end;');
			Tag.appendChild(tag);
			dTag.appendChild(Tag);
			dTag.appendChild(dayTag);
			document.getElementById('wonMessageList').appendChild(dTag);
			
			
			// ajax로 디비 연결해서 저장.
			
			
			$("#wonMessageScroll").scrollTop($("#wonMessageScroll")[0].scrollHeight);

		});
	   
		$('#wonMessageButton').click(function() {
			let today = new Date();
			
			let year = today.getFullYear(); // 년도
			let month = today.getMonth() + 1; // 월
			let date = today.getDate(); // 날짜
			let hours = today.getHours(); // 시
			let minutes = today.getMinutes(); // 분
			var message = document.getElementById('wonMessageContent').value;
			
			let day = month + '월' + date + "일  " + hours + ":" + minutes;
			
			var dTag = document.createElement("div");
			var Tag = document.createElement("div");
			var tag = document.createElement('span');
			let dayTag = document.createElement('span');
			
			
			
			
			if ($('#wonMessageContent').val() == '') {
				alert('메세지를 입력해주세요');
			} else {
				dayTag.innerHTML = day;
				tag.innerHTML = message.replace(/\n/gi, '<br>');
				Tag.setAttribute('style','padding: 10px 15px; background-color: #f5eacc;' +
					'border-radius: 15px 0 15px 15px; font-size: 14px;max-width: 50%;');
				dTag.setAttribute('style', 'padding: 1%; display:flex;flex-direction:row;' +
					'justify-content: flex-end;align-items: center;margin: 15px;');
				
				dayTag.setAttribute('style','font-size: 60%; padding: 1%; align-self: flex-end;');
				Tag.appendChild(tag);
				dTag.appendChild(dayTag);
				dTag.appendChild(Tag);
				document.getElementById('wonMessageList').appendChild(dTag);
				
				// 보내는 사람 아이디, 코드
				var sendToId = $("#headInfoId").text();
				var sendToCode = $("#headInfoCode").val();
				console.log("id : " + sendToId);
				console.log("code : " + sendToCode);
				
				socket.emit("send_to_writer", sendToCode + "*|*" + sendToId + "*|*" + code + "*|*" + member + "*|*" + message + "*|*" + today);
				
				$('#wonMessageContent').val("");
			}
			$("#wonMessageScroll").scrollTop($("#wonMessageScroll")[0].scrollHeight);
		});
		
		$('#wonMessageContent').keydown(function(key) {
			if (key.which == 13) {
				if (!event.shiftKey) {
					$('#wonMessageButton').click();
					return false;
				}
			}
			/* $('#wonMessageScroll').scrollTop(1E10); */
		});

	});
	
	
	function f_initListClickEvent(){
		
		$(".messageUserList").on('click', function(){ // 왼쪽 리스트 클릭 했을 경우.
			
			$(".dndud_content_first_main_div").css("display","none");
			$(".dndud_content_head_div").css("display", "flex");
			$(".dndud_content_main_div").css("display", "block");
			$(".dndud_content_change_head_div").css("display","none");
			$(".dndud_content_change_main_div").css("display","none");
			$("#wonContent").css("display","block");
			var imgSrc = $(this).children('img').attr('src');
			var writerName = $(this).children('div').children('span').text();
			var code = $(this).children('div').children('input[type=hidden]').val();
			console.log(imgSrc);
			console.log(writerName);
			console.log(code);
			$("#headInfoImg").children('img').attr('src',imgSrc);
			$("#headInfoCode").val(code);
			$("#headInfoId").text(writerName);
			receiveCode = $("#headInfoCode").val();
			console.log(receiveCode);
			/* $(".messageUserList").css("background-color", "white");
			$(this).css("background-color", "#d9d9d9");  */
			
			$('.messageUserList').removeClass('able');
			$('.messageUserList').addClass('enable');
			$(this).removeClass('enable');
			$(this).addClass('able');
			
		});
	}
	
	function f_offListClickEvent(){
		$(".messageUserList").off("click");
	}
	
	f_initListClickEvent();
	
	
	// 채팅방 나갈때 모달창, 띄워주는 함수 필요.
	
	
	$("#addWriter").on('click', function(){ // 작가 추가 버튼 클릭
		$(".dndud_content_first_main_div").css("display","none");
		$("#wonContent").css("display","block");
		$(".dndud_content_head_div").css("display", "none");
		$(".dndud_content_main_div").css("display", "none");
		$(".dndud_content_change_head_div").css("display","flex");
		$(".dndud_content_change_main_div").css("display","flex");
	});
	
	$("#deleteChat").on('click', function(){ // 톱니바퀴 클릭시
		$(".wonMessagebutton1").css("display", "none");
		$(".deleteButtonClicked").css("display","flex");
		$(".deleteButtonClickedExit").css("display","flex");
		$(".deleteCheck").css("display", "block");
		f_offListClickEvent();
	});
	
	$("#rollback").on('click', function(){ // 취소 버튼 <톱니바퀴>
		$(".wonMessagebutton1").css("display", "flex");
		$(".deleteButtonClicked").css("display","none");
		$(".deleteButtonClickedExit").css("display","none");
		$(".deleteCheck").css("display", "none");
		f_initListClickEvent();
	});
	
	$("#decision").on('click', function(){ // 나가기 버튼 <톱니바퀴>
		
	});
	
	
	
	
	
});
</script>
</body>
</html>