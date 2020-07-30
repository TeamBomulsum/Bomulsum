<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value='/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet"	type="text/css">
<meta charset="UTF-8">
<title>보물섬 | 장바구니</title>
</head>
<style>
.dndud_content{
	width:60%;
	margin: 0 auto;
}

.dndud_content_title{
	padding-bottom: 4px;
    margin-bottom: 24px;
    position: relative;
    padding-top: 40px;
    display:flex;
    flex-direction: row;
    justify-content: space-between;
}

.dndud_txt_f1{
    font-size: 24px;
    font-weight: bold;
    color: #333;
}

.dndud_page_loc{
    font-size: 16px;
    font-weight: bold;
    color: #d9d9d9;
    margin-top: 4px;
    list-style:none;
	display: flex;
	align-items: center;
}

.dndud_page_loc li{
	display: flex;
	flex-direction:row;
	margin-left: 8px;
}

.dndud_page_loc li span{
	margin-top: 2px;
    margin-left: 5px;
}

.dndud_page_loc li.active{
	color:#333;
}

.dndud_page_loc i{
	margin-left: 8px;
    display: flex;
	align-items: center;
	font-size: 25px;
}

.dndud_page_loc .icon_num{
	display: flex;
	line-hieght:24px;
	align-items: center;
    justify-content: center;
	width:24px;
	height:24px;
	border-radius:50%;
	font-size:10px;
	font-weight:bold;
	font-style:normal;
	border: 1px solid #d9d9d9;
	-webkit-border-radius: 50%;
}


.dndud_page_loc li.active .icon_num{
	border:0 none;
	background: #1f76bb;
	color: #fff;
}

.shopcart{
	width:100%;
	display:flex;
	flex-direction: column;
}

.shopcart table{
	border:1px solid #eaeaea;
	margin-bottom: 2%;
}

.shopcart th{
	background-color: #dcf8f6;
}

.shopcart_title{
	padding:12px 0;
	display:flex;
	flex-direction:row;
    align-items: center;
    cursor:pointer;
    width: fit-content;
}


.txt_group{
	display:flex;
	flex-direction:column;
    font-size: 14px;
    color:#333;
    align-items: flex-start;
}

.txt_group a{
	color: #999;
    font-size: 12px;
    font-weight: normal;
}

.chkbox{
	margin:16px;
    height: 18px;
    width: 18px;
}

.imgbg{
	width:64px;
	height:64px;
	border-radius:4px;
	background-image: url(../../resources/img/shopcart_test.jpg);
	background-repeat: no-repeat;
	background-size: 100%;
}

.area_img{
	display:flex;
	flex-direction: row;
	padding-top: 8px;
}

.area_img .chkbox{
	margin-top: 0px;
}

.area_txt{
	padding-top: 8px;
    padding-left: 8px;
}

.content_area_first{
    display: flex;
    flex-direction: row;
    align-items: center;
}

.area_txt .txt_group{
	font-weight:bold;
}

.area_detail{
	padding-top: 8px;
	padding-right: 18px;
    padding-bottom: 8px;
    padding-left: 125px;
}

.list_option{
	margin-bottom: 8px;
	list-style: none;
	font-size:12px;
	padding:0;
	
}

.list_option li{
	padding:0;
	margin:0;
	margin-bottom:10px;
	display:flex;
	flex-direction: row;
	justify-content: space-between;
}

.option_txt{
	font-size: 12px;
    color: #666;
    width: 75%;
    min-height: 18px;
    display: flex;
    align-items: center;
}

.split{
    width: 500px;
    display:flex;
}

.split2{
	display:flex;
	width: 250px;
    align-items: center;
    justify-content: flex-end;
}

.input_number{
	margin-left: 5px;
	font-size: 12px;
    height: 24px;
    line-height: 24px;
}

.input_number label{
	margin-right: 8px;
}

.input_number>*{
	display: block;
    float: left;
    background: #fff;
    color: #333;
    height: 24px;
    font-size: inherit;
}

.input_number button{
	border: 1px solid #ccc;
}

.input_area{
    width: 36px;
    border: 1px solid #ccc;
    border-left: 0 none;
    border-right: 0 none;
    height: 100%;
    overflow: hidden;
    height:22px;
}

.prd-count{
	height: 22px;
	text-align: center;
	width: 100%;
    line-height: 24px;
    overflow: hidden;
    outline: none;
    border: 0 none;
    margin: 0 !important;
    padding: 0 !important;
}
input[type="number"]::-webkit-outer-spin-button, 
input[type="number"]::-webkit-inner-spin-button { 
	-webkit-appearance: none; 
	-moz-appearance: none; 
	appearance: none; 
}

.cost_text{
    font-size: 15px;
    color: #333;
    font-weight: bold;
}

.btn_group{
	font-size:0;
	margin-left:15px;
}

.btn_group>*{
	padding:0;
	font-size:15px;
    color: #dd5850;
    border-radius: 0;
    border: 1px solid #dd5850;
    padding: 0 8px;
    line-height: 26px;
    background-color: white;
}

.btn_group>*:hover{
	background-color:#f5f5f5;
}

button{
	cursor: pointer;
}

input[type="checkbox"]{
	cursor:pointer;
}

button:focus{
	outline:none;
}

.btn_group button:nth-child(1){
	border-right: 0 none;
    -webkit-border-top-left-radius: 50%;
    -moz-border-radius-topleft: 50%;
    border-top-left-radius: 50%;
    -webkit-border-bottom-left-radius: 50%;
    -moz-border-radius-bottomleft: 50%;
    border-bottom-left-radius: 50%;
    padding-left: 10px;
}

.btn_group button:nth-child(2){
	-webkit-border-top-right-radius: 50%;
    -moz-border-radius-topright: 50%;
    border-top-right-radius: 50%;
    -webkit-border-bottom-right-radius: 50%;
    -moz-border-radius-bottomright: 50%;
    border-bottom-right-radius: 50%;
    padding-right: 10px;
}

.order_request_box{
	width:100%;
	height:82px;
	overflow: hidden;
	display:flex;
	
}

.order_request_textarea{
    left: 0;
    right: 0;
    width:100%;
    height: 82px;
    transition: width,.3s,ease;
    margin-bottom:2%;
    position:relative;
    display:flex;
}

.order_request_textarea textarea{
    width: 100%;
    height: 72px;
    border: 1px solid #b4b4b4;
    border-radius: 2px;
    line-height: 1.5;
    padding:4px 30px 4px 12px;
    resize: none;
	text-indent: 0;
    font-size: 12px;
    font-weight: bold;
    color: #333;
}

.order_request_textarea textarea::placeholder{
    color: #dd5850;
}

.order_request_textarea textarea:focus{
    outline: none;
    border-color: #22a7af;
}

.ui_field_chars{
	position:absolute;
	right:20px;
	bottom:10px;
	font-size:12px;
	color:#999;
	font-style:normal;
}

.ui_filed_button{
    color: #22a7af;
    line-height: 78px;
    width: 10%;
    height: 82px;
    right: 0;
    display:none;
    justify-content: center;
    background-color: white;
    border: 1px solid #b4b4b4;
}

.ui_filed_button:hover{
	background-color:#f5f5f5;
}

.delivery_cost td{
	font-size: 13px;
    font-weight: bold;
    color:#666;
	padding:18px 0;
	border-top: 1px solid #eaeaea;
}

.delivery_cost td:first-child{
	padding-left:18px;
}

.delivery_cost td:last-child{
	padding-right:18px;
	text-align: right;
}

.checkAll{
	display:flex;
	flex-direction:row;
	align-items: center;
	margin-bottom:18px;
}

.checkAll label{
	display:flex;
	flex-direction:row;
	align-items: center;
	cursor:pointer;
}

.checkAll input[type="checkbox"]{
	margin:0 10px 0 0;
}

.checkAll span{
	font-size:12px;
	color:#333;
	margin-right: 15px;
}

.checkAll a{
	font-weight:bold;
}

.deleteChoice{
	padding:2px 8px;
	border: 1px solid #d9d9d9;
	background-color: #fff;
	border-radius: 2px;
	cursor:pointer;
}

.deleteChoice:hover{
	outline: none;
	background: #f5f5f5;
	border-color: #d9d9d9;
}

.totalBox{
	width:100%;
	border-top:2px solid #333;
	border-radius:2px;
}

.totalBox .total_box_top{
	border-left:2px solid #333;
	border-right:2px solid #333;
	border-bottom:1px solid #ccc;
	display:flex;
	flex-direction:row;
	align-items: center;
	justify-content: space-around;
	padding: 18px 0;
	color: #666;
    font-size: 13px;
}

.totalBox .total_box_price{
	border-left:2px solid #333;
	border-right:2px solid #333;
	border-bottom: 2px solid #333;
	display:flex;
	flex-direction:row;
	align-items: center;
	justify-content: space-around;
	padding: 30px 0;
	margin-bottom: 25px;
    font-size: 30px;
    font-weight: bold;
}

.total_box_price div:nth-child(5){
	color: #dd5850;
}

.total_box_decision div{
	display:flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	font-size:18px;
	margin-bottom:5%;
}

.order_All{
	padding: 10px 65px;
	border: 1px solid #d9d9d9;
	border-radius: 2px;
	color:#333;
	cursor:pointer;
	margin-right:9px;
}

.order_All:hover{
    outline: none;
    background: #f5f5f5;
    border-color: #d9d9d9;
}

.order_Choice{
	padding: 10px 56px;
	background-color: #1f76dd;
	color:#fff;
	border:1px solid #1f76dd;
	cursor:pointer;
	border-radius: 2px;
	margin-left:9px;
}

.order_Choice:hover{
	background-color: #1f76bb;
}
</style>
<style>
.detail-modal {
	width: 100%;
	height: 100%;
	position: fixed;
	top: 0px;
	left: 0px;
	z-index: 1000;
	display: none;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	background: rgba(0, 0, 0, 0.6);
}

.report-modal__area {
	width: 470px;
	padding: 30px;
	background: rgb(255, 255, 255);
}

.reoprt-modal__head {
	display: flex;
	-webkit-box-pack: justify;
	justify-content: space-between;
	align-items: flex-start;
}

.report-modal__title {
	display: flex;
	-webkit-box-pack: justify;
	justify-content: flex-end;
}

.report-modal__subject {
	font-size: 18px;
	padding-right: 140px;
}

.report-modal__close {
	background-color: transparent;
	border: 0;
	color: red;
	font-size: 20px;
	cursor: pointer;
}

.about_article {
	margin-top: 15px;
	border-top: 2px solid #555;
	padding-top: 15px;
	display: flex;
	flex-direction: column;
}

.about_article_detail {
	display: flex;
	flex-direction: row;
}

.article_img {
	width: 64px;
	height: 64px;
	border-radius: 2px;
	background-image: url(../../resources/img/shopcart_test.jpg);
	background-repeat: no-repeat;
	background-size: 100%;
	margin-right: 10px;
}

.article_text {
	display: flex;
	flex-direction: column;
	justify-content: center;
	font-size: 20px;
	font-weight: bold;
	color: #333;
}

.article_text span:nth-child(2) {
	color: #dd5850;
}

.article_text span:nth-child(2) a {
	font-size: 11px;
	color: #999;
	text-decoration: line-through;
}

.now_select_option {
	display: flex;
	flex-direction: column;
	padding-top: 15px;
	font-size: 11px;
	color: #666;
}

.now_select_option a {
	color: #22a7af;
	margin-bottom: 5px;
}

.now_select_option div {
	padding: 8px 16px;
	margin-bottom: 18px;
	border: 1px solid #d9d9d9;
	background: #f5f5f5;
	border-radius: 2px;
	font-size: 11px;
	color: #666;
}

.update_option {
	display: flex;
	flex-direction: column;
	font-size: 12px;
	color: #666;
}

.update_option a {
	margin-bottom: 5px;
}

.update_option select {
	padding: 5px;
}

.update_option select:focus {
	outline: none;
}

.buttons {
	margin-top: 18px;
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
}

.buttons span {
	padding: 10px 16px;
	font-size: 12px;
	cursor: pointer;
}

.buttons span:nth-child(1) {
	margin-right: 5px;
	border: 1px solid #d9d9d9;
	border-radius: 2px;
	background-color: #fff;
}

.buttons span:nth-child(1):hover {
	outline: none;
	background-color: #f5f5f5;
	border-color: #d9d9d9;
}

.buttons span:nth-child(2) {
	border: 1px solid #1f76dd;
	background-color: #1f76dd;
	border-radius: 2px;
	color: white;
}

.buttons span:nth-child(2):hover {
	outline: none;
	background-color: #1f76bb;
}

.choose_option {
	margin-top: 10px;
	display: flex;
	flex-direction: column;
	height: 400px;
	overflow: auto;
}

.option {
	font-size: 13px;
	color: #333;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	padding: 16px;
	background-color: #f5f5f5;
	display: flex;
	flex-direction: row;
	justify-content: space-between;
}

.option_name {
	display: flex;
	align-items: center;
	width: 230px;
}

.option_count {
	display: flex;
	align-items: center;
}

.option_price {
	display: flex;
	align-items: center;
	width: 110px;
	justify-content: flex-end;
}

.option_price i {
	padding: 0 7px;
}

.none_article {
	width: 100%;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	color: #666;
}

.none_article div{
	display:flex;
	flex-direction:column;
	justify-content: center;
	align-items: center;
	margin-top:20px;
	margin-bottom:40px;
}

.go_to_articles{
	padding: 8px 38px;
	border: 1px solid #1f76bb;
	color:#1f76bb;
	cursor:pointer;
	margin-bottom:50px;
}

</style>
<body>
<div>
	<%@ include file="../include/uHeader.jsp"  %>
	
	<div class="dndud_content">
	
		<!-- 장바구니, 123 제목 영역 -->
		<div class="dndud_content_title">
			<h2 class="dndud_txt_f1">장바구니</h2>
			<ol class="dndud_page_loc">
				<li class="active">
					<em class="icon_num">1</em>
					<span>장바구니</span>
					<i class="fa fa-angle-right"></i>
				</li>
				<li>
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
		
		<!--  상품 없을경우 
		<div class="none_article">
			<img src="<c:url value='/resources/img/none_cart.PNG'/> ">
			<div>
				<span>마음은 가득찬 당신</span>
				<span>하지만 장바구니는 비었네요.</span>
			</div>
			<span class="go_to_articles">작품 구경하러 가기</span>
		</div>
		 -->
		
		<!-- 장바구니 상품들 담기는 곳 -->
		<div class="shopcart">
		
			<!--  첫번쨰 상품 -->
			<c:forEach var="i" begin="0" end="2">
				<table class="articles">
					<thead>
						<tr>
							<th colspan="2">
								<label class="shopcart_title">
									<input class="chkbox" type="checkbox">
									<div class="txt_group">
										<span>숲속사진관 작가님</span>
										<a>50,000원 이상  배송비 무료</a>
									</div>
								</label>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr class="content_area_first">
							<td class="area_img">
								<input class="chkbox" type="checkbox">
								<div class="imgbg"></div>
							</td>
							<td class="area_txt">
								<div class="txt_group">
									<span>마스크걸이</span>
									<a>주문시 제작</a>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="2" class="area_detail">
								<ul class="list_option">
									<li>
										<div class="split">
											<span class="option_txt">이미지선택 : 1.할아버지</span> 
											<div class="input_number">
												<label>수량</label>
												<button class="downButton" type="button">-</button>
												<div class="input_area">
													<input class="prd-count" type="number" value="1" min="1" max="999" readonly>
												</div>
												<button class="upButton" type="button">+</button>
											</div>
										</div>
										<div class="split2">
											<strong>
												<a class="cost_text">3,000원</a>
											</strong>
											<span class="btn_group">
												<button class="option_update" type="button">
													<i class="fas fa-cog"></i>
												</button>
												<button type="button">
													<i class="fas fa-times"></i>
												</button>
											</span>
										</div>
									</li>
									<li>
										<!-- 옵션 영역 -->
										<div class="split">
											<span class="option_txt">이미지선택 : 8.냥이</span>
											<div class="input_number">
												<label>수량</label>
												<button class="downButton" type="button">-</button>
												<div class="input_area">
													<input class="prd-count" type="number" value="1" min="1" max="999" readonly>
												</div>
												<button class="upButton" type="button">+</button>
											</div>
										</div>
										
										<!-- 가격 뒤 영역 -->
										<div class="split2">
											<strong>
												<a class="cost_text">3,000원</a>
											</strong>
											<span class="btn_group">
												<button class="option_update" type="button">
													<i class="fas fa-cog"></i>
												</button>
												<button type="button">
													<i class="fas fa-times"></i>
												</button>
											</span>
										</div>
									</li>
								</ul>
								<div class="order_request_box">
									<div class="order_request_textarea">
										<textarea id="orderReq" class="orderTextarea" maxlength="500" placeholder="주문 요청사항을 입력해주세요"></textarea>
										<a class="ui_field_chars">500</a>
									</div>
									<button type="button" class="ui_filed_button">저장</button>
								</div>
							</td>
						</tr>
						<tr class="delivery_cost">
							<td>배송비</td>
							<td>2,500원</td>
						</tr>
					</tbody>
				</table>
			
			</c:forEach>
			
			<div class="checkAll">
				<label>
					<input class="chkbox" type="checkbox">
					<span>전체선택(<a id="nowChecked"></a>/<a id="canCheckCount">1</a>)</span>
				</label>
				<span class="deleteChoice">선택 삭제</span>
			</div>
			
			<div class="totalBox">
				<div class="total_box_top">
					<div>총 주문 금액</div>
					<div></div>
					<div>배송비</div>
					<div></div>
					<div>결제 예정금액</div>
				</div>
				<div class="total_box_price">
					<div>0원</div>
					<div>+</div>
					<div>0원</div>
					<div>=</div>
					<div>0원</div>
				</div>
				<div class="total_box_decision">
					<div>
						<span class="order_All">전체 작품 주문</span>
						<span class="order_Choice">선택한 작품 주문</span>
					</div>
				</div>
			</div>
			
		</div>
	
	</div>
	
	
	<%@ include file="../include/uFooter.jsp" %>
</div>
<!-- 옵션 수정 모달-->
<div class="detail-modal">
    <div class="report-modal__area">
        <div class="report-modal__head">
            <div class="report-modal__title">
                <div class="report-modal__subject">옵션수정 / 추가</div>
                <button class="report-modal__close">
                    <i style="font-size: 20px; color:red;"class="fas fa-times"></i>
                </button>
            </div>
        </div>
        
        <div class="about_article">
        	<div class="about_article_detail">
        		<div class="article_img"></div>
        		<div class="article_text">
        			<span>마스크걸이</span>
        			<span>[40%] 3,000 원 <a>5,000원</a></span>
        		</div>
        	</div>
        </div>
        
        <div class="now_select_option">
        	<a>현재 선택한 옵션</a>
        	<div>
        		<span>이미지선택: 2.할머니</span>
        	</div>
        </div>
        
        <div class="update_option">
        	<a>옵션 선택</a>
        	<select id="option_list">
        		<option id="default" value='none' selected hidden disabled>이미지 선택</option>
        		<option>1.할아버지</option>
        		<option>2.할머니</option>
        		<option>3.아빠</option>
        		<option>4.엄마</option>
        		<option>5.아들</option>
        		<option>6.딸</option>
        		<option>7.아기</option>
        		<option>8.냥이</option>
        		<option>9.COVID-19</option>
        		<option>10.Coronavirus</option>
        	</select>
        </div>
        
        <div class="choose_option">
        	<!--  동적 추가 모듈.
        	<div class="option">
        		<div class="option_name">
        			<span>1.할아버지</span>
        		</div>
        		<div class="option_count">
        			<div class="input_number">
						<button class="downButton" type="button">-</button>
						<div class="input_area">
							<input class="prd-count" type="number" value="1" min="1" max="999" readonly>
						</div>
						<button class="upButton" type="button">+</button>
					</div>
        		</div>
        		<div class="option_price">
        			<span>3,000원</span>
        			<span><i class="fas fa-times"></i></span>
        		</div>
        	</div>
        	 -->
        	
        </div>
        
        <div class="buttons">
        	<span id="cancleUpdate">취소</span>
        	<span id="confirmUpdate">수정하기</span>
        </div>
        
        
    </div>
</div>
</body>
<script>



$(function(){
	
	
	$(document).ready(function(){
		$("#canCheckCount").html($(".articles").length);
		$("#nowChecked").html('0');
	});
	
	// textarea 입력 시. 영역 변경
	$('.orderTextarea').keyup(function(e){
		var $textArea = $(this);
		var $textBox = $(this).closest("div");
		var $remainText = $textBox.children("a");
		var $SHbutton = $textBox.next();
		console.log($SHbutton);
		var content = $textArea.val();
		// 텍스트 area 안 500 숫자 변경
		$remainText.html(500-content.length);
		if(content.length != 0){
			$textBox.css("width","90%");
			$textBox.css("margin-right", "2%");
			$SHbutton.css("display","flex");
		}else{
			$textBox.css("width","100%");
			$textBox.css("margin-right","0");
			$SHbutton.css("display","none");
		}
	});
	
	
	// 수량 버튼중 - 클릭시
	$(document).on('click',".downButton",function(e){
		var $button = $(this);
		var $numDiv = $button.next();
		var $num = $numDiv.children().first();
		if($num.val() > 1){
			$num.val($num.val()-1);
		}
	});
	/*
		<div class="option_count">
   			<div class="input_number">
				<button class="downButton" type="button">-</button>
				<div class="input_area">
					<input class="prd-count" type="number" value="1" min="1" max="999" readonly>
				</div>
				<button class="upButton" type="button">+</button>
			</div>
   		</div>
   		<div class="option_price">
   			<span>3,000원</span>
   			<span><i class="fas fa-times"></i></span>
   		</div>
	*/
	
	// 수량 버튼중 + 클릭시
	$(document).on('click',".upButton",function(e){
		var $button = $(this);
		var $numDiv = $button.prev();
		var $num = $numDiv.children().first();
		if($num.val()<999){
			$num.val(Number($num.val()) + 1);
		}
	});
	
	
	// 체크 박스 클릭 이벤트
	$(".shopcart_title").click(function(e){
		var $topChk = $(this).children().first();
		var $imgChk = $(this).closest("table").find('.area_img').children().first();
		if($topChk.is(":checked")){
			$imgChk.prop("checked","checked");
		}else{
			$imgChk.prop("checked","");
		}
	});
	
	// 모달 관련 이벤트
	$(".option_update").click(function(e){
		$(".detail-modal").css("display", "flex");
	});
	
	$(".report-modal__close").click(function(){
		$(".detail-modal").css("display","none");
	});
	
	$("#cancleUpdate").click(function(){
		$(".detail-modal").css("display","none");
	})
	
	// 옵션 선택 시 추가
	$("#option_list").on('change', function(e){
		//alert(this.value);
		$("#option_list").find('option:first').attr('selected', 'selected');
		var $option = $("<div class='option'><div class='option_name'><span>1.할아버지</span></div><div class='option_count'><div class='input_number'><button class='downButton' type='button'>-</button><div class='input_area'><input class='prd-count' type='number' value='1' min='1' max='999' readonly></div><button class='upButton' type='button'>+</button></div></div><div class='option_price'><span>3,000원</span><span><i class='fas fa-times'></i></span></div></div>");
		$option.children().first().children().first().html(this.value);
		$(".choose_option").append($option);
	});

	
	
});
</script>
</html>