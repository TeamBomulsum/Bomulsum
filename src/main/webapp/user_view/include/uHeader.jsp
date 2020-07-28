<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function() {
	//Top버튼 기능
    $(window).scroll(function() {
        if ($(this).scrollTop() > 200) {
            $('.dainToTop').fadeIn();
        } else {
            $('.dainToTop').fadeOut();
        }
    });
	
	$('.dainToTop').click(function(){
		$('html, body').animate({
			scrollTop : 0
		}, 400);
		return false;
	});
	
});
</script>


<style>
body {
	margin: 0px;
}

.dainheader {
	height: 160px;
	background-color: #ffffff;
	border: 1px solid #d9d9d9;
}


.dain-header-topA:link, .dain-header-topA:visited, .dain-header-topA:hover, .dain-header-topA:active {
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

.dain-header-topA {
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

.dainheader-middle-menu-a{
	color: #666666; /*grey*/
}

.dainheader-middle-menu-a:link, .dainheader-middle-menu-a:visited, 
.dainheader-middle-menu-a:hover, .dainheader-middle-menu-a:active {
	color: #666666; /*grey*/
	text-decoration: none;
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

.middle-search-form > input:focus {
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
.dainheader-bottom-inner > div{
	margin-right: 20px;
}

.shadow {
	box-shadow: 0 2px 8px 0 rgba(0, 0, 0, 0.2);
}


/*메뉴에 언더라인 주는거*/
.dain-hb-menu {
	padding-top: 10px;
	padding-bottom: 10px;
	padding-right: 5px;
	padding-left: 5px;
	color: #666666;
}

.dain-hb-menu:link, dain-hb-menu:visited {
	text-decoration: none;
	color: #666666; 
}

.dain-hb-menu:hover, dain-hb-menu:active {
	text-decoration: none;
	color: #1f76bb;
	border-bottom: 1px solid #1f76bb;
}



.cathover {
	position: relative;
	display: inline-block;
	padding: 10px 5px;
	color: #666666;
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

.dainCatA {
	padding: 2px;
	margin: 10px;
	text-decoration: none;
	display: block;
	color: black;
}

.dainCatLi {
	background: #fff;
	margin: 3px;
}

.dainCatUl {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
	width: 200px;
}


.dainCatA:hover {
	background-color: #cce5ff;
	color: black;
	border: none;
	text-decoration: none;
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

.dainToTop{
	display: inline-block;
    position: fixed;
    bottom: 243px;
    z-index: 150;
    display: none;
    width: 40px;
    height: 40px;
    right: 0;
    text-align: center;
    color: white;
    font-size: 25px;
    line-height: 1.3;
    transition: all 0.5s ease;
    background-color: #1f76bb;
    font-size: 12px;
}


</style>
</head>
<body>
<!-- Header -->
<header class="dainheader shadow" id="dainHeader">
<div class="dainheader-top">
	<div class="dainheader-top-inner">
	<div class="dainheader-top-link">
		<a class="dain-header-topA" href="#">로그인</a>
		<a class="dain-header-topA" href="#">회원가입</a>
		<a class="dain-header-topA" href="#">고객센터</a>
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
			<a class="dainheader-middle-menu-a" href="#" style="margin-right: 30px; color: #1f76bb;" >작품</a>
			<a class="dainheader-middle-menu-a" href="#" style="margin-right: 30px;">금손 클래스</a>
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
<div class="dainheader-bottom" >
	<div class="dainheader-bottom-inner">
		<div class="cathover" ><div style="height: 40px; display: table-cell; vertical-align: middle;">카테고리</div>
			<div class="dropdown-content" style="padding: 4px 0px 4px 0px; color: #666666; background-color: #fff;" >
				<div class="menu">
				<ul class="dainCatUl" style="background-color: #fff; padding-left: 5px; margin-top:15px; 
				margin-bottom:15px;" >
				  <li class="dainCatLi"><a class="dainCatA" href="#">식음료</a></li>
				  <li class="dainCatLi"><a class="dainCatA" href="#">문구팬시</a></li>
				  <li class="dainCatLi"><a class="dainCatA" href="#">전자기기</a></li>
				  <li class="dainCatLi"><a class="dainCatA" href="#">패션잡화</a></li>
				</ul>
				<ul class="dainCatUl" style="background-color: #fff; padding-left: 5px; margin-top:15px; 
				margin-bottom:15px; border-left: 1px solid #d9d9d9; border-right: 1px solid #d9d9d9">
				  <li class="dainCatLi"><a class="dainCatA" href="#">반려동물 용품</a></li>
				  <li class="dainCatLi"><a class="dainCatA" href="#">인테리어 소품</a></li>
				  <li class="dainCatLi"><a class="dainCatA" href="#">신발</a></li>
				  <li class="dainCatLi"><a class="dainCatA" href="#">의류</a></li>
				</ul>
				<ul class="dainCatUl" style="background-color: #fff; padding-left: 5px; margin-top:15px; 
				margin-bottom:15px;">
				  <li class="dainCatLi"><a class="dainCatA" href="#">육아,아동</a></li>
				  <li class="dainCatLi"><a class="dainCatA" href="#">인형,장난감</a></li>
				  <li class="dainCatLi"><a class="dainCatA" href="#">공예</a></li>
				  <li class="dainCatLi"><a class="dainCatA" href="#">기타</a></li>
				</ul>
				</div>
   			</div>
		</div>
		<div><a class="dain-hb-menu" href="#">홈</a></div>
		<div><a class="dain-hb-menu" href="#">추천 작품</a></div>
		<div><a class="dain-hb-menu" href="#">실시간 후기</a></div>
		<div><a class="dain-hb-menu" href="#">작가님 추천</a></div>
		<div><a class="dain-hb-menu" href="#">스토리</a></div>
		<div><a class="dain-hb-menu" href="#">인기작가</a></div>
		<div><a class="dain-hb-menu" href="#">인기작품</a></div>
	</div>
</div>
</header>
<!-- Header 끝 -->

<!-- 탑으로 가는 버튼 -->
<a href="#dainHeader" class="dainToTop" style="display: none; bottom: 66px; color: #fff; text-decoration: none;">
    <i class="fa fa-angle-up fa-lg" ></i><span style="padding:0px; margin: 0px; display: block; ">Top</span>
</a>
</body>
</html>