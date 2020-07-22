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
button{
	border: none;
	cursor: pointer;
}

button:hover{

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
	<%@ include file="../include/uHeader.jsp"  %>
	<div id="wonTotal">
		<div id="wonHeader" style="border-right: 1px #D8D8D8 solid; border-left: 1px #D8D8D8 solid;">
		<div id="wonMenu">
					<div id="wonHeaderDiv1" style="align-items: center; border-bottom: 1px #D8D8D8 solid; border-right: 1px #D8D8D8 solid;">
						<p id="wonHp" style="width:70%;">메세지</p>
						<div style="display: flex; flex-direction: row; width: 30%;">
						<button><i class="fas fa-user-plus" style="margin: 3%;width: 30%; height: 50%;align-content: center;"></i></button>
						<button><i class="fas fa-cog" style="margin: 3%;width: 30%; height: 50%;align-content: center;"></i></button>
						</div>
					</div>
					<div id="wonHeaderDiv2" style="">
						<div id="wonAccountView">
							<button style="margin:3%; display: flex; flex-direction: row; align-items: center; border-color: white;"> 
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
						<button style="width: 50%; height: 35%; align-self: center; text-align: center; margin:1%; border-color:white; ">작가로 추천</button>
						<button style="width: 30%; height: 35%; align-self: center; text-align: center; margin:1%; border-color:white;">나가기</button>
						</div>
					</div>
					<div id="wonHeaderDiv2" style="margin-right: 1%;">
						<div style="background-color:#F2F2F2; height:80%; margin: 2%; overflow-y:scroll;">
							<!-- 메세지 나오는 창 -->
							<div>d</div>
							<div>d</div>
							<div>d</div>
							
							<div>d</div>
							<div>d</div>
							<div>d</div>
							<div>d</div>
							<div>d</div>
							<div>d</div><div>d</div>
							<div>d</div>
							<div>d</div>
							<div>d</div>
							<div>d</div>
							
							<div>d</div>
							<div>d</div><div>d</div>
							<div>d</div>
							
							<div>d</div>
							<div>d</div><div>d</div>
							
							<div>d</div>
							<div>d</div>
							<div>d</div>
							<div>d</div>
							<div>d</div>
							<div>d</div>
							<div>d</div>
							<div>d</div>
							<div>d</div>
							<div>d</div>
						</div>
						<div style="display: flex; flex-direction: row;">
							<div style="margin: 3%; width:15%;"><i class="fas fa-keyboard fa-2x" style="margin-left: 5%;"></i></div>
							<textarea style="width:60%; height: 103px; resize: none; border-color: white;"></textarea>
							<button style="width:15%; height:100%;  margin:3%; background-color: #FFFFFF;">전송</button>
						</div>
					</div>
				</div>
				
				
		</div>
		
		
	</div>	
	
	
	<%@ include file="../include/uFooter.jsp" %>
</div>
</body>
</html>