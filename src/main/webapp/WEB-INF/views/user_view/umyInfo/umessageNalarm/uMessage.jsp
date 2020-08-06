<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value='/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet"
   type="text/css">
<meta charset="UTF-8">
<title>보물섬|메세지</title>
<script src="http://localhost:82/socket.io/socket.io.js"></script>
<script src="<c:url value='/vendor/jquery/jquery.min.js'/>"></script>
<script type="text/javascript">
   var dd = document.getElementById('wonMessageContent');
   var isScrollUp = false;
   var lastScrollTop;
   var unreadCnt = 0;
   
$(function() {
	
	$(document).ready(function(){
		var socket = io("http://localhost:82");
	   
		$('#wonMessageButton').click(function() {
			let today = new Date();
			
			let year = today.getFullYear(); // 년도
			let month = today.getMonth() + 1; // 월
			let date = today.getDate(); // 날짜
			let hours = today.getHours(); // 시
			let minutes = today.getMinutes(); // 분
			var message = document.getElementById('wonMessageContent').value;
			
			let day = month + '/' + date + "/" + hours + ":"
			      + minutes;
			console.log(message);
			
			var dTag = document.createElement("div");
			var tag = document.createElement('span');
			let dayTag = document.createElement('span');
			
			var x = $('#wonMessageScroll');
			
			if ($('#wonMessageContent').val() == '') {
				alert('메세지를 입력해주세요');
			} else {
				dayTag.innerHTML = day;
				tag.innerHTML = message.replace(/\n/gi, '<br>');
				tag.setAttribute('style','background-color: #e5f3ff');
				dTag.setAttribute('style', 'padding: 1%');
				dayTag.setAttribute('style','font-size: 60%; padding: 1%');
				console.log(tag.innerHTML);
				dTag.appendChild(tag);
				document.getElementById('wonMessageList').appendChild(dTag).appendChild(dayTag);
				socket.emit('bomulsum_msg', "클라 전송 : " + message);
				$('#wonMessageContent').val("");
			}
		$('#wonMessageScroll').scrollTop(1E10);
		});
		
		$('#wonMessageContent').keydown(function(key) {
			if (key.which == 13) {
				if (!event.shiftKey) {
					$('#wonMessageButton').click();
					return false;
				}
			}
			$('#wonMessageScroll').scrollTop(1E10);
		});

	});

});
  
</script>
<style type="text/css">
#wonTotal {
	padding: 1%;
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
	font-size: 150%;
	width: 35%;
	text-align: center;
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
	height: 100%;
	width: 100%;
}
#wonMenu{
	height: 90%;
	width: 30%;
}
#wonContent{
	height:90%;
	width: 70%
}
#wonContentImg{
	height:90%;
	width: 30%;
}

#divButton:hover{
	background-color: blue;
}
#divButton{
	cursor:pointer;
}
#wonMessagebutton{
	border: none;
	cursor: pointer;
}

#wonMessagebutton:hover{

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


</style>
</head>
<body>
<div>
	<%@ include file="../../include/uHeader.jsp"  %>
	<div id="wonTotal">
		<div id="wonHeader" style="border-right: 1px #D8D8D8 solid; border-left: 1px #D8D8D8 solid;">
		<div id="wonMenu">
					<div id="wonHeaderDiv1" style="align-items: center; border-bottom: 1px #D8D8D8 solid; border-right: 1px #D8D8D8 solid;">
						<p id="wonHp" style="width:70%;">메세지</p>
						<div style="display: flex; flex-direction: row; width: 30%;">
						<button id="wonMessagebutton"><i class="fas fa-user-plus" style="margin: 3%;width: 30%; height: 50%;align-content: center;"></i></button>
						<button id="wonMessagebutton"><i class="fas fa-cog" style="margin: 3%;width: 30%; height: 50%;align-content: center;"></i></button>
						</div>
					</div>
					<div id="wonHeaderDiv2" style="">
						<div id="wonAccountView">
							<button id="wonMessagebutton" style="margin:3%; display: flex; flex-direction: row; align-items: center; border-color: white;"> 
								<img id="wonContentImg" src="<c:url value='/resources/img/test.png'/>">
								<div style="margin: 2%; font-size: 150%;">아이디</div>
							</button>
						</div>
					</div>
				</div>
				<div id="wonContent">
					<div id="wonHeaderDiv1" style="align-items: center; border-bottom: 1px #D8D8D8 solid;">
						<div style="width: 30%; display: flex; flex-direction: row;">
						<p style="width: 50%;display: flex; flex-direction: row;"><img src="<c:url value='/resources/img/test.png'/>" style="width:100%;"></p>
						<p style="width: 50%; align-self: center;">아이디</p>
						</div>
						<div style="display: flex; flex-direction: row; width:50%;">
						<button id="wonMessagebutton" style="width: 50%; height: 35%; align-self: center; text-align: center; margin:1%; border-color:white; ">작가로 추천</button>
						<button id="wonMessagebutton"style="width: 30%; height: 35%; align-self: center; text-align: center; margin:1%; border-color:white;">나가기</button>
						</div>
					</div>
					<div id="wonHeaderDiv2" style="margin-right: 1%;">
						<div style="background-color:#F2F2F2; height:80%; margin: 2%; overflow-y:scroll; display: flex; flex-direction: column; justify-content: flex-end;"id="wonMessageScroll">
						<div id="listP">
                        <!-- 메세지 영역 -->
                        <div id="wonMessageList"></div>
						</div>
						
					</div>
					<div style="display: flex; flex-direction: row;">
							<div style="margin: 3%; width:15%;"><i class="fas fa-keyboard fa-2x" style="margin-left: 5%;"></i></div>
							<textarea id="wonMessageContent" style="width:60%; height: 103px; resize: none; border-color: white;"></textarea>
							<button style="width:15%; height:100%;  margin:3%; background-color: #FFFFFF;" id="wonMessageButton">전송</button>
						</div>
				</div>
				
				
		</div>
		
		
	</div>	
</div>	
	
	<%@ include file="../../include/uFooter.jsp" %>
</div>
</body>
</html>