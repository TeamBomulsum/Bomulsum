<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 금손 클래스 | </title>
<style>


.minwoo_content {
	width: 70%;
	margin-left: auto;
	margin-right: auto;
	padding-top: 36px;
	padding-bottom: 64px;
	display:flex;
	flex-direction:column;
}

body a:link, a:visited, a:hover, a:active {
	text-decoration: none;
	border: none;
}

.minwoo_class_category_head{
	width:100%;
	display:flex;
}

.minwoo_class_category_head_title{
	width:23%;
}

.minwoo_class_category_head_title a{
	font-size: 23px;
	font-weight: bold;
	text-decoration: none;
	color: #333;
}

.minwoo_class_category_head_title a:hover:not(.active) {
    color: #1f76bb;
}

.minwoo_class_category_head_title hr{
	border:0;
	height:3px;
	background:black;
}

.minwoo_class_category_head_depth{
	width:75%;
	display: flex;
	margin-left: 2%;
}

.minwoo_class_category_head_depth a{
	font-size:13px;
	display: flex;
	flex-direction:row;
	justify-content:center;
	align-items:center;
    color: #666666;
    text-decoration: none;
    padding:5px;
    font-weight: bold;
}

.minwoo_class_category_head_depth a:hover:not(.active) {
    color: #1f76bb;
}


.minwoo_class_category_body{
	width:100%;
	display:flex;
}

.minwoo_class_category_side{
	width:23%;
}

.minwoo_class_category_side ul{
	 list-style-type: none;
	 padding-left:5px;
}

.minwoo_class_category_side ul li{
	display: block;
    text-decoration: none;
}
.minwoo_class_category_side ul li a{
 	display: block;
    color: #666666;
    text-decoration: none;
    margin-top:10px;
    padding-top:10px;
    font-size:14px;
    font-weight: bold;
}
.minwoo_class_category_side ul li a:hover:not(.active) {
    color: #1f76bb;
}

.minwoo_class_category_side ul li a i{
	float:right;
	padding-top:2%;
	padding-right:1%;
}


.minwoo_class_space {
	width:75%;
	display: flex;
	flex-wrap: wrap;
	margin-left: 2%;
}

.minwoo_class_space_one{
	width:250px;
	height:370px;
	margin-top:10px;
	padding-left:10px;
}

.minwoo_class_space_one a{
    color: #666666;
    text-decoration: none;
}

.minwoo_class_space_one_photo{
	height:65%;
	position: relative;
}

.minwoo_class_space_one_photo a{
    color: #666666;
    text-decoration: none;
}

.minwoo_class_space_one_photo a:hover:not(.active) {
    color: #666666;
}

.minwoo_class_space_one_text{
	height:35%;
	display:flex;
	flex-direction:column;
	padding:2%;
}

.minwoo_class_space_one_text a span{
	padding:5%;
    color: #666666;
    text-decoration: none;
    font-size:14px;
}

.minwoo_class_category_side ul li a:hover:not(.active) {
    color: #1f76bb;
}

.minwoo_class_space_one_location{
	position:absolute;
	left:0; 
	margin-top:5%;
	margin-left:5%;
	padding:2%; 
	font-size:13px;
	background-color:#6E6E6E;
	color:#FFFFFF;
	border-radius:5px;
}

</style>
</head>
<body>
<div>
	<%@ include file="../include/uHeaderClass.jsp"  %>

	<!-- content 시작 -->
	<div class="minwoo_content">
		
		<!--상단 헤더 시작-->
		<div class="minwoo_class_category_head">
			<!-- 타이틀 / 선택된 카테고리 시작 -->
			<div class="minwoo_class_category_head_title">
				<a href="#">공예</a>
				<hr>
			</div>
			<!-- 타이틀 / 선택된 카테고리 종료 -->
			
			<!-- 우측 댑쓰 시작-->
			<div class="minwoo_class_category_head_depth">
				<a href="#">금손 클래스 &nbsp;<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
				<a href="#">공예</a>
			</div>
			<!-- 우측 상단 댑쓰 종료 -->
		</div>
		<!-- 상단 헤더 종료 -->
		
		<!-- 바디 영역 시작 -->
		<div class="minwoo_class_category_body">
			<!-- 바디 좌측 메뉴 영역 시작 -->
			<div class="minwoo_class_category_side">
				<ul>
					<li>
						<a href="#">요리<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
						<a href="#">미술<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
						<a href="#">플라워<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
						<a href="#">뷰티<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
					</li>
				</ul>
			</div>
			<!-- 바디 좌측 메뉴 영역 종료 -->
	
			<!-- 작품 목록 들어올 영역 시작 -->
			<div class="minwoo_class_space">
				
				<c:forEach begin="1" end="10">
				<!-- 작품한개 영역 시작 -->
				<div class="minwoo_class_space_one">
					<!-- 이미지 영역 div 시작-->
					<div class="minwoo_class_space_one_photo">
						<span class="minwoo_class_space_one_location">서울 강동구</span>
						<!-- 별점 스크립트 기능 추가해야됨. -->
						<span style="position:absolute; right:0; margin-right:5%; font-size:30px; color:yellow;">
							★
						</span>
						<a href="#">
						<!-- 이미지 위에 즐겨찾기 버튼 기능 구현하기 -->
							<img style="width:100%; height:100%;" src="<c:url value='/resources/img/KMWcake.jpg'/>" >
						</a>
					</div>
					<!-- 이미지 영역 div 종료-->
					<!-- 텍스트 영역 시작 -->
					<div class="minwoo_class_space_one_text">
						<a href="#"><span style="color:#5858FA; font-size:80%;">공예</span><br></a>
						<a href="#"><span>스테인드글라스로 나만의 소품 만들기</span><br></a>
						<br/>
						<a href="#"><span style="font-size:17px;">★★★★★(12)</span><br></a>
					</div>
					<!-- 텍스트 영역 종료 -->
				</div>
				<!-- 작품한개 영역 끝 -->
				</c:forEach>
				
				
			</div>
			<!-- 작품 목록 들어올 영역 종료 -->
	
		</div>
		<!-- 바디 영역 종료 -->

		
	
	
	
	
	</div>
	<!-- end for content -->
	
	<%@ include file="../include/uFooter.jsp" %>
</div>
</body>
</html>