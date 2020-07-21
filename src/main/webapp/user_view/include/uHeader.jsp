<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="UTF-8">
<style>
body {
	margin: 0px;
}

.dainheader {
	height: 160px;
	background-color: #ffffff;
	border: 1px solid #d9d9d9;
}

.dainheader a:link, a:visited, a:hover, a:active {
	text-decoration: none;
	color: #666666;
	border: none;
}

.dainheader-top {
	display: flex;
	flex-direction: row-reverse;
	align-items: center;
	background-color: #f5f5f5;
	height: 23%;
	border-bottom: 1px solid #d9d9d9;
	font-size: 11px;
}

.dainheader-top a {
	margin-left: 12px;
	margin-right: 12px;
}

.dainheader-middle {
	display: flex;
	margin-left: auto;
	margin-right: auto;
	height: 52%;
	width: 70%;
}

.dainheader-middle-inner {
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.dainheader-middle-menu {
	font-size: 18px;
}

.dainheader-middle-menu a:link, a:visited, a:hover, a:active {
	text-decoration: none;
	color: #666666; /*grey*/
	border: none;
}

.dainheader-middle-search {
	height: 53%;
	width: 333px;
	background-color: #fff;
}

.middle-search-form {
	width: 333px;
	border: 2px solid #1f76bb; /*blue:#1f76bb, red: #d8524a */
	padding-top: 5px;
	padding-bottom: 6px;
	border-radius: 5px;
}

.middle-search-form input[type=text] {
	width: 280px;
	font-size: 16px;
	padding: 7px 16px;
	margin: 8px 0;
	display: inline-block;
	border: 0px solid #fff;
	border-radius: 4px;
	box-sizing: border-box;
	color: #acacac;
	margin: 1px 1px 0px 1px;
	color: black;
}

.middle-search-form input:focus {
	outline: none;
}

.dainheader-bottom {
	height: 25%;
	background-color: #fff;
	border-top: 1px solid #d9d9d9;
	border-bottom: 1px solid #d9d9d9;
}

.dainsearchbtn {
	background-color: #fff;
	border: none;
	color: #1f76bb; /*blue*/
	padding: 8px 13px;
	font-size: 16px;
	cursor: pointer;
	margin-bottom: 3px;
	margin-right: 3px;
	float: right;
}

.dainpopsearch {
	width: 220px;
	height: 21px;
	margin-left: 30px;
	font-size: 14px;
}

.dainiconbtn {
	background-color: #fff;
	border: 0;
	outline: 0;
	color: #666666;
	cursor: pointer;
}

.dainmyinfo {
	font-size: 10px;
	color: #666666;
	display: flex;
	margin-right: 0px;
}

.dainheader-top-inner {
	display: flex;
	margin-left: auto;
	margin-right: auto;
	height: 52%;
	width: 70%;
	flex-direction: row-reverse;
}

.dainheader-bottom {
	display: flex;
	justify-content: center;
}


.dainheader-bottom-inner {
	width: 55%;
	display: flex;
	justify-content: flex-start;
	align-items: center;
	font-size: 13px;
	color: #666666;
}

/*메뉴 간격조정*/
.dainheader-bottom-inner div{
	margin-right: 20px;
}

.shadow {
	box-shadow: 0 2px 8px 0 rgba(0, 0, 0, 0.2);
}


/*메뉴에 언더라인 주는거*/
.dainheader-bottom-inner a {
	padding-top: 10px;
	padding-bottom: 10px;
	padding-right: 5px;
	padding-left: 5px;
}

.dainheader-bottom-inner a:hover, a:active {
	text-decoration: none;
	color: #1f76bb;
	border-bottom: 1px solid #1f76bb;
}

.dainheader-bottom-inner a:link, a:visited {
	text-decoration: none;
	color: #666666; /*grey*/
}

.cathover {
	position: relative;
	display: inline-block;
	padding: 10px 5px;
}

.cathover:hover .dropdown-content {
	display: block;
}

.cathover:hover {
	text-decoration: none;
	color: #1f76bb;
	cursor: pointer
}

/*드롭다운*/
.dropdown-content {
	display: none;
	position: absolute;
	min-width: 160px;
	box-shadow: 0 2px 8px 0 rgba(0, 0, 0, 0.2);
	border: 1px solid #d9d9d9; /*연한 회색 테두리*/
	z-index: 1;
}

.menu {
	display: flex;
	color: black;
}

.menu a {
	padding: 2px;
	margin: 10px;
	text-decoration: none;
	display: block;
}

.menu li {
	background: #fff;
	margin: 3px;
}

.menu ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
	width: 200px;
}

.menu li a:hover:not(.active) {
	background-color: #cce5ff;
	color: black;
	border: none;
}

.cartcountshape {
	width: 18px;
	height: 18px;
	background-color: #1f76bb;
	border-radius: 50%;
	z-index: 99;
	position: absolute;
	margin-left: 22px;
}
</style>
</head>
<body>
<!-- Header -->
<header class="dainheader shadow">
<div class="dainheader-top">
	<div class="dainheader-top-inner">
	<div class="dainheader-top-link">
		<a href="#">로그인</a>
		<a href="#">회원가입</a>
		<a href="#">고객센터</a>
	</div>
	</div>
</div>
<!-- Header 중앙영역 -->
<div class="dainheader-middle">
	<div class="dainheader-middle-inner">
		
		
		<div style="height: 100%; width: 105px; margin-right: 10px">
			<a href="#"><img alt="logo" src="<c:url value='/user_view/resources/img/Logo_blue.png'/>" height="100%" style="margin-right: 50px"></a>
		</div>
		<div class="dainheader-middle-menu">
			<a href="#" style="margin-right: 30px; color: #1f76bb;" >작품</a>
			<a href="#" style="margin-right: 30px;">금손 클래스</a>
		</div>
		<!-- 검색창 영역 -->
		<div class="dainheader-middle-search">
			<div class="middle-search-form">
				<form action="#">
					<input autocomplete="off" type="text" id="headerSearch" name="headerSearch" placeholder="작품, 작가 검색" >
					<button class="dainsearchbtn"><i class="fa fa-search fa-lg" aria-hidden="true" ></i></button>
				</form>
			</div>
		</div>
		<!-- 인기검색어 영역 -->
		<div class="dainpopsearch">
		 	<span style="color: red">1. </span> <span style="color:#666666 ">폰케이스</span>
		</div>
		
		
		<!-- 우측 아이콘 영역 -->
		<div class="dainmyinfo">
					<div style="height: 50px; width: 40px; margin-right: 20px;">
						<button class="dainiconbtn" style="padding:0px;"><i class="fa fa-user fa-2x" aria-hidden="true" style="padding: 7px 3px 3px;"></i>
						<p style="margin: 0px; font-size: 10px; width: 40px">MY정보</p></button>
					</div>
					<div style="height: 42px; width: 40px;">
						<button class="dainiconbtn" style="padding:0px;">
							<div class="cartcountshape"><span style="color: #fff; font-size:10px ;">0</span></div>
							<i class="fa fa-shopping-cart fa-2x" aria-hidden="true" style="padding: 7px 3px 3px;"></i>
							<p style="margin: 0px; font-size: 10px; width: 40px">장바구니</p>
						</button>
					</div>
		</div>
	</div>
</div>
<!-- Header 하단 메뉴영역 -->
<div class="dainheader-bottom">
	<div class="dainheader-bottom-inner">
		<div class="cathover" ><div style="height: 40px; display: table-cell; vertical-align: middle;">카테고리</div>
			<div class="dropdown-content" style="padding: 4px 0px 4px 0px; background-color: #fff;" >
				<div class="menu">
				<ul style="background-color: #fff; padding-left: 5px; margin-top:15px; margin-bottom:15px;" >
				  <li><a href="#">식음료</a></li>
				  <li><a href="#">문구팬시</a></li>
				  <li><a href="#">전자기기</a></li>
				  <li><a href="#">패션잡화</a></li>
				</ul>
				<ul style="background-color: #fff; padding-left: 5px; margin-top:15px; margin-bottom:15px; border-left: 1px solid #d9d9d9; border-right: 1px solid #d9d9d9">
				  <li><a href="#">반려동물 용품</a></li>
				  <li><a href="#">인테리어 소품</a></li>
				  <li><a href="#">신발</a></li>
				  <li><a href="#">의류</a></li>
				</ul>
				<ul style="background-color: #fff; padding-left: 5px; margin-top:15px; margin-bottom:15px;">
				  <li><a href="#">육아,아동</a></li>
				  <li><a href="#">인형,장난감</a></li>
				  <li><a href="#">공예</a></li>
				  <li><a href="#">기타</a></li>
				</ul>
				</div>
   			</div>
		</div>
		<div><a href="#">홈</a></div>
		<div><a href="#">추천 작품</a></div>
		<div><a href="#">실시간 후기</a></div>
		<div><a href="#">작가님 추천</a></div>
		<div><a href="#">스토리</a></div>
		<div><a href="#">인기작가</a></div>
		<div><a href="#">인기작품</a></div>
	</div>
</div>
</header>
<!-- Header 끝 -->
</body>
</html>