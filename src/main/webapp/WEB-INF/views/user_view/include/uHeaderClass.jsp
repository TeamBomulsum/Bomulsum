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

.dainheader-top-a:link, .dainheader-top-a:visited, 
.dainheader-top-a:hover, .dainheader-top-a:active {
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

.dainheader-top-a {
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

.dainheader-middle-menuA:link, .dainheader-middle-menuA:visited, 
.dainheader-middle-menuA:hover, .dainheader-middle-menuA:active {
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
.dainheader-bottom-inner > div {
	margin-right: 20px;
}

.shadow {
	box-shadow: 0 2px 8px 0 rgba(0, 0, 0, 0.2);
}

/*메뉴에 언더라인 주는거*/
.dainheader-bi-a {
	padding-top: 10px;
	padding-bottom: 10px;
	padding-right: 5px;
	padding-left: 5px;
	color: #666666;
}

.dainheader-bi-a:link, .dainheader-bi-a:visited {
	text-decoration: none;
	color: #666666; /*grey*/
}

.dainheader-bi-a:hover, .dainheader-bi-a:active {
	text-decoration: none;
	color: #1f76bb;
	border-bottom: 1px solid #1f76bb;
}

.cathover {
	position: relative;
	display: inline-block;
	padding: 10px 5px;
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

.dainrounded {
	background: #f5f5f5;
	color: #999;
	-webkit-border-radius: 13px;
	-moz-border-radius: 13px;
	border-radius: 13px;
	padding: 2px 10px;
	margin-right: 5px;
	font-size: 10px;
	font-weight: bold;
	position: relative;
}


</style>
</head>
<body>
<!-- Header -->
<header class="dainheader shadow">
<div class="dainheader-top">
	<div class="dainheader-top-inner">
	<div class="dainheader-top-link">
		<a class="dainheader-top-a" href="#">로그인</a>
		<a class="dainheader-top-a" href="#">회원가입</a>
		<a class="dainheader-top-a" href="#">고객센터</a>
	</div>
	</div>
</div>
<!-- Header 중앙영역 -->
<div class="dainheader-middle">
	<div class="dainheader-middle-inner">
		
		
		<div style="height: 100%; width: 105px; margin-right: 10px">
			<a href="#"><img alt="logo" src="<c:url value='/resources/img/Logo_blue.png'/>" height="100%" style="margin-right: 50px"></a>
		</div>
		<div class="dainheader-middle-menu">
			<a class="dainheader-middle-menuA" href="#" style="margin-right: 30px;" >작품</a>
			<a class="dainheader-middle-menuA"  href="#" style="margin-right: 30px; color: #1f76bb;">금손 클래스</a>
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
		<div class="dainrounded" style="margin-right: 5px;">온라인</div>
		<div><a class="dainheader-bi-a" href="#">홈</a></div>
		<div style="color: #d9d9d9">|</div>
		<div class="dainrounded" style="margin-right: 5px;">오프라인</div>
		<div><a class="dainheader-bi-a" href="#">홈</a></div>
		<div><a class="dainheader-bi-a" href="#">카테고리</a></div>
		<div><a class="dainheader-bi-a" href="#">인기 클래스</a></div>
		<div><a class="dainheader-bi-a" href="#">지역별</a></div>
		<div><a class="dainheader-bi-a" href="#">신규</a></div>
	</div>
</div>
</header>
<!-- Header 끝 -->
</body>
</html>