<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 주문 결제하기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>

$(document).ready(function () {
	$('.dain_payment_customer_info').click(function(){
		if ( $(".dain_payment_customer_info_detail").css("display") == "none" ){
			 $('.dain_payment_customer_info_detail').show();
			 $('.dain_payment_customer_info').css("border-bottom", "none");
		} else if( $(".dain_payment_customer_info_detail").css("display") == "block" ){
			 $('.dain_payment_customer_info_detail').hide();
			 $('.dain_payment_customer_info').css("border-bottom", "1px solid #d9d9d9");
		}
	  });

	$('.dain_ordergoods_title').click(function(){
		
		if ( $(".dain-order-goods-table").css("display") == "none" ){
			 $('.dain-order-goods-table').css("display", "block");
			 $('.dain_ordergoods_title').css("border-bottom", "none");
		} else if( $(".dain-order-goods-table").css("display") == "block" ){
			$('.dain-order-goods-table').hide();
			$('.dain_ordergoods_title').css("border-bottom", "1px solid #d9d9d9");
		}
	
	  });
});

</script>
<style>
.content {
	width: 55%;
	margin-left: auto;
	margin-right: auto;
	padding-top: 36px;
	padding-bottom: 64px;
	display: flex;
}

.dainSection {
	width: 100%;
}

.dainUpTitle {
	margin-bottom: 24px;
	width: 100%; display : flex;
	justify-content: space-between;
	display: flex;
}

body a:link, a:visited, a:hover, a:active {
	text-decoration: none;
	border: none;
}

.dndud_content_title {
	padding-bottom: 4px;
	margin-bottom: 24px;
	position: relative;
	padding-top: 40px;
	display: flex;
	flex-direction: row;
	justify-content: space-between;
}

.dndud_txt_f1 {
	font-size: 24px;
	font-weight: bold;
	color: #333;
	margin: 0px;
}

.dndud_page_loc {
	font-size: 16px;
	font-weight: bold;
	color: #d9d9d9;
	margin-top: 4px;
	list-style: none;
	display: flex;
	align-items: center;
}

.dndud_page_loc li {
	display: flex;
	flex-direction: row;
	margin-left: 8px;
}

.dndud_page_loc li span {
	margin-top: 2px;
	margin-left: 5px;
}

.dndud_page_loc li.active {
	color: #333;
}

.dndud_page_loc i {
	margin-left: 8px;
	display: flex;
	align-items: center;
	font-size: 25px;
}

.dndud_page_loc .icon_num {
	display: flex;
	line-hieght: 24px;
	align-items: center;
	justify-content: center;
	width: 24px;
	height: 24px;
	border-radius: 50%;
	font-size: 10px;
	font-weight: bold;
	font-style: normal;
	border: 1px solid #d9d9d9;
	-webkit-border-radius: 50%;
}

.dndud_page_loc li.active .icon_num {
	border: 0 none;
	background: #1f76bb;
	color: #fff;
}

.dain_payment_customer {
	background-color: white;
	width: 56%;
	
	
}

.dain_flex_title{
	background-color: white;
	border: 1px solid #d9d9d9;
	font-size: 16px;
	font-weight: bold;
	padding: 0px 12px;
	display: flex;
	justify-content: space-between;
}

.dain_payment_customer_info_detail{
	background-color: white;
	border-bottom: 1px solid #d9d9d9;
	border-left: 1px solid #d9d9d9;
	border-right: 1px solid #d9d9d9;
	padding: 0px 12px;
	font-size: 12px;
}
.dain_customer_name{
	color: #22a7af;
}
.dainChButton{
	margin-left: 5px;
	background-color: white;
	border: 1px solid #1f76bb;
	padding: 2px 12px;
	font-size: 12px;
	border-radius: 3px;
	margin-left: 14px;
	color: #1f76bb;
}

.dain_customer_table{
	padding-top: 12px;
}
.dainth{
	width: 24%;
	padding-bottom: 20px;
	color: #666666;
	font-size: 12px;
}
.daintd{
	padding-bottom: 20px;
	font-size: 12px;
}


.dainTitle{
	font-size: 16px;
	font-weight: bold;
	padding: 20px 0px;
}

.dain_payment_address{
	padding: 0px 12px;
	background-color: white;
	border: 1px solid #d9d9d9;
	margin-top: 18px;
}


.dain_tab_button{
	display: flex;
}

.dain_tab_btn{
	background-color: white;
	border: 1px solid #d9d9d9;
	border-radius: 2px;
	width: 100%;
	height: 32px;
	color: #ACACAC;
}

.dainem{
	color: #dd5850;
	font-size: 18px;
	display: inline-block;
	margin-right: 10px;
}

.dainInput{
	background: #fff;
    font-size: 12px;
    line-height: 13px;
    height: 26px;
    min-width: 96%;
    border: 1px solid #d9d9d9;
    border-radius: 3px;
    padding: 2px 8px;
    outline: none;
    
}

.dainBtn{
	background-color: white;
	border: 1px solid #d9d9d9;
	border-radius: 3px;
	padding: 6px 8px;
	outline: none;
	font-size: 12px;
}

.dain_order_detail_p{
	background-color: #dcf8f6;
	color: black;
	padding: 12px 18px;
	font-size: 14px;
	font-weight: bold;
	margin: 0px;
}

.dain_order_detail{
	background-color: #fff;
	border: 1px solid #d9d9d9;

}

.dain-img-bg{
	width: 64px;
	height: 64px;
	background-image: url("../../resources/img/test.png");
	background-size: 64px 64px;
}

.dain_payment_info {
	background-color: white;
	border:2px solid black;
	border-radius: 2px;
	width: 40%;
	height: 700px;
	
}

.dain-area-txt{
	padding: 8px 12px;
	font-size: 14px;
}

.dain-amount-price-area{
	display: flex;
	font-size: 12px;
}

.dain-order-goods-table{
	background-color: #fff;
	border: 1px solid #d9d9d9;
}

.dain-order-artist{
	font-size: 14px;
	font-weight: bold;
	background-color: #dcf8f6;
	padding: 12px 18px;
	text-align: left;
}
.dain-txt-group{
	font-size: 14px;
	font-weight: bold;
}

.dain_goods_name{
	color: #22a7af;
}

.dain-amount-td{
	padding: 8px 18px;
}

.dain-delvery-title{
	font-size: 13px;
	padding: 18px 0px;

}

.dain-delvery-price{
	font-size: 13px;
	padding: 18px 18px 18px 0px;
	font-weight: bold;
	text-align: right;
	
}

.dain-price{
	font-size: 12px;
}

.dain_table_header{
	font-size: 16px;
	padding: 15px 0px 14px;
	margin: 0 22.5px;
	text-align: center;
	border-bottom: 1px solid black;
}

.dain_final_cost{
	padding: 0px 20px;
}
.dain_final_cost table{
	padding-top: 20px;
	padding-bottom: 20px; 
	text-align: justify;
	width: 100%;
	border-bottom: 1px solid #d9d9d9;
}
.dain_final_cost th{
	font-size: 13px;
	font-weight: normal;
	padding: 4px 0px;
	color:#666666;
	width: 70%;
}
.dain_final_cost td{
	text-align: right;
	font-size: 13px;
	font-weight: bold;
	width: 30%;
}

.dain_final_total{
	padding: 0px 20px;
}
.dain_final_total table{
	padding-top: 20px;
	padding-bottom: 20px; 
	text-align: justify;
	width: 100%;
}

.dain_final_total th{
	font-size: 16px;
	width: 50%;
}

.dain_final_total td{
	font-size: 28px;
	width: 50%;
	font-weight: bold;
	color: #dd5850;
	text-align: right;
}
.dain_support{
	padding: 10px 10px;
	margin: 10px 20px;
	border-radius: 3px;
	background-color: #cce5ff;
}

.dain_privacyPolicy{
	padding: 10px 10px;
	margin: 10px 20px;
}

.dain_privacyPolicy_txt{
	font-size: 12px;
	color: #666666;
	background-color: #F8F8F8;
}

.dain_final_payment{
	padding: 0px 20px;
}
.dain_pay_btn{
	width: 100%;
	background-color: #1f76bb;
	color: #fff;
	border: none;
	border-radius: 5px;
	padding: 10px 18px 10px 18px;
	
}
.dain_pay_btn:hover{
	background-color: #1a639d;
}
.dain_pay_btn span{
	font-size: 18px;
}
.dain_pay_btn p{
	margin: 0px;
}

.dibtn, .hoverPointer{
	cursor: pointer;
}

.dibtn:focus{
	outline: none;
}
</style>
</head>
<body>
<div>
	<!-- 헤더 -->
	<%@ include file="../include/uHeader.jsp"  %>
	
	
	
	<div class="content">

	<!-- 내용 여기다 넣으시오 -->
	
	<div class="dainSection">
		
		<div class="dainUpTitle">
			<h2  class="dndud_txt_f1">주문 결제하기</h2>
			<ol class="dndud_page_loc">
            <li>
               <em class="icon_num">1</em>
               <span>장바구니</span>
               <i class="fa fa-angle-right"></i>
            </li>
            <li class="active">
               <em class="icon_num">2</em>
               <span>주문결제</span>
               <i class="fa fa-angle-right"></i>
            </li>
            <li>
               <em class="icon_num">3</em>
               <span>주문완료</span>
            </li>
         </ol>
		</div>
		
		<!-- 왼쪽/오른쪽으로 나눔 -->
		<div style="display: flex; justify-content: space-between;">
		<!-- 왼쪽 영역 -->
		<div class="dain_payment_customer">
		<!-- 주문고객 영역 -->
		<div class="dain_payment_customer_info dain_flex_title hoverPointer" >
		<div class="dainTitle">주문고객</div>
		<p class="dain_customer_name">최다인(010-9170-9406) &nbsp;<i class="fa fa-angle-down" 
		style="color: black; font-weight: bold;"></i></p> 
		</div>
		<!-- 위에 누르면 주문고객 정보 자세히 볼수있음 -->
		<div class="dain_payment_customer_info_detail" style="display: none;">
			<table class="dain_customer_table">
				<tr>
					<td class="dainth">주문자 정보</td>
					<td class="daintd">최다인</td>
				</tr>
				<tr>
					<td class="dainth"><em class="dainem">*</em>전화</td>
					<td class="daintd">010-9170-9406<button class="dainChButton dibtn">변경하기</button></td>
				</tr>
				<tr>
					<td class="dainth"></td>
					<td class="daintd">주문, 배송시 등록된 번호로 SMS를 발송해 드립니다.</td>
				</tr>
			</table>
		</div>
		
		<!-- 주소(배송지) -->
		<div class="dain_payment_address">
			<div class="dainTitle">주소 (배송지)</div>
			<div class="dain_tab_button">
			<div class="dain_tab_button_section1" style="width:33.3%;">
				<button class="dain_tab_btn dibtn" type="button" > 1</button>
				<!-- 		data-address="{
                                                "address_uuid": "eeaf1501-9c42-4328-bc02-70c8b1d9e5ee",
                                                "delivery_name": "최다인",
                                                "delivery_phone": "010-9170-9406",
                                                "delivery_remote": "",
                                                "delivery_zipcode": "12248",
                                                "delivery_address1": "경기 남양주시 다산중앙로81번길 25 (다산동, 다산 이편한세상자이)",
                                                "delivery_address2": "3504동 1203호"
                                            }" -->
		
			</div>
			<div class="dain_tab_button_section2" style="width:33.3%;">
				<button class="dain_tab_btn dibtn" type="button"> 2</button>
			</div>
			<div class="dain_tab_button_section3" style="width:33.3%;">
				<button class="dain_tab_btn dibtn" type="button"> 3</button>
			</div>
			</div>
			
			<!-- 배송지 테이블 -->
			<div class="dain_address_info_root">
			<table class="dainTable" id="dt1">
				<tr class="daintr">
					<td class="dainth td1" style="vertical-align: middle;"><em class="dainem">*</em>받는분</td>
					<td class="daintd td2" style="padding-top: 15px;">
						<input class="dainInput di1" name="addrName1" id="addrName1" type="text" placeholder="받는분 이름을 입력해주세요." 
						autocomplete="off" required="required" data-address="delivery_name" />
					</td>
				</tr>
				<tr class="daintr">
					<td class="dainth" ><em class="dainem">*</em>전화번호</td>
					<td class="daintd" >
						<input class="dainInput di1" name="addrTel1" id="addrTel1" type="text" value="none" autocomplete="off" 
						required="required" />
					</td>
				</tr>
				<tr class="daintr">
					<td class="dainth" style="vertical-align: top;"><em class="dainem">*</em>주소</td>
					<td class="daintd" style="padding-bottom: 15px;">
						<!-- 주소 name에 숫자두개는 앞에숫자가 n번배송지, 뒤에숫자(1-2-3이 우편번호-주소1-주소2 -->
						<input class="dainInput dai1" name="addrAddr11" id="addrAddr11" type="text" 
						placeholder="우편번호" autocomplete="off" readonly="readonly"
						required="required" style="min-width: 30%; max-width: 30%; margin-bottom: 10px;"/>
						<!-- 수정버튼 눌렀을때 아래 버튼이 생김 -->
						<button id="adrBtn" class="dainBtn dibtn" >주소 찾기</button><br>
						<input class="dainInput dai1" name="addrAddr12" id="addrAddr12" type="text" 
						placeholder="기본주소" autocomplete="off" readonly="readonly"
						required="required" style="margin-bottom: 10px;"/><br>
						<input class="dainInput di1" name="addrAddr13" id="addrAddr13" type="text" 
						placeholder="나머지 주소" autocomplete="off" 
						required="required" style="margin-bottom: 10px;"/><br>
					</td>
				</tr>
			</table>
			</div>
			
		</div>
		
		<!-- 주문작품정보 타이틀 -->
		<div class="dain_ordergoods_title dain_flex_title hoverPointer" style="margin-top: 18px;">
			<p>주문 작품 정보</p>
			<p class="dain_goods_name">신데렐라의 시계 팔찌 <i class="fa fa-angle-down" style="color: black; font-weight: bold;"></i></p>
		</div>
		
		<!-- 주문작품정보 상세 -->
		<table class="dain-order-goods-table" style="display: none;">
		<thead>
			<tr>
				<th class="dain-order-artist" colspan="2">
				<div class="dain-textgroup">
				kissy star (키씨스타) 작가님
				</div>
				</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td class="dain-img-area">
					<div class="dain-img-bg"> 
					</div>
				</td>
				<td class="dain-area-txt" style="width: 100%;">
					<div class="dain-txt-group"  >
						<label class="dain-title-txt">신데렐라의 시계 팔찌</label>
					</div>
				</td>
			</tr>
			<tr>
				<td class="dain-amount-td" colspan="2"  style="border-bottom: 1px solid #d9d9d9;">
				<div style="display: flex; justify-content: space-between;">
				<div class="dain-amount-price-area">
					<div>수량 : </div>
					<div style="padding-left: 18px;">1</div> <!-- 수량 받아와야함 -->
					<div>개</div>
				</div>
				<div class="dain-price">18000원</div>
				</div>
				</td>
			</tr>
			<tr>
				<th class="dain-delvery-title">배송비</th>
				<td class="dain-delvery-price">2800원</td> <!-- 여기 값 받아와야함 -->
			</tr>
		</tbody>
		</table>	
		
		
		
		<!-- 끝 왼쪽영역(dain_payment_customer)-->
		</div>
		
		<!-- 오른쪽영역 시작: 결제정보 -->
		<div class="dain_payment_info">
			<h3 class="dain_table_header">결제 정보	</h3>
		
		
		<div class="dain_final_cost">
		<table>
			<tr>
				<th>작품금액</th>
				<td>18,000원</td>
			</tr>
			<tr>
				<th>배송비</th>
				<td>2800원</td>
			</tr>
			<tr>
				<th>할인 혜택</th>
				<td>0원</td>
			</tr>
			<tr>
				<th>제주 / 도서산간 추가비용</th>
				<td>0원</td>
			</tr>
		</table>
		</div>
		
		<div class="dain_final_total">
		<table>
			<tr>
				<th>최종 결제 금액</th>
				<td>20,800원</td>
			</tr>
		</table>
		</div>
		
		<div class="dain_support">
			<label class="dain_support_label">
			<input id="support" type="checkbox" name="is_support" autocomplete="off" class="bp"> 작가님을 후원합니다.</label>
		</div>
		
		<div class="dain_privacyPolicy">
			<label><input type="checkbox" name="privacy_info" autocomplete="off" required="required" class="bp">
	        <em class="dainem">*</em>개인정보 제3자 제공고지</label>
	        <div class="dain_privacyPolicy_txt">
		        ‣ 제공받는 자 : #작가이름#<br>
			‣ 목적 : 판매자와 구매자 사이의 원활한 거래 진행, 상품의 배송을 위한 배송지 확인, 고객상담 및 불만처리 등<br>
			‣ 정보 : 별명, 이름, 전화, 주소<br>
			‣ 보유기간 : 발송완료 후 15일<br>
			<br>
			보물섬은 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 아이디어스는 상품 거래정보 및 거래에 대하여 책임을 지지 않습니다.
	        </div>
		</div>
		
		<div class="dain_final_payment">
		<button id="pay_btn" class="dain_pay_btn dibtn">
          <span>20,800원</span>
          <span>카드 결제</span>
          <p class="point" data-label="point" style="display: block;">예상적립금 : <em>180</em>P</p>
       </button>
       </div>
		<!-- 오른쪽 영역 끝 -->
		</div>
		</div>
		
		
	<!-- dainSection끝 -->
	</div> 
	
	</div>
	<!-- 푸터  -->
	<%@ include file="../include/uFooter.jsp" %>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</html>