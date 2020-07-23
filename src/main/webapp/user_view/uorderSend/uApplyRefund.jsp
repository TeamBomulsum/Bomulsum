<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 환불 신청</title>
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
	font-size: 16px;
	font-weight: bold;
	color: #333;
}

.dndud_content_top{
	width:100%;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	margin-bottom:4%;
}

.dndud_content_top_title{
	display: flex;
	justify-content:left;
}

.dndud_content_main{
	width:100%;
	display:flex;
	border:1px solid #E6E6E6;
	flex-direction: column;
	margin-bottom:3%;
}

.dndud_content_title{
	display:flex;
	border-bottom:1px solid #E6E6E6;
	background-color:#f5f5f5;
	justify-content: space-between;
	flex-direction: row;
	font-size:13px;
}

.dndud_content_title span{
	margin:2% 1% 2% 1%;
}

.dndud_content_title div{
	width:auto;
	display:flex;
	align-items:center;
}

.dndud_content_title div:nth-child(1){
	width:80%;
	display:flex;
	flex-direction: row;
}

.dndud_content_title div:nth-child(2){
	width:20%;
	display:flex;
	flex-direction: row;
	justify-content: flex-end;
	margin-right:1%;
}

.dndud_content_main_article{
	display:flex;
	flex-direction: row;
}

.dndud_content_main_left{
	display:flex;
	flex-direction: column;
	width:70%;
	border-right: 1px solid #E6E6E6;
}

.dndud_content_main_left_first{
	display:flex;
	flex-direction: row;
	border-bottom: 1px solid #E6E6E6;
	padding:3%;
}

.dndud_content_main_left_first div:nth-child(2){
	display:flex;
	flex-direction: column;
	margin-left:2%;
}

.dndud_content_main_left_first div:nth-child(2) span:nth-child(1){
	font-weight:bold;
	font-size:15px;
	margin-bottom:1%;
}

.dndud_content_main_left_first div:nth-child(2) span:nth-child(2){
	font-weight:bold;
	color:gray;
	font-size:13px;
}

.dndud_content_main_left_second{
	display:flex;
	flex-direction: row;
	padding:3% 3% 3% 0;
}

.dndud_content_main_left_second ul{
	margin:0;
	font-size:13px;
	color: gray;
}

.dndud_content_main_left_third{
	width:94%;
	display:flex;
	flex-direction: row;
	padding:3%;
	font-size:13px;
}

.dndud_content_main_left_third div{
	height:80px;
	width:100%;
}

.dndud_content_main_left_third div span{
	font-size:14px;
	font-weight: bold;
	color:gray;
}

.dndud_content_main_left_third div div{
	display:flex;
	align-items: center;
	background-color: #f5f5f5;
	border: 1px solid #E6E6E6;
	height: 50px;
	margin-top:2%;
}

.dndud_content_main_left_third div div span{
	margin:3%;
	color:black;
	font-weight: normal;
}


.dndud_content_main_right{
	display:flex;
	flex-direction: column;
	justify-content:center;
	align-items:center;
	width:30%;
	font-size:15px;
}

.dndud_content_main_right button{
	margin-top:2%;
	padding:2%;
    background-color: white;
    border: 1px solid gray;
    cursor:pointer;
}

.dndud_content_main_right button:focus{
	outline:none;
}

.refundToolTip{
	width:94%;
	padding:2%;
	border-bottom: 1px solid #E6E6E6;
}

.refundTooTip_box{
	background-color: #f5f5f5;
	border: 1px solid #E6E6E6;
	font-size:13px;
	padding:2%;
	display:flex;
	flex-direction:column;
	margin-bottom:2%;
}

.refundTooTip_box span{
	margin-bottom:0.5%;
}

.write_refund_reason{
	width:100%;
	display:flex;
	flex-direction: row;
}

.write_refund_reason select{
	width:30%;
	height:41px;
}

.write_refund_reason input[type="text"]{
	margin-left:1%;
	width:69%;
	height:35px;
}

.cancel_or_apply{
	display:flex;
	width:100%;
	flex-direction:row;
	align-items: center;
	justify-content: center;
}

.cancel_or_apply input[type="button"]{
	font-size:16px;
	margin: 0.2%;
    width: 100px;
    height: 40px;
    cursor:pointer;
}

.cancel_or_apply input[type="button"]:focus{
	outline:none;
}

.cancel_or_apply input[type="button"]:nth-child(1){
	background-color:white;
	border:	1px solid gray;
}

.cancel_or_apply input[type="button"]:nth-child(2){
	background-color:#1f76bb;
	border: 0;
	color:white;
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
		<div class="dndud_content">
		
			<div class="dndud_content_top">
				<div class="dndud_content_top_title">
					<a class="dndud_txt_f1">취소신청</a>
				</div>
			</div>
			
			<div class="dndud_content_main">
				<div class="dndud_content_title">
					<div>
						<span>2020-07-21</span>|<span>배송주소 입력완료</span>
					</div>
					<div>
						<span>목정아님에게 보낸 선물 ></span>
					</div>
				</div>
				<div class="dndud_content_main_article">
					<div class="dndud_content_main_left">
						<div class="dndud_content_main_left_first">
							<div>
								<img src="<c:url value='/resources/img/earings.jpg'/>" style="width:75px; height:75px;">
							</div>
							<div>
								<span>(카페) 주문제작 감성 일러스트 엽서</span>
								<span>1,500원 / 1개</span>
							</div>
						</div>
						<div class="dndud_content_main_left_second">
							<ul>
								<li>배송비 : 우편 (+500원)</li>
								<li>문구 및 디자인추가 : X 도안 그대로</li>
							</ul>
						</div>
						<div class="dndud_content_main_left_third">
							<div>
								<span>요청사항</span>
								<div>
									<span>4asdfasdfasdfasdfasdfasdfa</span>
								</div>
							</div>
						</div>
					</div>
					<div class="dndud_content_main_right">
						<span>#작가</span>
						<button id="goToMessage">메시지로 문의</button>
					</div>
				</div>
			</div>
			
			<div class="dndud_content_top">
				<div class="dndud_content_top_title">
					<a class="dndud_txt_f2">환불 신청전 판매 작가님과 협의해 주세요.</a>
				</div>
				
				<div class="refundToolTip">
					<div class="refundTooTip_box">
						<span>- 협의 없이 신청시 거부 될 수 있습니다.</span>
						<span>- 선택하신 사유에 의해 책임 여부가 결정되며, 이에 따른 추가 배송비가 발생 될 수 있습니다.</span>
					</div>
					
					<div class="write_refund_reason">
						<select>
							<option>
								다른 작품으로 재주문
							</option>
						</select>
						<input type="text" placeholder="상세 사유를 입력해 주세요." >
					</div>
				</div>
			</div>
			
			<div class="cancel_or_apply">
				<input type="button" value="취소">
				<input type="button" value="신청">
			</div>
	
		</div>
	
	</div>
	<!-- 푸터  -->
	<%@ include file="../include/uFooter.jsp" %>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
</script>
</html>