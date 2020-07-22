<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 내역</title>
<style>

.content {
	width: 70%;
	margin-left: auto;
	margin-right: auto;
	padding-top: 36px;
	padding-bottom: 64px;
	display: flex;
	flex-direction: row;
}

.dndud_content{
	width:100%;
	margin-left: 2%;
}

.dndud_txt_f1{
	font-size: 24px;
	font-weight: bold;
	color: #333;
}

.dndud_content_top{
	width:100%;
	display: flex;
	flex-direction: row;
	justify-content: space-between;
}

.dndud_content_top_title{
	display: flex;
	justify-content:left;
}

.dndud_content_top_date{
	display: flex;
	justify-content:right;
}

.dndud_content_tab_group{
	width:100%;
	height: 65px;
	margin-top: 7%;
	display: flex;
	flex-direction: row;
	color: #acacac;
}

.dndud_content_tab_group .onTab{
	position: relative;
	width:33.33333%;
	display: flex;
	justify-content:center;
	align-items: center;
	color: black;
	font-weight:bold;
	border: 2px solid #333;
	border-bottom:0;
}

.dndud_content_tab_group a{
	width:33.33333%;
	display: flex;
	justify-content:center;
	align-items: center;
	background-color:#f5f5f5;
	border: 1px solid #d9d9d9;
	border-bottom-width: 2px;
    border-bottom-color: #333;
    cursor: pointer;
}

.dndud_noContent{
	margin-top: 7%;
	margin-bottom: 2%;
	display:flex;
	justify-content: center;
	flex-direction: column;
	align-items: center;
}

.dndud_noContent .no_order_icon{
	width:100%;
	height:120px;
	display:flex;
	justify-content: center;
}

.dndud_noContent a{
    display: flex;
    justify-content: center;
    height: 48px;
    margin: 36px auto 0;
    align-items: center;
    border: 1px solid #1f76bb;
    padding: 0 24px;
    color: #1f76bb;
    cursor:pointer;
}

.dndud_noContent a:hover{
	background-color: #1f76bb;
	color:white;
}


.dndud_allContents{
	width: 100%;
	height: auto;
	display: flex;
	flex-direction: column;
	margin-top: 3%;
}

.dndud_semicontent{
	width: 100%;
	height: auto;
	display: flex;
	flex-direction: column;
	border: 1px solid #d9d9d9;
	background-color:#f5f5f5;
	margin-bottom: 3%;
}

.dndud_semicontent_top{
	font-size: 15px;
	width: 98%;
	height: 40px;
	display: flex;
	justify-content: space-between;
	padding: 1%;
}

.dndud_semicontent_top .date{
	display: flex;
	align-items: center;
}

.dndud_semicontent_top .price{
	font-weight: bold;
	display: flex;
	align-items: center;
	text-decoration: none;
}

.dndud_semicontent_top .price:hover{
	background-color:white;
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
	word-break: break-all;
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
	width:3%;
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

#dndud_questionIcon{
	font-size:10px;
	cursor: pointer;
}


input[type="button"]{
	width:80%;
	background-color:white;
	border: 1px solid #d9d9d9;
	padding:5%;
	margin-top:5%;
	cursor: pointer;
}


#purchaseReview{
	background-color: #1f76bb;
	color: white;
}

#iconMemo{
	width:150px;
	height:50px;
	display:block;
	position:relative;
	right:-50px;
	z-index:1;
	border: dashed;
}

</style>
</head>
<body>
<div>
<div id="iconMemo">최근 1개월 내에 주문건수</div>
	<!-- 헤더 -->
	<%@ include file="../include/uHeader.jsp"  %>
	
	
	<div class="content">
	<!-- 사이드메뉴 -->
		<%@ include file="../include/uside.jsp" %>
		<!-- 내용 여기다 넣으시오 -->
		<div class="dndud_content">
		
			<div class="dndud_content_top">
				<div class="dndud_content_top_title">
					<a class="dndud_txt_f1">주문 내역</a>
				</div>
				<div class="dndud_content_top_date">
					<select><option>2020 년</option></select>
				</div>
			</div>
			<div class="dndud_content_tab_group">
				<span class="onTab">작품<i id="dndud_questionIcon" class="far fa-question-circle"></i></span>
				<a>온라인 클래스</a>
				<a>오프라인 클래스</a>
			</div>
			
			<!-- 작품 없을경우
			<div class="dndud_noContent">
				<span class="no_order_icon"><img style="width:120px; height:120px" src="<c:url value='/resources/img/noFile.png'/>" ></span>
				<p style="margin-bottom:4%; font-size: 16px; color: #666">주문하신 적이 없네요. (이럴수가!)</p>
				<a>작품 구경하러 가기</a>
			</div>
			 -->
			 
			<!-- 작품 있을경우 -->
			<div class="dndud_allContents">
				<div class="dndud_semicontent">
					<div class="dndud_semicontent_top">
						<a class="date">2020-07-21</a>
						<a class="price" href="#">1,500원 ></a>
					</div>
					<div class="dndud_semicontent_main">
						<div class="item">
							<div class="img">
								<img src="<c:url value='/resources/img/test.png'/>" style="width:100px; height:100px">
							</div>
							<div class="writeAboutItem">
								<div class="itemTitle">
									<p>(카페) 주문제작 감성 일러스트 엽서</p>
								</div>
								<div class="aboutItem">
									<p>배송비 : 우편(+ 500원) / 문구 및 디자인추가 : X도안 그대로</p>
									<span>1개</span>
								</div>
							</div>
						</div>
						<div class="aboutW">
							<a>#작가#</a>
							<input type="button" value="메시지로 문의">
						</div>
						<div class="decision">
							<input type="button" value="구매취소">
						</div>
					</div>
				</div>
				
				<div class="dndud_semicontent">
					<div class="dndud_semicontent_top">
						<a class="date">2020-04-20</a>
						<a class="price"  href="#">13,300원 ></a>
					</div>
					<div class="dndud_semicontent_main">
						<div class="item">
							<div class="img">
								<img src="<c:url value='/resources/img/test.png'/>" style="width:100px; height:100px">
							</div>
							<div class="writeAboutItem">
								<div class="itemTitle">
									<p>40% 어버이날 예약할인 / 한송이세송이 카네이션 꽃다발</p>
								</div>
								<div class="aboutItem">
									<p>송이/색상 : 1송이 베리핑크 / 포장지 : 아이보리(연베이지색) / 프리저브드 용돈봉투 : 안할게요 / 예약출고 : 5월 4일</p>
									<span>1개</span>
								</div>
								<div class="aboutItem">
									<p>송이/색상 : 1송이 딥레드 / 포장지 : 핑크(분홍색) / 프리저브드 용돈봉투 : 안할게요 / 예약출고 : 5월 4일</p>
									<span>1개</span>
								</div>
							</div>
						</div>
						<div class="aboutW">
							<a>#작가#</a>
							<input type="button" value="메시지로 문의">
						</div>
						<div class="decision">
							<input id="purchaseReview" type="button" value="구매후기 수정">
							<input type="button" value="발송 정보 조회">
						</div>
					</div>
				</div>
				
			</div>
			
		</div>
		
	
	</div>
	<!-- 푸터  -->
	<%@ include file="../include/uFooter.jsp" %>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	$(function(){
		$("#dndud_questionIcon").mouseover(function(event){
			x = event.pageX;
			y = event.pageY;
			console.log(x + y);
		});
		
		$("#dndud_questionIcon").mouseleave(function(){
			
		});
	});
</script>
</html>