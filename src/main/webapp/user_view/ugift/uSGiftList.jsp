<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 보낸 선물함</title>
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
#jeonga-ugift-stitle-text{
	margin-top:0;
}
.jeonga-ugift-sendList{
	margin-top:2%;
}
.jeonga-ugift-shead {
	background-color:#f2f2f2;
	border: 1px solid #D8D8D8;
	display: flex;
	justify-content: space-between;
	font-size: 12px;
	height:46px;
}

.jeonga-ugift-shead-left {
	width:80%;
	display: flex;
}
.jeonga-ugift-shead-right{
	height:46px;
	width:20%;
	padding:1.5%;
}

.jeonga-ugift-shead-date{
	padding:2%;
	padding-right:0;

}
 .jeonga-ugift-shead-address{
 	padding:2%;
 	padding-left:0;
 }
.jeonga-ugift-shead-divide{
	padding:2%;

}
.jeonga-ugift-slink{
	text-decoration:none;
	color:black;
}
.jeonga-ugift-sbody {
	height:95px;
	border: 1px solid #D8D8D8;
	border-top:0px;
	display: flex;
	justify-content: space-between;
}
.jeong-ugift-sbody-image{
	width:8%;
	padding:1%;
}
.jeonga-ugift-sbody-order{
	width:62%;
	padding-top:2%;

}
.jeonga-ugift-sbody-title{
	font-weight: bold;
	font-size:14px;
}
.jeong-ugift-sbody-option{
	padding-top:1%;
	font-size:13px;
}
.jeonga-ugift-sbody-sellerpart {
	width:15%;
	border-left: 1px solid #D8D8D8;
}
.jeonga-ugift-sbody-seller{
	text-align:center;
	margin-top:20px;
	font-size: 13px;
}
#jeonga-ugift-sbody-button{
	margin-top:3%;
	background-color: white;
	border:1px solid #D8D8D8;
	padding:7px;
	text-align: center;
  	text-decoration: none;
  	display: inline-block;
  	font-size: 12px;
  	width:92px;
}

.jeonga-ugift-sbody-list{
	width:15%;
	border-left:1px solid #D8D8D8;
	padding:1%;
}
#jeonga-ugift-sbody-list-address{
	border-left:1px solid #D8D8D8;
	background-color: white;
	border:1px solid #D8D8D8;
	padding:7px;
	text-align: center;
  	text-decoration: none;
  	display: inline-block;
  	font-size: 12px;
	width:92px;
	margin-top:4px;
	margin-left:19px;
	margin-right:20px;
}
#jeonga-ugift-sbody-list-cancel{
	border-left:1px solid #D8D8D8;
	background-color: white;
	border:1px solid #D8D8D8;
	padding:7px;
	text-align: center;
  	text-decoration: none;
  	display: inline-block;
  	font-size: 12px;
	width:92px;
	margin-top:6px;
	margin-left:19px;
	margin-right:20px;
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
			<div class="jeonga-ugift-stitle">
				<h2 id="jeonga-ugift-stitle-text">보낸 선물함</h2>
			</div>
			<div class="jeonga-ugift-sendList">
				<div class="jeonga-ugift-shead">
					<div class="jeonga-ugift-shead-left">
						<div class="jeonga-ugift-shead-date">2020-07-21</div>
						<div class="jeonga-ugift-shead-divide">|</div>
						<div class="jeonga-ugift-shead-address">배송주소 입력</div>
					</div>
					<div class="jeonga-ugift-shead-right">
						<a href="#" class="jeonga-ugift-slink"> 홍길동님에게 보낸 선물 > </a>
					</div>
				</div>
				<div class="jeonga-ugift-sbody">
					<div class="jeong-ugift-sbody-image">
						<img src="<c:url value='/resources/img/test.png'/>" style="width:70px; height:70px;">
					</div>
					<div class="jeonga-ugift-sbody-order">
						<div class="jeonga-ugift-sbody-title">(카페)주문제작 감성 일러스트 엽서</div>
						<div class="jeong-ugift-sbody-option">1500원 / 1개</div>
					</div>
					<div class="jeonga-ugift-sbody-sellerpart">
						<div class="jeonga-ugift-sbody-seller">
						령쓰<br>
						<button id="jeonga-ugift-sbody-button">메시지로 문의</button>
						</div>
					</div>
					<div class="jeonga-ugift-sbody-list">
						<button id="jeonga-ugift-sbody-list-address">배송지 입력</button><br>
						<button id="jeonga-ugift-sbody-list-cancel">주문 취소</button>
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