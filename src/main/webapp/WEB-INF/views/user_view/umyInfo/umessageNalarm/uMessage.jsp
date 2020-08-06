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
<script type="text/javascript">
var dd = document.getElementById('wonMessageContent');
var isScrollUp = false;
var lastScrollTop;
var unreadCnt = 0;


$(function() {
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
		var session = '<%= (String)session.getAttribute("member") %>';
		var member = '<%= (String)session.getAttribute("userName") %>';
		
		socket.on('send_msg_spring_toB', function(msg){
			console.log(msg + " 통신 ");
			let today = new Date();
			
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
			tag.innerHTML = msg.replace(/\n/gi, '<br>');
			Tag.setAttribute('style','padding: 10px 15px; background-color: #d6e5c8;'+
				'border-radius: 0 15px 15px 15px; font-size: 14px;');
			dTag.setAttribute('style', 'padding: 1%; display:flex;flex-direction:row;'+
				'justify-content: flex-start;align-items: center;margin: 15px;');
			
			dayTag.setAttribute('style','font-size: 60%; padding: 1%; align-self: flex-end;');
			Tag.appendChild(tag);
			dTag.appendChild(Tag);
			dTag.appendChild(dayTag);
			document.getElementById('wonMessageList').appendChild(dTag);
			
			/* $('#wonMessageScroll').scrollTop(1E10); */
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
			
			/* var x = $('#wonMessageScroll'); */
			
			if ($('#wonMessageContent').val() == '') {
				alert('메세지를 입력해주세요');
			} else {
				dayTag.innerHTML = day;
				tag.innerHTML = message.replace(/\n/gi, '<br>');
				Tag.setAttribute('style','padding: 10px 15px; background-color: #f5eacc;' +
					'border-radius: 15px 0 15px 15px; font-size: 14px;');
				dTag.setAttribute('style', 'padding: 1%; display:flex;flex-direction:row;' +
					'justify-content: flex-end;align-items: center;margin: 15px;');
				
				dayTag.setAttribute('style','font-size: 60%; padding: 1%; align-self: flex-end;');
				Tag.appendChild(tag);
				dTag.appendChild(dayTag);
				dTag.appendChild(Tag);
				document.getElementById('wonMessageList').appendChild(dTag);
				socket.emit(session, member+ " : " + message);
				$('#wonMessageContent').val("");
			}
			/* $('#wonMessageScroll').scrollTop(1E10); */
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

});
  
</script>
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
#wonHeaderDiv1{
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
#wonHeaderDiv2{
	height: 88%;
	width: 100%;
}
#wonMenu{
	height: 100%;
	width: 30%;
    border-right: 1px solid #d8d8d8;
}
#wonContent{
	height:100%;
	width: 70%
}
#wonContentImg{
	height:50px;
	width: 50px;
}

#divButton:hover{
	background-color: blue;
}
#divButton{
	cursor:pointer;
}
.wonMessagebutton{
	border: none;
	cursor: pointer;
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

.wonMessagebutton:hover{

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

</style>
</head>
<body>
<div>
	<%@ include file="../../include/uHeader.jsp"  %>
	<div id="wonTotal">
		<div id="wonHeader" style="border-right: 1px #D8D8D8 solid; border-left: 1px #D8D8D8 solid;">
			<div id="wonMenu">
				<div id="wonHeaderDiv1" style="align-items: center; border-bottom: 1px #D8D8D8 solid;">
					<p id="wonHp" style="width:50%;text-align: left; padding-left:15px">메세지</p>
					<div style="display: flex; flex-direction: row; width: 50%; justify-content: center;">
						<div class="wonMessagebutton1"><i class="fas fa-user-plus" style="margin: 3%;width: 30%; height: 50%;align-content: center;"></i></div>
						<div class="wonMessagebutton1"><i class="fas fa-cog" style="margin: 3%;width: 30%; height: 50%;align-content: center;"></i></div>
					</div>
				</div>
				<div id="wonHeaderDiv2">
					<div id="wonAccountView" class="wonMessagebutton" style="margin:3%; display: flex; flex-direction: row; align-items: center; border-color: white;">
						<img id="wonContentImg" src="<c:url value='/resources/img/MainLogo.png'/>">
						<div style="margin: 2%; font-size: 100%;">보물섬</div>
					</div>
				</div>
			</div>
			<div id="wonContent">
				<div id="wonHeaderDiv1" style="align-items: center; border-bottom: 1px #D8D8D8 solid;">
					<div style="width: 30%; display: flex; flex-direction: row;">
					<p style="width: 50%;display: flex; flex-direction: row;"><img src="<c:url value='/resources/img/test.png'/>" style="width:50px; height:50px"></p>
					<p style="width: 50%; align-self: center;">아이디</p>
					</div>
					<div style="display: flex; flex-direction: row; width:50%;">
					<button class="wonMessagebutton2" style="width: 50%; height: 35%; align-self: center; text-align: center; margin:1%; border-color:white; ">작가로 추천</button>
					<button id="exitButton" class="wonMessagebutton2"style="width: 30%; height: 35%; align-self: center; text-align: center; margin:1%; border-color:white;">나가기</button>
					</div>
				</div>
				<div id="wonHeaderDiv2" style="margin-right: 1%;">
						<div style="background-color:#c8bddd; height:80%; margin: 2%; overflow-y:scroll; display: flex; flex-direction: column; justify-content: flex-end;"id="wonMessageScroll">
						<!-- <div id="listP"> -->
	                       <!-- 메세지 영역 -->
	                       <div id="wonMessageList" style="width:100%; height:100%; display:flex; flex-direction:column; justify-content:flex-end"></div>
						<!-- </div> -->
						
					</div>
					<div style="display: flex; flex-direction: row;">
						<div style="margin: 3%; width:15%; display:flex; justify-content:center"><i class="fas fa-keyboard fa-2x" style="margin-left: 5%;"></i></div>
						<textarea id="wonMessageContent" style="width:60%; height: 103px; resize: none; border-color: white;"></textarea>
						<button class="sendButton" id="wonMessageButton">전송</button>
					</div>
				</div>
				
				
			</div>
		
		
	</div>	
</div>	


	
	<%@ include file="../../include/uFooter.jsp" %>
</div>
</body>
</html>