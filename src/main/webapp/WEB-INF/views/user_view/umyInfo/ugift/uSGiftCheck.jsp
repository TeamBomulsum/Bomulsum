<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 보낸 선물 상세보기</title>
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
.uSGiftCheckWrap{
	width:80%;
	margin-left:2%;
}

/*선물 상세 내역 테이블*/
.jeonga-ugift-sctable{
	border:1px solid #D8D8D8;
	border-collapse: collapse;
	width:100%;
}

.jeonga-ugift-schead{
	display:flex;
	background-color: #f2f2f2;
	font-size: 13px;
}
.jeonga-ugift-sctable-left-top{
	border-top:1px solid #D8D8D8;
	border-bottom:1px solid #D8D8D8;
	display:flex;
}


.jeonga-ugift-sctable-middle,.jeonga-ugift-sctable-right {
	border:1px solid #D8D8D8;
	width:15%;
}

.jeonga-ugift-schead-date{
	padding:2%;
	padding-right:0;

}
 .jeonga-ugift-schead-address{
 	padding:2%;
 	padding-left:0;
 }
.jeonga-ugift-schead-divide{
	padding:2%;
}
.jeonga-ugift-send-order{
	width:100%;
}
.jeonga-ugift-scbody-title{
	margin:2%;
	font-weight:bold;
	font-size: 14px;
}

.jeong-ugift-scbody-option{
	margin:2%;
	font-size:13px;
} 
.jeonga-ugift-scbody-seller{
	text-align:center;
	font-size: 13px;
}
.jeonga-ugift-sctable-left, .jeonga-ugift-sctable-left-bottom{
	padding:2%;
	font-size: 13px;
}
.jeonga-ugift-scbody-sellerpart{
	margin:13px;
}

#jeonga-ugift-scbody-button{
	margin-top:10%;
	background-color: white;
	border:1px solid #D8D8D8;
	padding:7px;
	text-align: center;
  	text-decoration: none;
  	display: inline-block;
  	font-size: 12px;
  	width:92px;
  	color:black;
  }
 .jeonga-ugift-scbody-list{
 	margin-left:5px;
 }
  
  #jeonga-ugift-scbody-list-address{
	background-color: white;
	border:1px solid #D8D8D8;
	padding:7px;
	text-align: center;
  	text-decoration: none;
  	display: inline-block;
  	font-size: 12px;
	width:92px;
	margin-top:4px;
	margin-left:10px;
	margin-right:10px;
}
#jeonga-ugift-scbody-list-cancel{
	background-color: white;
	border:1px solid #D8D8D8;
	padding:7px;
	text-align: center;
  	text-decoration: none;
  	display: inline-block;
  	font-size: 12px;
	width:92px;
	margin-top:6px;
	margin-left:10px;
	margin-right:10px;
}
.jeonga-ugift-scbody-request{
	background-color:#f2f2f2;
	margin-top:2%;
}
/* 다른 정보들 박스*/
.jeonga-ugift-gift-receiver-info, .jeonga-ugift-gift-scdispatch, .jeonga-ugift-gift-payment-info{
	margin-top:1%;
	border:1px solid #D8D8D8;
	padding:24px;
}
.jeonga-ugift-gift-receiver-title, .jeonga-ugift-gift-scdispatch-title, .jeonga-ugift-gift-payment-title{
	font-size:16px; 
	font-weight:bold;
}
.jeonga-ugift-gift-receiver-info-left, .jeong-ugift-gift-scdispatch-detail-left, .jeonga-ugift-gift-payment-info-left{
	font-size:14px; 
	font-weight: bold;
	width:111px;
}

.jeonga-ugift-gift-receiver-info-right, .jeong-ugift-gift-scdispatch-detail-right, .jeonga-ugift-gift-payment-info-right{
	font-size:14px; 
	padding:8px 20px;

}
.jeong-ugift-gift-receiver-infotable, .jeong-ugift-gift-scdispatch-detail, .jeong-ugift-gift-payment-infotable{
	margin-top:2%;
}
.jeonga-ugift-gift-final-pay{
	margin-top:2%;
	border-top:1px solid #D8D8D8;
}

.jeonga-ugift-gift-standard-table{
	margin-top:15px;
	margin-left:20px;
	padding:10px;
	background-color:#f2f2f2;
	color:#6E6E6E;
	font-size:12px;
}
.jeonga-ugift-gift-standard-table-left{
	font-weight:bold;
}

</style>
</head>
<body>
<div>
	<!-- 헤더 -->
	<%@ include file="../../include/uHeader.jsp"  %>
	
	<div class="content">
	<!-- 사이드메뉴 -->
	<%@ include file="../../include/uside.jsp" %>
	<!-- 내용 여기다 넣으시오 -->
	
		<div class="uSGiftCheckWrap">
			<div class="jeonga-ugift-sctitle">
				<h2 id="jeonga-ugift-sctitle-text">보낸선물 상세보기</h2>
			</div>
			<!-- 보낸 선물 상세 내역 -->
			<c:forEach var="sendGiftList" items='${sendGiftCheckList}'>
			<table class="jeonga-ugift-sctable">
				<tr>
					<td colspan="3" class="jeonga-ugift-sctable-head">
						<div class="jeonga-ugift-schead">
							<div class="jeonga-ugift-schead-date">${sendGiftList.order_date}</div>
							<div class="jeonga-ugift-schead-divide">|</div>
							<div class="jeonga-ugift-schead-address">${sendGiftList.order_address_input}(유효기간 : 2020-07-31)</div>
					</div></td>
				</tr>
				<tr>
					<td class="jeonga-ugift-sctable-left-top">
						<div class="jeonga-ugift-send-image">
						<img src="<c:url value='/upload/${sendGiftList.art_photo}'/>" style="width: 100px; height:100px; padding:5px;">
						</div>
						<div class="jeonga-ugift-send-order">
						<div class="jeonga-ugift-scbody-title">${sendGiftList.b_art_name}</div>
						<div class="jeong-ugift-scbody-option">${sendGiftList.order_pay_price}원 / ${sendGiftList.b_art_option_count}개</div>
					</div>
					</td>
					<td rowspan="3" class="jeonga-ugift-sctable-middle">
					<div class="jeonga-ugift-scbody-sellerpart">
						<div class="jeonga-ugift-scbody-seller">
						${sendGiftList.writer_brand_name}<br>
						<a href="/bomulsum/user/message.do?writer=${sendGiftList.b_writer_code_seq}" id="jeonga-ugift-scbody-button">메시지로 문의</a>
						</div>
					</div> </td>
					<td rowspan="3" class="jeonga-ugift-sctable-right">
						<div class="jeonga-ugift-scbody-list">
						<button id="jeonga-ugift-scbody-list-address" disabled>배송지 입력</button><br>
						<button id="jeonga-ugift-scbody-list-cancel">주문 취소</button>
					</div> </td>
				</tr>
				<tr>
					<td class="jeonga-ugift-sctable-left">배송비:우편(+500원)<br/>문구 및 디자인 추가:X 도안 그대로</td>
				</tr>
				<tr>
					<td class="jeonga-ugift-sctable-left-bottom">요청사항 <br/>
					<textarea disabled class="jeonga-ugift-scbody-request" cols="75" rows="5">${sendGiftList.order_request}</textarea><br></td>
				</tr>
			</table>
			<!-- 선물 받는분 -->
			<div class="jeonga-ugift-gift-receiver-info">
				<div class="jeonga-ugift-gift-receiver-title">
					선물 받는 분
				</div>
				<table class="jeong-ugift-gift-receiver-infotable">
					<tr>
						<td class="jeonga-ugift-gift-receiver-info-left">받는 분</td>
						<td class="jeonga-ugift-gift-receiver-info-right">${sendGiftList.gift_recipient_name}</td>
					</tr>
					<tr>
						<td class="jeonga-ugift-gift-receiver-info-left">전화</td>
						<td class="jeonga-ugift-gift-receiver-info-right">${sendGiftList.gift_recipient_phone}</td>
					</tr>
					<tr>
						<td class="jeonga-ugift-gift-receiver-info-left">선물메시지</td>
						<td class="jeonga-ugift-gift-receiver-info-right">${sendGiftList.gift_message}</td>
					</tr>
				
				</table>
			</div>
			<!-- 선물 발송 관리 -->
			<div class="jeonga-ugift-gift-scdispatch">
				<div class="jeonga-ugift-gift-scdispatch-title">
					선물발송관리
				</div>
				<table class="jeong-ugift-gift-scdispatch-detail">
					<tr>
						<td class="jeong-ugift-gift-scdispatch-detail-left">발송 상태</td>
						<td class="jeong-ugift-gift-scdispatch-detail-right">${sendGiftList.order_status}</td>
					</tr>
					<tr>
						<td class="jeong-ugift-gift-scdispatch-detail-left">유효기간</td>
						<td class="jeong-ugift-gift-scdispatch-detail-right">2020-07-28</td>
					</tr>
				</table>
			</div>
			
			<!-- 결제정보 -->
			<div class="jeonga-ugift-gift-payment-info">
				<div class="jeonga-ugift-gift-payment-title">
					결제정보
				</div>
				<table class="jeong-ugift-gift-payment-infotable">
					<tr>
						<td class="jeonga-ugift-gift-payment-info-left">결제방식</td>
						<td class="jeonga-ugift-gift-payment-info-right">${sendGiftList.order_payment}</td>
					</tr>
					<tr>
						<td class="jeonga-ugift-gift-payment-info-left">금액</td>
						<td class="jeonga-ugift-gift-payment-info-right">${sendGiftList.order_pay_price}원</td>
					</tr>
					<tr>
						<td class="jeonga-ugift-gift-payment-info-left">배송비</td>
						<td class="jeonga-ugift-gift-payment-info-right">0원</td>
					</tr>
						<tr>
						<td class="jeonga-ugift-gift-payment-info-left">후원</td>
						<td class="jeonga-ugift-gift-payment-info-right">0원</td>
					</tr>
					<tr>
						<td class="jeonga-ugift-gift-payment-info-left">쿠폰 할인</td>
						<td class="jeonga-ugift-gift-payment-info-right">0원</td>
					</tr>
							<tr>
						<td class="jeonga-ugift-gift-payment-info-left">적립금 사용 금액</td>
						<td class="jeonga-ugift-gift-payment-info-right">0원</td>
					</tr>
				</table>
				<div class="jeonga-ugift-gift-final-pay">
					<table class="jeonga-ugift-final-pay-table">
						<tr>
							<td style="font-weight:bold; font-size:16px; width:111px;">최종 결제 금액</td>
							<td style="font-weight:bold; font-size:30px; color:#DF3A01; padding:8px 20px;">${sendGiftList.order_pay_price}원</td>
						</tr>
						<tr>
							<td style="font-weight:bold; font-size:14px; width:111px;">적립금 적립</td>
							<td style="font-weight:bold; font-size:14px; color:#29aae1; padding:8px 20px; ">${sendGiftList.art_point}p</td>
						</tr>
						<tr>
							<td></td>
							<td>
								<table class="jeonga-ugift-gift-standard-table">
									<tr>
									<td class="jeonga-ugift-gift-standard-table-left">적립 기준: </td>
									<td class="jeonga-ugift-gift-standard-table-right">결제 완료 시 적립 예정 상태로 바로 적립</td>
									</tr>
									<tr>
									<td class="jeonga-ugift-gift-standard-table-left">가용 시점: </td>
									<td class="jeonga-ugift-gift-standard-table-right">결제 완료일로부터 7일 후 적립금 사용 가능</td>
									</tr>
								</table>
						</td>
				</table>
				
				</div>
			</div>
			</c:forEach>
		</div>
	</div>
	<!-- 푸터  -->
	<%@ include file="../../include/uFooter.jsp" %>
</div>
</body>
</html>