<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>side</title>
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	
<style>
.jeonga-ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 13%;
    background-color: #f1f1f1;
}
.jeonga-navItem a {
 	display: block;
    color: #000;
    text-decoration: none;
}
.jeonga-navItem a.active {
    background-color: #4CAF50;
    color: white;
}
.jeonga-navItem a:hover:not(.active) {
    color: blue;
}
.jeonga-navItem1 a {
 	display: block;
    color: #000;
    text-decoration: none;
}
.jeonga-navItem1 a.active {
    background-color: #4CAF50;
    color: white;
}
.jeonga-navItem1 a:hover:not(.active) {
    color: blue;
}
.jeonga-navItem{
	padding:7%;
	border-bottom:1px solid #adb5bd;
}
.jeonga-navItem1{
	padding:7%;
}

#jeonga-menuTitle{
	padding:7%;
	background-color: #1f76bb;
	font-size:15px;
	border:1px solid #1f76bb;
}

.jeonga-imagesession{
	width:90px;
	height:90px;
	border-radius:70%;
	overflow:hidden;
	position:relative;
} 
.jeonga-profile{
	width:12.85%; 
	border:1px solid #1f76bb;
	padding-top:2%;
	padding-bottom:1%;
	padding-right:0px;
	padding-left:0px;
}
#jeonga-profileImage{
	width:100%;
	height:100%;
	object-fit:cover;
	background-color:black;

}

.jeonga-b{
	font-size: 14px;
}
.jeonga-collapse-item{	
	margin-top:4%;
	margin-bottom:4%;
	font-size:13px;
	text-decoration:none; 
	color:black;
}
</style>

</head>
<body>
	<!-- sidebar 시작 -->
	<div class="myInfo">
	<!-- 프로필 영역 -->
	   <div class="jeonga-profile" align="center">
        	<div class="jeonga-imagesession">
        		<img id="jeonga-profileImage" src="test.png">

				
        	</div>
        	<div id="test"></div>
        	<div class="membership" style="margin-top:7%; margin-bottom:3%;">
        		<i class="fas fa-gem" style="color:gold"><a class="jeonga-collapse-item" href="#">&nbsp;브론즈 ></a></i>
        	</div>
        	<div class="userName">
        		<b>홍길동</b>
        	</div>
	</div>

		<!-- 메뉴 영역 -->
		<ul class="jeonga-ul">
			<li id="jeonga-menuTitle">
				<b class="jeonga-b" style="color:white">My MENU</b>
			</li>
			<!-- 주문 영역 -->
			<li class="jeonga-navItem">
				<b class="jeonga-b">주문배송</b> 
				<a class="jeonga-collapse-item" href="#">주문 내역</a> 
				<a class="jeonga-collapse-item" href="#">취소/환불내역</a> 
			</li>
			<!-- 선물함 -->
			<li class="jeonga-navItem">
				<b class="jeonga-b">선물함</b> 
				<a class="jeonga-collapse-item" href="#">받은 선물함</a> 
				<a class="jeonga-collapse-item" href="#">취소/환불내역</a> 
			</li>
			<!-- 알림 및 메시지 -->
			<li class="jeonga-navItem">
				<b class="jeonga-b">알림 및 메시지</b> 
				<a class="jeonga-collapse-item" href="#">알림</a> 
				<a class="jeonga-collapse-item" href="#">메시지</a> 
			</li>
			<!-- 나의 구매후기 -->
			<li class="jeonga-navItem">
				<b class="jeonga-b">나의 구매 후기</b> 
				<a class="jeonga-collapse-item" href="#">구매후기 쓰기</a> 
				<a class="jeonga-collapse-item" href="#">내가 쓴 구매후기</a>
			</li>
			<!-- 관심리스트 -->
			<li class="jeonga-navItem">
				<b class="jeonga-b">관심리스트</b> 
				<a class="jeonga-collapse-item" href="#">즐겨찾기(★)</a> 
				<a class="jeonga-collapse-item" href="#">좋아하는(♥)작가</a>
				<a class="jeonga-collapse-item" href="#">최근 본 작품</a> 
			</li>
			<!-- 할인혜택 -->
			<li class="jeonga-navItem">
				<b class="jeonga-b">할인혜택</b> 
				<a class="jeonga-collapse-item" href="#">적립금</a> 
				<a class="jeonga-collapse-item" href="#">쿠폰함</a>
				<a class="jeonga-collapse-item" href="#">아이디어스 VIP클럽</a>
				<a class="jeonga-collapse-item" href="#">친구 초대 쿠폰</a> 
			</li>
			<!-- 내정보 -->
			<li class="jeonga-navItem1">
				<b class="jeonga-b">내정보</b> 
				<a class="jeonga-collapse-item" href="#">회원 등급</a> 
				<a class="jeonga-collapse-item" href="#">회원 정보 관리</a>
				<a class="jeonga-collapse-item" href="#">신용카드 및 환불계좌 관리</a>
				<a class="jeonga-collapse-item" href="#">주소(배송지)관리</a>
				<a class="jeonga-collapse-item" href="#">본인인증</a> 
			</li>
		</ul>
	</div>
</body>
</html>