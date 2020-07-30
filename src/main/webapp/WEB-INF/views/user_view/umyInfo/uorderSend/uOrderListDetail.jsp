<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 주문 상세보기</title>
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

.dndud_content{
	width:80%;
	margin-left: 2%;
}

.dndud_txt_f1{
	font-size: 24px;
	font-weight: bold;
	color: #333;
}

.dndud_txt_f2{
	font-size: 17px;
	font-weight: bold;
	color: #333;
}

.dndud_content_top{
	width:100%;
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	margin-bottom: 4%;
}

.dndud_content_top_title{
	display: flex;
	justify-content:left;
}

.dndud_content_table{
	width: 100%;
	display: flex;
	justify-content:center;
	border: 1px solid #d9d9d9;
	flex-direction: column;
	margin-bottom: 4%;
}

.dndud_content_table_top{
	background-color: #f5f5f5;
	display: flex;
	flex-direction: row;
	font-size: 13px;
}

.dndud_content_table_top span:nth-child(1){
	display: flex;
	justify-content: center;
	border-right: 1px solid #d9d9d9;
	border-bottom: 1px solid #d9d9d9;
	height: 40px;
	width: 70%;
	align-items: center;
}

.dndud_content_table_top span:nth-child(2){
	display: flex;
	justify-content: center;
	border-right: 1px solid #d9d9d9;
	border-bottom: 1px solid #d9d9d9;
	height: 40px;
	width: 15%;
	align-items: center;
}

.dndud_content_table_top span:nth-child(3){
	display: flex;
	justify-content: center;
	border-bottom: 1px solid #d9d9d9;
	height: 40px;
	width: 15%;
	align-items: center;
}

.dndud_semicontent_main{
	font-size: 15px;
	width: 100%;
	display: flex;
	flex-direction: row;
	background-color:white;
}

.dndud_semicontent_main .item{
    width: 70%;
    max-width: 70%;
    display: flex;
    flex-direction: row;
}

.dndud_semicontent_main .item .writeAboutItem{
	display:flex;
	width:100%;
	flex-direction: column;
	max-width: 100%;
	
}

.itemTitle{
	display:flex;
	flex-direction: row;
	word-break: break-all;
	align-items: center;
}
  
.itemTitle p{
	font-weight: bold; 
	margin-bottom:0;
}

.aboutItem{
	margin-bottom:2%;
	display:flex;
	flex-direction: row;
	justify-content: space-between;
}

.aboutItem p{
	font-size:13px;
	margin-bottom:0;
	word-break: break-all;
	padding-right:2%;
	width:80%;
}

.aboutItem span{
	width:6%;
	font-size:13px;
	margin-bottom:0;
	padding-right:2%;
	margin-top: 2.5%;
}

.dndud_semicontent_main .aboutW{
    width: 15%;
    display: flex;
    justify-content: center;
    flex-direction: column;
    border-left: 1px solid #d9d9d9;
    align-items: center;
    font-size:13px;
}

.dndud_semicontent_main .decision{
	width: 15%;
    display: flex;
    justify-content: center;
    flex-direction: column;
    border-left: 1px solid #d9d9d9;
    align-items: center;
    font-size:13px;
}

input[type="button"]{
	width:80%;
	background-color:white;
	border: 1px solid #d9d9d9;
	padding:5%;
	margin-top:5%;
	cursor: pointer;
}

.orderStat{
	padding:0 1%;
	font-size : 10px;
	color: #2dabb3;
	border: 1px solid #2dabb3;
	border-radius: 5px / 5px;
	margin-left:2%;
	margin-top:2%;
}

.clientRequest{
	height:70px;
	padding-bottom: 2%;
}

.clientRequestValue{
	font-size:16px;
	width:95%;
	height:90%;
	resize:none;
}

.dndud_about_send{
	font-size:13px;
	width:100%;
	display:flex;
	flex-direction: column;
	margin-bottom:4%;
}

.dndud_about_send_row{
	width:100%;
	display:flex;
	flex-direction: row;
	border-bottom: 1px solid #d9d9d9;
	height: 45px;
}

.dndud_about_send_row:nth-child(1){
	border-top: 1px solid #d9d9d9;
}

.dndud_about_send_row_first{
	background-color:#f5f5f5;
	width:15%;
	color: #6E6E6E;
	font-weight: bold;
	padding-left: 2%;
	padding-top: 1.5%;
}

.dndud_about_send_row_second{
	width:85%;
	color: black;
	padding-left: 2%;
	padding-top: 1.5%;
}

.semi_title{
	margin-bottom:2% !important;
}

.dndud_about_pay{
	width:100%;
	height:450px;
	display:flex;
	flex-direction: row;
	border: 1px solid gray;
	font-size: 13px;
}

.dndud_about_pay_child{
	width:50%;
	height: 100%;
	display: flex;
	flex-direction: column;
}

.dndud_about_pay_foot{
	width: 100%;
	height: 15%;
	border-top: 1px solid gray;
	display:flex;
	justify-content: space-between;
}

.dndud_about_pay_foot span{
	margin:3%;
	display:flex;
	align-items: center;
}

.dndud_about_pay_foot div{
	margin:3%;
	display:flex;
	align-items:center;
	color:#1f76bb;
	font-size:25px;
	font-weight: bold;
}

.dndud_about_pay_foot span:nth-child(2){
	font-weight: bold;
	font-size: 15px;
}

.dndud_about_pay_child:nth-child(1){
	border-right: 1px solid gray;
}

.dndud_about_pay_info{
	width:100%;
	height: 85%;
	border-right: 1px solid gray;
}

.dndud_about_pay_info_detail{
	width: 100%;
	height: 55%;
	background-color:#f5f5f5;
}

.dndud_info_detail{
	display:flex;
	flex-direction: column;
	margin:3%;
	margin-top:4%;
}

.detail_row{
	display:flex;
	flex-direction: row;
	justify-content: space-between;
	margin-bottom: 3%;
}

.detail_row:nth-last-child(1){
	margin-bottom:0;
}

.dndud_about_pay_saved{
	width:100%;
	height: 30%;
	border-top: 1px solid gray;
}

.pay_info_who{
	margin-left:3%;
	margin-top:4%;
}

.pay_info_content{
	margin:3%;
	padding:3%;
	display:flex;
	flex-direction:column;
	background-color:#f5f5f5;
}

.pay_info_content  .pay_row{
	display:flex;
	justify-content: space-between;
	margin-bottom:2%;
}
.pay_info_content .pay_row:nth-last-child(1){
	margin-bottom:0;
}

.money_saved{
	margin:3%;
	display:flex;
	flex-direction:column;
}

.money_saved_top{
	font-weight:bold;
	align-items: center;
	display:flex;
	justify-content: space-between;
	margin-bottom:3%;
}

.money_saved_top div:nth-last-child(1){
	font-size:20px;
	color:#2dabb3;
}

.money_saved_row{
	display:flex;
	justify-content: space-between;
	margin-bottom:1%;
}

.money_saved_row a:nth-child(1){
	color:gray;
}

.money_saved_row a:nth-child(2){
	font-weight: bold;
	
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
		<div class="dndud_content">
		
			<div class="dndud_content_top">
				<div class="dndud_content_top_title">
					<a class="dndud_txt_f1">주문 상세보기</a>
				</div>
			</div>
			
			<div class="dndud_content_table">
				<div class="dndud_content_table_top">
					<span style="width:70%;">작품</span>
					<span style="width:15%;">판매작가</span>
					<span style="width:15%;"></span>
				</div>
				<div class="dndud_semicontent_main">
					<div class="item">
						<div class="img">
							<img src="<c:url value='/resources/img/test.png'/>" style="width:100px; height:100px">
						</div>
						<div class="writeAboutItem">
							<div class="itemTitle">
								<p>(카페) 주문제작 감성 일러스트 엽서</p>
								<p class="orderStat">결제 완료</p>
							</div>
							<div class="aboutItem">
								<p>배송비 : 우편(+ 500원) / 문구 및 디자인추가 : X도안 그대로</p>
								<span>1개</span>
							</div>
							<div class="clientRequest">
								<textarea class="clientRequestValue" readonly>4</textarea>
							</div>
						</div>
					</div>
					<div class="aboutW">
						<a>#작가#</a>
						<input type="button" value="메시지로 문의">
					</div>
					<div class="decision">
						<input type="button" value="환불요청">
					</div>
				</div>
			</div>
	
			<div class="dndud_content_top semi_title">
				<div class="dndud_content_top_title">
					<a class="dndud_txt_f2">배송 정보</a>
				</div>
			</div>
			
			<div class="dndud_about_send">
				<div class="dndud_about_send_row">
					<div class="dndud_about_send_row_first">
						<span>받는분</span>
					</div>
					<div class="dndud_about_send_row_second">
						<span id="#" >정아</span>
					</div>
				</div>
				<div class="dndud_about_send_row">
					<div class="dndud_about_send_row_first">
						<span>전화</span>
					</div>
					<div class="dndud_about_send_row_second">
						<span id="#" >01057140716</span>
					</div>
				</div>
				<div class="dndud_about_send_row">
					<div class="dndud_about_send_row_first">
						<span>안심번호</span>
					</div>
					<div class="dndud_about_send_row_second">
						<span id="#" >050-4924-9885</span>
					</div>
				</div>
				<div class="dndud_about_send_row">
					<div class="dndud_about_send_row_first">
						<span>주소</span>
					</div>
					<div class="dndud_about_send_row_second">
						<span id="#" >01776 서울 노원구 섬발로 229 (하계동, 극동, 건영, 벽산아파트) 5동 1212호</span>
					</div>
				</div>
			</div>
			
			
			<div class="dndud_content_top semi_title">
				<div class="dndud_content_top_title">
					<a class="dndud_txt_f2">결제 정보</a>
				</div>
			</div>
			
			<div class="dndud_about_pay">
				<div class="dndud_about_pay_child">
					<div class="dndud_about_pay_info">
						<div class="pay_info_who"><a># 작가님</a></div>
						<div class="pay_info_content">
							<div class="pay_row">
								<a>(카페) 주문제작 감성 일러스트 엽서</a>
								<div>
									<a>1,500</a><a>원</a>
								</div>
							</div>
							<div class="pay_row">
								<a>배송비</a>
								<div>
									<a>0</a><a>원</a>
								</div>
							</div>
							<div class="pay_row">
								<a>제주 / 도서산간 추가비용</a>
								<div>
									<a>0</a><a>원</a>
								</div>
							</div>
							<div class="pay_row">
								<a>할인쿠폰</a>
								<div>
									<a>0</a><a>원</a>
								</div>
							</div>
							<div class="pay_row">
								<a>배송비 할인쿠폰</a>
								<div>
									<a>0</a><a>원</a>
								</div>
							</div>
						</div>
					</div>
					<div class="dndud_about_pay_foot">
						<span>결제방법</span>
						<span>네이버페이</span>
					</div>
				</div>
				<div class="dndud_about_pay_child">
					<div class="dndud_about_pay_info_detail">
						<div class="dndud_info_detail">
							<div class="detail_row">
								<a>작품금액</a>
								<div>
									<a>1,500</a><a>원</a>
								</div>
							</div>
							<div class="detail_row">
								<a>배송비</a>
								<div>
									<a>0</a><a>원</a>
								</div>
							</div>
							<div class="detail_row">
								<a>제주 / 도서산간 추가비용</a>
								<div>
									<a>0</a><a>원</a>
								</div>
							</div>
							<div class="detail_row">
								<a>작가쿠폰할인</a>
								<div>
									<a>0</a><a>원</a>
								</div>
							</div>
							<div class="detail_row">
								<a>보물섬 VIP 클럽</a>
								<div>
									<a>0</a><a>원</a>
								</div>
							</div>
							<div class="detail_row">
								<a>보물섬 쿠폰</a>
								<div>
									<a>0</a><a>원</a>
								</div>
							</div>
							<div class="detail_row">
								<a>작가 후원하기</a>
								<div>
									<a>0</a><a>원</a>
								</div>
							</div>
						</div>
					</div>
					<div class="dndud_about_pay_saved">
						<div class="money_saved">
							<div class="money_saved_top">
								<a>적립금 적립</a>
								<div>
									<a>7</a><a>P</a>
								</div>
							</div>
							<div class="money_saved_row">
								<a>적립기준</a>
								<a>결제 완료시 적립 예정 상태로 바로 적립</a>
							</div>
							<div class="money_saved_row">
								<a>가용시점</a>
								<a>작품 발송일로부터 7일 후 적립금 사용 가능</a>
							</div>
							<div class="money_saved_row">
								<a>유효기간</a>
								<a>적립일로부터 6개월</a>								
							</div>
						</div>
					</div>
					<div class="dndud_about_pay_foot">
						<span>총 결제 금액</span>
						<div><a>1,500</a>원</div>
					</div>
				</div>
			</div>
		
		</div>
	
	</div>
	<!-- 푸터  -->
	<%@ include file="../../include/uFooter.jsp" %>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</html>