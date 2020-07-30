<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="<c:url value='/vendor/jquery/jquery.min.js'/>"></script>
<script type="text/javascript">
	function wonDisWorkInfoDo(){
		var wonDisWorkInfo = document.getElementById('wonDisWorkInfo');
		var wonInfoWorkButton = document.getElementsByClassName('wonInfoWorkButton');
		console.log("wonInfoWorkButton : " + wonInfoWorkButton);
		if(wonDisWorkInfo.style.display == 'none'){
			wonDisWorkInfo.style.display = 'block';
			document.getElementById('wonInfoWorkButton').className= 'fa fa-arrow-up';
		}else{
			wonDisWorkInfo.style.display = 'none';
			document.getElementById('wonInfoWorkButton').className= 'fa fa-arrow-down';
		}
	}
	function wonDisSellInfoDo(){
		var wonDisWorkInfo = document.getElementById('wonDisSellInfo');
		var wonInfoWorkButton = document.getElementsByClassName('wonInfoSellInfoButton');
		console.log("wonInfoSellInfoButton : " + wonInfoWorkButton);
		if(wonDisWorkInfo.style.display == 'none'){
			wonDisWorkInfo.style.display = 'block';
			document.getElementById('wonInfoSellInfoButton').className= 'fa fa-arrow-up';
		}else{
			wonDisWorkInfo.style.display = 'none';
			document.getElementById('wonInfoSellInfoButton').className= 'fa fa-arrow-down';
		}
	} 
	function wonDisChangReturnDo(){
		var wonDisWorkInfo = document.getElementById('wonDisChangReturn');
		var wonInfoWorkButton = document.getElementsByClassName('wonChangReturnButton');
		console.log("wonChangReturnButton : " + wonInfoWorkButton);
		if(wonDisWorkInfo.style.display == 'none'){
			wonDisWorkInfo.style.display = 'block';
			document.getElementById('wonChangReturnButton').className= 'fa fa-arrow-up';
		}else{
			wonDisWorkInfo.style.display = 'none';
			document.getElementById('wonChangReturnButton').className= 'fa fa-arrow-down';
		}
	}

	function wonAuctionClose(){
		var closeButton = document.getElementById('wonAuctionClose');
		var display = document.getElementById('wonActionDisplay');
		
			display.style.removeProperty('position');
			display.style.display = 'none';
		
	}
	function wonAuctionOpen(){
		var openButton = document.getElementById('wonActionButton');
		var display = document.getElementById('wonActionDisplay');
	
		display.style.setProperty('position', 'absolute');
		display.style.setProperty('display','block')
	}
	function wonDetailAuction() {
		var openButton = document.getElementById('wonDetailAuction');
		var display = document.getElementById('wonActionDetailDisplay');
		var display1 = document.getElementById('wonActionDisplay');
		
		display1.style.removeProperty('position');
		display1.style.display = 'none';
		
		display.style.setProperty('display','block')
	}
	function wonAuctionDetailClose() {
		var openButton = document.getElementById('wonAuctionDetailClose');
		var display = document.getElementById('wonActionDetailDisplay');
		display.style.display = 'none';
	}
	function wonMinusButton(){
		var minus = document.getElementById('wonMinusButton');
		var value = parseInt(document.getElementById('wonAuctionAmount').value);
	
			if(value > 1){
				value -= 1;
				console.log(value);
				document.getElementById('wonAuctionAmount').value = value;
			}else if(value == 1){
				alert('수량을 확인해 주세요');
			
			} 
	}
	function wonPlusButton(){
		var plus =  document.getElementById('wonPlusButton');
		var value = parseInt(document.getElementById('wonAuctionAmount').value);
			if(value > 0 && value < 10){
				value += 1;
				console.log(value);
				document.getElementById('wonAuctionAmount').value = value;
			}else if(value == 10){
				alert('수량을 확인해 주세요');
			} 
		
	}
</script>
<style>
#wondSumImg{
	background-color: white;
	border:none;
	width: 15%;
}
#wondSumImg:hover{
	cursor: pointer;
}
#wonAHover:hover{
	cursor: pointer;
}
#wonInfoButton:hover{
	cursor: pointer;
}
#wonInfoWorkButton:hover{
	cursor: pointer;
}
#wonInfoSellInfoButton:hover{
	cursor: pointer;
}
#wonChangReturnButton:hover{
	cursor: pointer;
}
#wonButtonReview{
	cursor: pointer;
}
#wonUproductPagingButtonPrev:hover{
	cursor: pointer;
}
#wonUproductPagingButtonNext:hover{
	cursor: pointer;
}
#wonUProductReview{
	cursor: pointer;
}
#wonShareButton{
	cursor: pointer;
}
#wonActionButton{
	cursor: pointer;
}
#wonDetailAuction{
	cursor: pointer;
}
.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 40%;
  width: auto;
  padding: 16px;
  margin-top: -50px;
  color: black;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
}
.next{
	
}
.prev:hover,
.next:hover {
  background-color: rgba(0, 0, 0, 0.8);
}

</style>
<script type="text/javascript">
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
  console(showSlides(slideIndex += n));
}

function currentSlide(n) {
  showSlides(slideIndex = n);
  console(showSlides(slideIndex = n));
}
function showSlides(n) {
	  var i;
	  var slides = document.getElementsByClassName("wonSlides");
	  var dots = document.getElementsByClassName("demo");
	  if (n > slides.length) {slideIndex = 1}
	  if (n < 1) {slideIndex = slides.length}
	  for (i = 0; i < slides.length; i++) {
	      slides[i].style.display = "none";
	  }
	  for (i = 0; i < dots.length; i++) {
	      dots[i].className = dots[i].className.replace(" active", "");
	  }
	  slides[slideIndex-1].style.display = "block";
	  dots[slideIndex-1].className += " active";
	  captionText.innerHTML = dots[slideIndex-1].alt;
	}
</script>
<meta charset="UTF-8">
<title>상품소개!</title>
</head>
<body>
<div>
	<%@ include file="../include/uHeader.jsp"  %>
		<div style="width:70%; margin-left: 15%; margin-top: 1%; margin-right: 50%; display: flex; flex-direction: row;">
		<!-- 전체틀 -->
			<div style="width:50%;">
				<!-- 사진영역 -->
				<div style="margin-top: 2%; display: flex; justify-content:center;" class="wonSlides">
					<img style="width:80%;" src="<c:url value='/resources/img/test.png'/>">
				</div>
				<div style="margin-top: 2%; display: none; justify-content:center;" class="wonSlides">
					<img style="width:80%;" src="<c:url value='/resources/img/test.png'/>">
				</div>
				<div style="margin-top: 2%; display: none; justify-content:center;" class="wonSlides">
					<img style="width:80%;" src="<c:url value='/resources/img/test.png'/>">
				</div>
				<div style="margin-top: 2%; display: none; justify-content:center;" class="wonSlides">
					<img style="width:80%;" src="<c:url value='/resources/img/test.png'/>">
				</div>
				<div style="margin-top: 2%; display: none; justify-content:center;" class="wonSlides">
					<img style="width:80%;" src="<c:url value='/resources/img/test.png'/>">
				</div>
				
				<div style="display: flex; justify-content:center; margin-bottom: 2%;">
					<!-- 썸네일 -->
					<button class="wonSumSlides" id="wondSumImg"><img style="width:100%;" src="<c:url value='/resources/img/test.png'/>"></button>
					<button class="wonSumSlides" id="wondSumImg"><img style="width:100%;" src="<c:url value='/resources/img/cart.png'/>"></button>
					<button class="wonSumSlides" id="wondSumImg"><img style="width:100%;" src="<c:url value='/resources/img/test.png'/>"></button>
					<button class="wonSumSlides" id="wondSumImg"><img style="width:100%;" src="<c:url value='/resources/img/cart.png'/>"></button>
					<button class="wonSumSlides" id="wondSumImg"><img style="width:100%;" src="<c:url value='/resources/img/test.png'/>"></button>
				</div>
				<!-- 화면전환버튼 -->
				<div style="width: 100%; display: flex; justify-content: space-between;">
					<div style="margin-left: 10%;">
						<a class="prev" onclick="plusSlides(-1)">❮</a>
					</div>
					<div style="margin-right: 10%;">
  						<a class="next" onclick="plusSlides(1)">❯</a>
					</div>
				</div>
				<!-- 화면전환버튼end -->
				<hr>
				
				
				<div style="margin: 1%; display: flex; justify-content: center; flex-direction: row;">
					<a id="wonAHover" style="margin: 18px 0px 17px; width:15%; font-size: 100%; margin-left: 1%;">작품정보</a>
					<a id="wonAHover" style="margin: 18px 0px 17px; width:35%; font-size: 100%; margin-left: 1%;">배송/교환/환불</a>
					<a id="wonAHover" style="margin: 18px 0px 17px; width:35%; font-size: 100%; margin-left: 1%;">구매후기(갯수)</a>
					<a id="wonAHover" style="margin: 18px 0px 17px; width:10%; font-size: 100%; margin-left: 1%;">댓글</a>
				</div>
				<hr>
				<div>
					<!-- 내용 작품 소개 -->
					<div>
						작품내용을 쓰거라				
					</div>
				</div>
				<hr>
				<div style="display: flex; justify-content: center;">
					<span style="color: #ABABAB; font-size: 80%;">Category&nbsp;&&nbsp;Keyword</span>
				</div>
				<div style="display: flex; flex-wrap: wrap; justify-content: center;">
					<strong>카테고리</strong>
				</div>
				<ul style="margin: 5%;display: flex; list-style: none;padding-left: 0px; justify-content: center; flex-wrap: wrap;">
					<li style="padding: 6px 8px;margin: 8px 0px 0px 8px; border:1px #ABABAB solid; font-size: 80%; color: #666666;">#카테고리</li>
					<li style="padding: 6px 8px;margin: 8px 0px 0px 8px; border:1px #ABABAB solid; font-size: 80%; color: #666666;">#카테고</li>
					<li style="padding: 6px 8px;margin: 8px 0px 0px 8px; border:1px #ABABAB solid; font-size: 80%; color: #666666;">#카테</li>
					<li style="padding: 6px 8px;margin: 8px 0px 0px 8px; border:1px #ABABAB solid; font-size: 80%; color: #666666;">#카</li>
					<li style="padding: 6px 8px;margin: 8px 0px 0px 8px; border:1px #ABABAB solid; font-size: 80%; color: #666666;">#카테고리카</li>
					<li style="padding: 6px 8px;margin: 8px 0px 0px 8px; border:1px #ABABAB solid; font-size: 80%; color: #666666;">#카테고리카테</li>
					<li style="padding: 6px 8px;margin: 8px 0px 0px 8px; border:1px #ABABAB solid; font-size: 80%; color: #666666;">#카테고리카테고</li>
					<li style="padding: 6px 8px;margin: 8px 0px 0px 8px; border:1px #ABABAB solid; font-size: 80%; color: #666666;">#카테고리카테고리</li>
				</ul>
				<hr>
				<div style="display: flex; justify-content: space-between; flex-direction: row; padding:18px 16px;">
					<span>작품 정보제공 고시</span>
					<span id="wonInfoWorkButton" onclick="wonDisWorkInfoDo()" class="fa fa-arrow-down"></span>
				</div>
				<div id="wonDisWorkInfo" style="display:none; width:100%;">
					<table style="width:100%;">
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; border:1px solid  width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">작품명</th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;">작품명</td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;"><span>법에 의한 인증,허가 등을 받았음을 확인할 수 있는 경우 그에 대한 사항</span></th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;"></td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">제조자 / 제조국</th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;"></td>
						</tr>
					</table>
				</div>
				<hr>
					<div style="display: flex; justify-content: space-between; flex-direction: row; padding:18px 16px;">
						<span>판매 작가 정보</span>
						<span id="wonInfoSellInfoButton" onclick="wonDisSellInfoDo()" class="fa fa-arrow-down"></span>
					</div>
				<div id="wonDisSellInfo" style="width:100%; display: none;">
					<table style="width:100%;">
						<tr>
							<th style="border:1px #ABABAB solid; padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">대표자명</th>
							<td style="border:1px #ABABAB solid; padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;">작품명</td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid; padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">이메일</th>
							<td style="border:1px #ABABAB solid; padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;"></td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid; padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">전화번호</th>
							<td style="border:1px #ABABAB solid; padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;"></td>
						</tr>
					</table>
				</div>
				<hr>
					<div style="display: flex; justify-content: space-between; flex-direction: row; padding:18px 16px;">
						<span>배송 교환 환불</span>
					<span id="wonChangReturnButton" onclick="wonDisChangReturnDo()" class="fa fa-arrow-down"></span>
					</div>
				<div id="wonDisChangReturn" style="width:100%; display: none;">
					<table style="width:100%;">
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">배송비</th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;">작품명</td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;"><span>제작 / 배송</span></th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;"></td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">교환 / 환불</th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;"></td>
						</tr>
					</table>
				</div>
				<hr>
				<div style="padding: 2%; display: flex; justify-content: space-between; ">
					<span>구매후기(구매후기 수)</span>
					<button id="wonButtonReview" style="background: white;">구매후기작성하기</button>
				</div>
				<hr style="border: 1px solid black">
				<!-- 구매후기 -->
				<div style="width:100%; display: flex;justify-content: space-between;">
					<div style="border-radius:50%; width:80%;display: flex; flex-direction: row;"><!-- 프로필 -->
						<img style="width:10%;" src="<c:url value='/resources/img/test.png'/>">
						<div>
							<span style="font-size: 80%;">프로필이름</span><br>
							<span style="color:#999999; font-size: 80%;">등록날짜</span>
						</div>
					</div>
					<div>별점!</div>
				</div>
				<div>
					구매후기 작성란!
				</div>
				<!-- 구매후기 end -->
				<hr>
				<div style="display: flex; flex-direction: row; justify-content:center; margin: 2%;">
						<a id="wonUproductPagingButtonPrev">
							<span style="text-align: center;">&lt;이전 |</span>
						</a>
						<a id=wonUproductPagingButtonNext>
							<span style="text-align: center;">| 다음&gt;</span>
						</a>
				</div>
				
				<div style="display: flex; justify-content: space-between; margin-top: 10%;; padding: ;">
					<strong>댓글</strong><a style="color: #AFEEEE; font-size: 80%;" id="wonUProductReview">댓글 더보기</a>
				</div>
				<hr style="border:1px solid black;">
				<!-- 댓글 -->
				<div style="margin: 1%; display: flex; justify-content: center; overflow-y: scroll;">
					<div style="display: flex; flex-direction: column;">
						<span style="margin-left: 30%;"><i class="fa fa-comment fa-5x"></i></span>
						<br>
						<span style="color: #ACACAC;">행운의 첫 댓글을 남겨보세요.</span>
					</div>
				</div>
				<hr>
				<div style="display: flex; flex-direction: row; width: 100%;">
					<img style="width: 10%;" src="<c:url value='/resources/img/test.png'/>">
					<input type="text" style="margin: 3%; width: 60%;" placeholder="댓글을 남겨주세요~">
					<input type="button" value="등록" style="margin: 3%;">
				</div>
				<!-- 댓글 end -->
			</div>
			<!-- 상품정보 선택 -->
			<div style="margin: 3%; width:50%;">
				<div style="border:1px #ABABAB solid; position: fixed;  width:32.7%;">
					<div style="margin:1%; padding: 1%; display: flex; justify-content: space-between;">
						<span style="display: flex; flex-direction: row; width:50%; margin: 1%; padding: 1%;">
							<img style="width: 10%; height:80%;" src="<c:url value='/resources/img/test.png'/>">
							<span style="font-size: 80%; justify-content:center;">판매자 프로필 이름</span>
						</span>
					<div>
						<a style="text-decoration: none; display: flex; justify-content: flex-end;"href="#">
							<span style="border:1px #ABABAB solid; font-size: 80%; color: #666666;display: flex;">작가문의</span><!-- 메세지 페이지로 이동 -->
						</a>
					</div>
					</div>
					<div style="margin-left: 2.5%;"><!-- 할인율 가격 판매제목  -->
						<strong style="font-size: 150%; padding: 1%; margin: 1%;">판매 제목</strong><br>
						<div style="padding:1%; margin:1%; display: flex; flex-direction: row; justify-content:space-between;">
							<div style="width:70%; display: flex; flex-direction: row;">
								<p style="color: red; padding-top:2%; margin-top: 2%; font-size: 100%;">할인률%</p>
								<p style="padding: 1%; margin: 1%; font-size: 150%;">1000000 원</p>
								<p style="padding-top:2.5%; margin-top: 2.5%; font-size: 80%; text-decoration: line-through;">50000 원</p>
							</div>
							<div style="width: 30%; display:flex; justify-content: flex-end;">
								<button style="background: white; border:none; display:flex; flex-direction: column; font-size: 60%;margin:1%; margin-top: 5%;">
									<i class="fa fa-star-o fa-2x" aria-hidden="true"></i>
									<span>200</span>
								</button>
								<button id="wonShareButton" style="background: white; border:none;">
								<i class="fa fa-share-alt-square fa-3x" aria-hidden="true"></i>
								</button>
							</div>
						</div>
						<div style="display:flex; justify-content: flex-end; margin-right: 3%;">
							<span style="color: #666666; font-weight: bold; font-size:14px; margin-right: 1%;">몇명</span>&nbsp;
							<span style="color: #666666; font-size:14px;">구매</span><!-- 할인율 가격 판매제목  -->
						</div>					
						<div style="display:flex; flex-direction: row; padding: 1%; margin: 1%;">
							<div style="display:flex; flex-direction: column; width:30%;">
								<span style="margin: 3%; padding: 3%; color: #666666;">적립금</span>
								<span style="margin: 3%; padding: 3%; color: #666666;">구매후기</span>
								<span style="margin: 3%; padding: 3%; color: #666666;">배송비</span>
								<span style="margin: 3%; padding: 3%; color: #666666;">수량</span>
							</div>
							<div style="display:flex; flex-direction: column; margin-left: 5%;width:30%;">
								<span style="margin: 3%; padding: 3%;">70P</span>
								<span style="margin: 3%; padding: 3%;">
									<i class="fa fa-star" aria-hidden="true"></i>
									<i class="fa fa-star" aria-hidden="true"></i>
									<i class="fa fa-star" aria-hidden="true"></i>
									<i class="fa fa-star" aria-hidden="true"></i>
									<i class="fa fa-star" aria-hidden="true"></i>
								</span>
								<span style="margin: 3%; padding: 3%;">2,500원</span>
								<span style="margin: 3%; padding: 3%;">주문시 제작</span>
							</div>
						</div>
						<div id="wonActionDisplay" style=" width: 80%; border: 1px solid; border-radius: 2px; background-color: #fff; font-size: 100%; vertical-align: baseline; display: none; flex-direction: column;">
								<div style="width:100%;padding: 8px 12px; position: relative;background-color: #333; font: inherit; font-size: 100%; vertical-align: baseline; box-sizing: border-box; border">
									<span style="font-size: 12px;color: #fff;">전체옵션 선택</span>
									<button id="wonAuctionClose" onclick="wonAuctionClose()" style="float: right; background-color: #333; border:none; color: #fff;">X</button>
								</div>
								<!-- 선택사항 -->
								<div>
									<div>
										<div style="display: flex; flex-direction: column;"><!-- 선택사항 1 -->
											<div id="wonDetailAuction" onclick="wonDetailAuction()">
												<span style="padding: 1%; margin: 1%;">사이즈</span>
												<span style="padding: 1%; margin: 1%; margin-left: 60%;">선택출력</span>
												<i style=" padding: 1%; margin: 1%; float: right;"class="fa fa-arrow-down"></i>
											</div>
											<div style="display: none; flex-direction: column;">
												<button style="background-color: white;border: 1px #333 solid;"><span style="padding: 1%; margin: 1%;">500ml</span></button>
												<button style="background-color: white;border: 1px #333 solid;"><span style="padding: 1%; margin: 1%;">700ml(+3000원)</span></button>
											</div>
										</div>
									</div>
								</div>
								<!-- 선택사항  end -->
							</div>
						<div style="padding: 1%; margin: 1%;">
							<button id="wonActionButton" style="width:80%; display: flex; justify-content: space-between; margin: 1%;"
							onclick="wonAuctionOpen()">
								<span>옵션</span>
								<span id="wonActionArrow" style="margin: 1%;"class="fa fa-arrow-down"></span>
							</button>
							<div style="display: none; flex-direction:column; width:80%;margin: 1%; background-color: #F5F5F5;" id="wonActionDetailDisplay">
								<div style="margin: 1%;padding: 1%;"><!-- 옵션 선택사항 -->
									<span style="font-size: 80%; color: #666666; padding: 1%;">
									향1: (NEW)스위트 머스캣(+1,000원)/ 향2: (NEW)스위트 머스캣(+1,000원)/ 향3: (NEW)스위트 머스캣(+1,000원)
									</span>
								</div>
								<div style="display: flex; justify-content: space-between; margin: 1%;padding: 1%;">
									<div style="display: flex; flex-direction: row;">
										<button id="wonMinusButton" onclick="wonMinusButton()"><span style="border-color: #ABABAB;">-</span></button>
										<input id="wonAuctionAmount" style="width:10%; text-align: center;" value="1" readonly>
										<button id="wonPlusButton" onclick="wonPlusButton()"><span style="border-color: #ABABAB;">+</span></button>
									</div>
									<div>
										<span style="font-size: 12px; color: #666666;">가격</span>
										<button id="wonAuctionDetailClose" onclick="wonAuctionDetailClose()">X</button>
									</div>
								</div>
							</div>
						</div>
						<div style="display: flex; justify-content:space-between; padding: 1%; margin: 1%;">
							<span>총작품금액</span>
							<span style="font-size: 20px; color: #333333;">17,000 원</span>
						</div>
						<div style="display: flex; flex-direction: row; padding: 1%; margin: 1%;">
							<button style="width:40%; background-color:white; 
							height:80px; margin: 1%; border: 1px #333333 solid;">
								<span style="color: #333333; font-size: 16px;">장바구니</span>
							</button>
							<button style="width:40%; margin: 1%;border: none; background: #f95677; font-style: 16px; color: white;">구매</button>
							<button style="width:20%; margin: 1%">선물하기</button>
						</div>
					</div>
				</div>
			</div><!-- 상품정보 end -->
		</div>
	<div style="width:70%; margin-left: 15%; margin-top: 1%; margin-right: 50%; background-color: #F5F5F5; z-index: 999;">
		<div style="width: 100%; display: flex; flex-direction: row; padding: 1%;">
			<div style="width:50%; margin: 3%; border-right: 1px solid #ABABAB;">
				<div style="display: flex; justify-content: space-between;">
					<span>판매중인 다른 작품들</span>
					<button style="background-color: white; border: 1px #ABABAB solid; padding: 1%; margin-right:1%; ">더보기</button>
				</div>
				<hr>
				<div style="display: flex; flex-direction: row;">
					<a style="width: 25%; display: flex; flex-direction: column; padding: 3%;">
						<img style="width: 99%; background-color: white;" src="<c:url value='/resources/img/test.png'/>">
						<span style="background-color: white;">이름</span>
						<span style="background-color: white;">아동 멀티 세수수건 턱받이</span>
					</a>
					<a style="width: 25%; display: flex; flex-direction: column; padding: 3%;">
						<img style="width: 99%; background-color: white;" src="<c:url value='/resources/img/test.png'/>">
						<span style="background-color: white;">이름</span>
						<span style="background-color: white;">아동 멀티 세수수건 턱받이</span>
					</a>
					<a style="width: 25%; display: flex; flex-direction: column; padding: 3%;">
						<img style="width: 99%; background-color: white;" src="<c:url value='/resources/img/test.png'/>">
						<span style="background-color: white;">이름</span>
						<span style="background-color: white;">아동 멀티 세수수건 턱받이</span>
					</a>
					<a style="width: 25%; display: flex; flex-direction: column; padding: 3%;">
						<img style="width: 99%; background-color: white;" src="<c:url value='/resources/img/test.png'/>">
						<span style="background-color: white;">이름</span>
						<span style="background-color: white;">아동 멀티 세수수건 턱받이</span>
					</a>
				</div>
			</div>
			<div style="display: flex;  width: 50%; justify-content: center;">
				<div style="width: 100%; display: flex; flex-direction:column; padding: 1%; align-self: center;">
					<img style="align-self: center; width: 15%; height:15%; margin-top: 5%;" src="<c:url value='/resources/img/test.png'/>">
					<span style="text-align: center;">프로필 이름</span>
					<span style="align-self:center;">
						<i class="fa fa-star" aria-hidden="true"></i>
						<i class="fa fa-star" aria-hidden="true"></i>
						<i class="fa fa-star" aria-hidden="true"></i>
						<i class="fa fa-star" aria-hidden="true"></i>
						<i class="fa fa-star" aria-hidden="true"></i>
					</span>
					
					<button style="background-color: white; border: 1px #ABABAB solid; padding: 1%; margin:1%; width:50%;align-self:center;">
							작가로추가
					</button>
					<button style="background-color: white; border: 1px #ABABAB solid; padding: 1%; margin:1%; width:50%;align-self:center;">
							작가홈
					</button>
					
					<button style="background-color: white; border: 1px #ABABAB solid; padding: 1%; margin:1%; width:50%;align-self:center;">
							메세지보내기
					</button>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../include/uFooter.jsp" %>
</div>
</body>
</html>














