<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 받은 선물함</title>
<style>
body  a:link, a:visited, a:hover, a:active{
   text-decoration: none;
   border: none;
}
.content {
	width: 70%;
	margin-left: auto;
	margin-right: auto;
	padding-top: 36px;
	padding-bottom: 64px;
	display:flex;
}
.ugift{
	width:80%;
	margin-left:2%;
}
#jeonga-ugift-rtitle-text{
	margin-top:0;
}
.jeonga-ugift-rhead {
	background-color:#f2f2f2;
	border: 1px solid #D8D8D8;
	display: flex;
	justify-content: space-between;
	font-size: 12px;
	height:46px;
}

.jeonga-ugift-rhead-left {
	width:80%;
	display: flex;
}
.jeonga-ugift-rhead-right{
	width:25%;
	padding:1.5%;
}

.jeonga-ugift-rhead-date{
	padding:2%;
	padding-right:0;

}
 .jeonga-ugift-rhead-address{
 	padding:2%;
 	padding-left:0;
 }

.jeonga-ugift-rhead-divide{
	padding:2%;

}
.jeonga-ugift-rlink{
	text-decoration:none;
	color:black;
}
.jeonga-ugift-rbody {
	height:95px;
	border: 1px solid #D8D8D8;
	border-top:0px;
	display: flex;
	justify-content: space-between;
}
.jeong-ugift-rbody-image{
	width:8%;
	padding:1%;
}
.jeonga-ugift-rbody-title{
	width:62%;
	padding-top:2%;
	font-weight: bold;
	font-size:14px;
}
.jeonga-ugift-rbody-sellerpart {
	width:30%;
	border-left: 1px solid #D8D8D8;
}
.jeonga-ugift-rbody-seller{
	text-align:center;
	padding-top:6%;
	padding-bottom:0;
	font-size: 13px;
}
#jeonga-ugift-rseller-message{
	margin-top:3%;
	background-color: white;
	border:1px solid #D8D8D8;
	padding:7px;
	text-align: center;
  	text-decoration: none;
  	display: inline-block;
  	font-size: 11px;
}
</style>
</head>
<body>
	<div>
	<!-- 헤더 -->
	<%@ include file="../include/uHeader.jsp"%>

	<div class="content">
		<!-- 사이드메뉴 -->
		<%@ include file="../include/uside.jsp"%>
		<!-- 내용 여기다 넣으시오 -->
		<div class="ugift">
			<div class="jeonga-ugift-rtitle">
				<h2 id="jeonga-ugift-rtitle-text">받은 선물함</h2>
			</div>
			<div class="jeonga-ugift-receiveList">
				<div class="jeonga-ugift-rhead">
					<div class="jeonga-ugift-rhead-left">
						<div class="jeonga-ugift-rhead-date">2020-07-21</div>
						<div class="jeonga-ugift-rhead-divide">|</div>
						<div class="jeonga-ugift-rhead-address"><a href="uRGiftCheck.jsp"class="jeonga-ugift-rlink" style="color:#DF3A01">배송주소를 입력하세요(유효기간: 2020-07-30)</a></div>
					</div>
					<div class="jeonga-ugift-rhead-right">
						<a href="uRGiftCheck.jsp" class="jeonga-ugift-rlink"> 홍길동(010-****-1111)님의 선물 > </a>
					</div>
				</div>
				<div class="jeonga-ugift-rbody">
					<div class="jeong-ugift-rbody-image">
						<img src="<c:url value='/resources/img/test.png'/>" style="width:70px; height:70px;">
					</div>
					<div class="jeonga-ugift-rbody-title">(카페)주문제작 감성 일러스트 엽서</div>
					<div class="jeonga-ugift-rbody-sellerpart">
						<div class="jeonga-ugift-rbody-seller">
						령쓰<br>
						<button id="jeonga-ugift-rseller-message">메시지로 문의</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 푸터  -->
	<%@ include file="../include/uFooter.jsp"%>
	</div>
</body>
</html>