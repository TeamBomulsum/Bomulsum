<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 쿠폰함</title>
<style>
.content {
	width: 70%;
	margin-left: auto;
	margin-right: auto;
	padding-top: 36px;
	padding-bottom: 64px;
	display:flex;
}

body a:link, a:visited, a:hover, a:active {
	text-decoration: none;
	border: none;
}

.dndud_coupon{
	width:80%;
	margin-left: 2%;
}

.dndud_txt_f1{
	font-size: 24px;
	font-weight: bold;
	color: #333;
}

.dndud_txt_f2{
	font-size: 16px;
	font-weight: bold;
	color: #333;
}

.dndud_coupon_top{
	width:100%;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	margin-bottom:4%;
}

.dndud_coupon_top_title{
	display: flex;
	justify-content:left;
}

.dndud_coupon_list{
	width:100%;
	border-top: 1px solid #E6E6E6;
	border-bottom: 1px solid #E6E6E6;
	margin-bottom: 2%;
}

.dndud_coupon_list div{
	width:50%;
}

.dndud_coupon_list div img{
	width:100%;
	height: width/2;
}

.dndud_coupon_none{
	width:100%;
	display:flex;
	justify-content:center;
	align-items: center;
}

.dndud_coupon_none span{
	font-size:15px;
	font-weight:bold;
}

</style>
</head>
<body>
<div>
	<!-- 헤더 -->
	<%@ include file="../include/uHeader.jsp"  %>
	
	
	
	<div class="content">
	<!-- 사이드메뉴 -->
	<%@ include file="../include/uside.jsp" %>
	<!-- 내용 여기다 넣으시오 -->
		<div class="dndud_coupon">
		
			<div class="dndud_coupon_top">
				<div class="dndud_coupon_top_title">
					<a class="dndud_txt_f1">쿠폰함</a>
				</div>
			</div>
			
			<div class="dndud_coupon_list">
				<div>
					<img id="coupon_2000" class="dndud_coupon_img" src="<c:url value='/resources/img/coupon_2000.png'/>" >
				</div>
				<div>
               		<img id="coupon_3000" class="dndud_coupon_img" src="<c:url value='/resources/img/coupon_3000.png'/>" >
               	</div>
			</div>
			
			<div class="dndud_coupon_none">
				<span>사용가능한 쿠폰이 없습니다.</span>
			</div>
	
	
		
		</div>
	
	
	
	</div>
	<!-- 푸터  -->
	<%@ include file="../include/uFooter.jsp" %>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</html>