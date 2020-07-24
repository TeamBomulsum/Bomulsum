<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | MY정보</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function () {
	$('#dainHelpIcon1').mouseover(function() {
	 	$('#dainHelp1').css("display", "inline");
	});
	$('#dainHelpIcon1').mouseleave(function() {
	 	$('#dainHelp1').css("display", "none");
	});
});

$(document).ready(function () {
	$('#dainHelpIcon2').mouseover(function() {
	 	$('#dainHelp2').css("display", "inline");
	});
	$('#dainHelpIcon2').mouseleave(function() {
	 	$('#dainHelp2').css("display", "none");
	});
});
</script>

<style>
.content {
	width: 70%;
	margin-left: auto;
	margin-right: auto;
	padding-top: 36px;
	padding-bottom: 64px;
	display: flex;
}

body a:link, a:visited, a:hover, a:active {
	text-decoration: none;
	border: none;
}

.dainSection {
	margin-left: 2%;
	width: 80%;
}

.dainTitle{
	padding: 22px 24px;
	background-color: #555555;
	color: #fff;
	font-size: 21px;
	text-align: left;
}

.daintd{
	padding: 24px;
	border: 1px solid #d9d9d9;
	width: 25%;
}
.dainTable{
	border-collapse: collapse;
	width: 100%;
	margin: 0px;
	padding: 0px;
}

.dainLabel{
	font-size: 16px;
	font-weight: bold;
}

.dainValue{
	font-size: 24px;
    color: #1F76BB;
    display: block;
}

.dainSubTitle{
	border-bottom: 1px solid black;
	display: flex;
	justify-content: space-between;
	padding: 40px 0px 8px;
	margin-bottom: 24px;
}

.dainSubContent{
	
	background-color: yellow;
}
.dainMoreBtn{
	padding: 0px 24px;
	border: 1px solid #d9d9d9;
	background-color: #fff;
	color: black;
}

.dainHelp{
 	z-index: 99; 
 	position: absolute; 
 	padding: 8px 10px;
	border: 1px solid #d9d9d9;
	background-color: #fff;
	font-size: 12px;
	margin-left: 5px;
	border-radius: 5px;
	box-shadow: 0 2px 8px 0 rgba(0, 0, 0, 0.2);
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
	
	<section class="dainSection">

	<!-- MY정보테이블 -->
	<table class="dainTable">
		<tr><td colspan="4" class="dainTitle">MY정보</td></tr>
		<tr>
			<td class="daintd">
				<strong class="dainLabel" >적립금</strong>
				<!-- 숫자 클릭시 해당 페이지로 이동해야함 -->
				<a class="dainValue" id="umhPoint" href="#" style="color: #1F76BB;">0P</a>
			</td>
			<td class="daintd">
				<strong class="dainLabel">할인 쿠폰 수</strong>
				<a class="dainValue" id="umhCouponCount" href="#" style="color: #1F76BB;">0</a>
			</td>
			<td class="daintd">
				<strong class="dainLabel">작가 발송 완료</strong>
				<i id="dainHelpIcon1" class="fa fa-question-circle-o" style="color: #d9d9d9"></i>
				<span id="dainHelp1" class="dainHelp" style="display: none;">최근 1개월 기준</span>
				<a class="dainValue" id="umhSendComplete" href="#" style="color: #1F76BB;">0</a>
			</td>
			<td class="daintd">
				<strong class="dainLabel">취소/환불 완료</strong>
				<i id="dainHelpIcon2" class="fa fa-question-circle-o" style="color: #d9d9d9"></i>
				<span id="dainHelp2" class="dainHelp" style="display: none;">최근 1개월 기준</span>
				<a class="dainValue" id="umhRefundComplete" href="#" style="color: #1F76BB;">0</a>
			</td>
		</tr>
	</table>
	
	<!-- 최근 주문 내역 -->
	<div class="dainSubTitle">
		<h4 style="margin:0px;">최근 주문내역</h4>
		<a href="#" style="font-size: 14px; color: #22a7af;">더보기 <b>></b></a>
	</div>
	<div class="dainSubContent" style="height: 200px;">
	 <!-- 여기다가 주문내역 가져오기 -->
	 
	 
	 
	 
	 
	 
	</div>
	<div style="margin-top:20px; display: flex; justify-content: center;">
	<a href="#" style="padding: 12px 30px; border: 1px solid #d9d9d9;
		background-color: #fff; color: black; font-size: 13px;"><strong>최근 주문내역 더보기</strong></a>
	</div>
	
	<!-- 안읽은 메시지&알림 -->
	<div style="display: flex; justify-content: space-between; ">
		<!-- 안읽은 메시지 -->
		<div style="width: 49%;">
			<div class="dainSubTitle" >
				<h4 style="margin:0px;">안 읽은 메시지</h4>
				<a href="#" style="font-size: 14px; color: #22a7af;">더보기 <b>></b></a>
			</div>
			<div class="dainSubContent" style="height: 280px;">
			 <!-- 여기다가 안읽은메시지 가져오기 -->
			 
			 
			 
			 
			 
		 
			</div>
		</div>
		
		<!-- 알림 -->
		<div style="width: 49%; ">
			<div class="dainSubTitle">
				<h4 style="margin:0px;">알림</h4>
				<a href="#" style="font-size: 14px; color: #22a7af;">더보기 <b>></b></a>
			</div>
			<div class="dainSubContent" style="height: 280px;">
			 <!-- 여기다가 알림 가져오기 -->
			 
			 
			 
			 
			 
		 
			</div>			
		</div>
	</div>
	
	<!-- 즐겨찾는 작품 -->
	<div class="dainSubTitle">
		<h4 style="margin:0px;">즐겨찾는(★)작품</h4>
		<a href="#" style="font-size: 14px; color: #22a7af;">더보기 <b>></b></a>
	</div>
	<div class="dainSubContent" style="height: 300px;">
	 <!-- 여기다가 즐겨찾는작품 가져오기 -->
	 
	 
	 
	 
	 
	 
	</div>
	
	
	<!-- 좋아하는 작가 -->
	<div class="dainSubTitle">
		<h4 style="margin:0px;">좋아하는(♥)작가</h4>
		<a href="#" style="font-size: 14px; color: #22a7af;">더보기 <b>></b></a>
	</div>
	<div class="dainSubContent" style="height: 272px; margin: 24px 0px;">
	 <!-- 여기다가 좋아하는작가 가져오기 -->
	 
	 
	 
	 
	 
	 
	</div>
	
	<!-- 최근 본 작품 -->
	<div class="dainSubTitle">
		<h4 style="margin:0px;">최근 본 작품</h4>
		<a href="#" style="font-size: 14px; color: #22a7af;">더보기 <b>></b></a>
	</div>
	<div class="dainSubContent" style="height: 300px;">
	 <!-- 여기다가 좋아하는작가 가져오기 -->
	 
	 
	 
	 
	 
	 
	</div>

	
	</section>
	
	<!-- end content -->
	</div>
	<!-- 푸터  -->
	<%@ include file="../include/uFooter.jsp" %>
</div>
</body>
</html>