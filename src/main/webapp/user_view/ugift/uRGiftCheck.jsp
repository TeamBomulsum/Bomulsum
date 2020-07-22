<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 받은 선물 상세보기</title>
<style>
body a:active{
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
.uRGiftCheckWrap{
	width:80%;
	margin-left:2%;
}
/* 작품 정보 박스*/
.jeonga-ugift-receive-check{
	padding:1%;
	border:1px solid #D8D8D8;
	display:flex;

}
#message{
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
#jeonga-ugift-gift-address-update{
	margin-top:3%;
	background-color: white;
	border:1px solid #D8D8D8;
	padding:4px;
	text-align: center;
  	text-decoration: none;
  	display: inline-block;
  	font-size: 12px;
  	width:50px;
}
.jeonga-ugift-receive-buyer-info{
	width:70%;
	padding-left:2%;
	margin-top:auto;
	margin-bottom:auto;
	vertical-align: middle;
}
/* 다른 정보들 박스*/
.jeonga-ugift-gift-info, .jeonga-ugift-gift-address, .jeonga-ugift-gift-dispatch{
	margin-top:1%;
	border:1px solid #D8D8D8;
	padding:24px;
}

.jeonga-ugift-gift-title, .jeonga-ugift-gift-address-title, .jeonga-ugift-gift-dispatch-title, .jeonga-ugift-gift-caution-title, .jeonga-ugift-gift-other-title{
	font-size:16px; 
	font-weight:bold;
}
.jeonga-ugift-gift-info-left, .jeonga-ugift-gift-address-detail-left, .jeong-ugift-gift-dispatch-detail-left{
	font-size:14px; 
	font-weight: bold;
}

.jeonga-ugift-gift-info-right, .jeonga-ugift-gift-address-datail-right, .jeong-ugift-gift-dispatch-detail-right{
	font-size:14px; 
	padding:8px;
}
.jeonga-ugift-receive-buyer-name{
	font-weight: bold;
	font-size:18px;
	margin:15px, 0px;
}
.jeonga-ugift-receive-buyer-message{
	padding-top:15px;
	font-size:16px;
}
.jeonga-ugift-gift-other-first, .jeonga-ugift-gift-caution-first{
	display:flex;
	justify-content: space-between;
}

.jeonga-ugift-gift-caution, .jeonga-ugift-gift-other{
	margin-top:1%;
	padding:24px;
	border:1px solid #D8D8D8;

}
.jeong-ugift-gift-infotable, .jeong-ugift-gift-address-detail, .jeong-ugift-gift-dispatch-detail{
	margin-top:2%;
}
.jeonga-ugift-alink{
	text-decoration: none;
	color:black;
}
</style>

<script type="text/javascript">
function doCautionDisplay(){
	var con=document.getElementById("jeonga-ugift-gift-caution-content");
	if(con.style.display=='none'){
    	con.style.display='block';
    }else{
    	con.style.display='none';
    }
}
function doOtherDisplay(){
	var con=document.getElementById("jeonga-ugift-gift-other-content");
	if(con.style.display=='none'){
    	con.style.display='block';
    }else{
    	con.style.display='none';
    }
}
</script>
</head>
<body>
	<div>
	<!-- 헤더 -->
	<%@ include file="../include/uHeader.jsp"%>

	<div class="content">
		<!-- 사이드메뉴 -->
		<%@ include file="../include/uside.jsp"%>
		<!-- 내용 여기다 넣으시오 -->
		<div class="uRGiftCheckWrap">
			<div class="jeonga-ugift-rctitle">
				<h2 id="jeonga-ugift-rctitle-text">선물 확인</h2>
			</div>
			<!-- 작품 정보 -->
			<div class="jeonga-ugift-receive-check">
				<div class="jeonga-ugift-receive-image">
				<img src="<c:url value='/resources/img/test.png'/>" style="width: 250px; height:250px;">
				</div>
				<div class="jeonga-ugift-receive-buyer-info">
					<div class="jeonga-ugift-receive-buyer-name">
						 홍길동(1111)님의 선물
					</div> 
					<div class="jeonga-ugift-receive-buyer-message">
						선물 보내용
					</div>
				</div>
			</div>
			<!-- 선물정보 -->
			<div class="jeonga-ugift-gift-info">
				<div class="jeonga-ugift-gift-title">
					선물정보
				</div>
				<table class="jeong-ugift-gift-infotable">
					<tr>
						<td class="jeonga-ugift-gift-info-left">받는 분</td>
						<td class="jeonga-ugift-gift-info-right">홍길동</td><!-- 이름 변경됨 -->
					</tr>
					<tr>
						<td class="jeonga-ugift-gift-info-left">작품명</td>
						<td class="jeonga-ugift-gift-info-right">(카페)주문제작 감성일러스트 엽서</td><!-- 내역 변경됨 -->
					</tr>
					<tr>
						<td class="jeonga-ugift-gift-info-left">작가명</td>
						<td class="jeonga-ugift-gift-info-right">령쓰&nbsp;<button id="message">메시지로 문의</button></td><!-- 작가명 변경됨 -->
					</tr>
				
				</table>
			</div>
			<!-- 선물 받을 주소(배송지) -->
			<div class="jeonga-ugift-gift-address">
				<div class="jeonga-ugift-gift-address-title">
					선물받을 주소 (배송지)
				</div>
				<table class="jeong-ugift-gift-address-detail">
					<tr>
						<td class="jeonga-ugift-gift-address-detail-left">받는 분</td>
						<td class="jeonga-ugift-gift-address-datail-right">홍길동</td><!-- 이름 변경됨 -->
					</tr>
					<tr>
						<td class="jeonga-ugift-gift-address-detail-left">전화</td>
						<td class="jeonga-ugift-gift-address-datail-right">010-1111-1111</td><!-- 내역 변경됨 -->
					</tr>
					<tr>
						<td class="jeonga-ugift-gift-address-detail-left">주소</td>
						<td class="jeonga-ugift-gift-address-datail-right">서울시 종로구 묘동 <!-- 내역 변경됨 -->
						<button id="jeonga-ugift-gift-address-update">수정</button></td>
					</tr>
				</table>
				<div style="font-size:14px;"><input type="checkbox" style="margin-bottom:0px;">1회용 안심번호를 사용합니다.</div>
			</div>
			<!-- 발송정보 -->
			<div class="jeonga-ugift-gift-dispatch">
				<div class="jeonga-ugift-gift-dispatch-title">
					발송정보
				</div>
				<table class="jeong-ugift-gift-dispatch-detail">
					<tr>
						<td class="jeong-ugift-gift-dispatch-detail-left">발송 상태</td>
						<td class="jeong-ugift-gift-dispatch-detail-right">배송주소 입력 대기</td><!-- 내용 변경됨 -->
					</tr>
					<tr>
						<td class="jeong-ugift-gift-dispatch-detail-left">유효기간</td>
						<td class="jeong-ugift-gift-dispatch-detail-right">2020-07-28</td><!-- 내용 변경됨 -->
					</tr>
				</table>
			</div>
			<!-- 유의사항 -->
			<div class="jeonga-ugift-gift-caution">
				<div class="jeonga-ugift-gift-caution-first">
					<div class="jeonga-ugift-gift-caution-title">
					유의사항
					</div>
					<div class="jeonga-ugift-gift-caution-more" style="font-size:16px;">
					<a class="jeonga-ugift-alink" href="javascript:doCautionDisplay();">자세히보기 <i class="fa fa-angle-down" aria-hidden="true"></i></a>
					</div>
				</div><!-- end jeonga-ugift-gift-caution-first -->
				<div id="jeonga-ugift-gift-caution-content" style="display:none; margin-top:2%; font-size:14px;">
					- 위 유효기간까지 배송 주소 입력이 완료되어야 하며, 유효기간 만료 시 선물은 취소됩니다.<br/>
					- 배송 주소 입력 후, 선물 받으신 작품의 품절 혹은 작가의 사정에 의해 주문취소가 진행될 수 있습니다.<br/>
					- 제주/도서 산간 지역은 선물하기 서비스가 제한됩니다.
				</div>
			</div>
			<!-- 개인정보 제3자 제공고지 -->
			<div class="jeonga-ugift-gift-other">
				<div class="jeonga-ugift-gift-other-first">
					<div class="jeonga-ugift-gift-other-title" >
					<input type="checkbox">	개인정보 제3자 제공고지
					</div>
					<div class="jeonga-ugift-gift-other-more" style="font-size:16px;">
						<a class="jeonga-ugift-alink" href="javascript:doOtherDisplay();">자세히보기 <i class="fa fa-angle-down" aria-hidden="true"></i></a>
					</div>
				</div> <!-- end jeonga-ugift-gift-other-first -->
				<div id="jeonga-ugift-gift-other-content" style="display:none; margin-top:2%; font-size:14px;">
					① 개인정보의 수집·이용목적 : 작품 배송<br/>
					② 수집하려는 개인정보의 항목 :성명, 전화번호, 주소<br/>
					③ 개인정보의 보유 및 이용기간(근거법률) : 6개월<br/>
					④ 동의를 거부할 수 있으며, 동의 거부시 서비스가 제공되지 않습니다.
				</div>
			</div>
		</div><!-- end uRGiftCheckWrap -->
	</div>
	<!-- 푸터  -->
	<%@ include file="../include/uFooter.jsp"%>
	</div>
</body>
</html>