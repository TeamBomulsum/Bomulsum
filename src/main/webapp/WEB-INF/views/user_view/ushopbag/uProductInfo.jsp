<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
<script src="<c:url value='/resources/vendor/clipboard/clipboard.min.js'/>"></script>
<script type="text/javascript">
function AddComma(num){
	var regexp = /\B(?=(\d{3})+(?!\d))/g;
	return num.toString().replace(regexp, ',');
}

window.addEventListener('scroll', () => {
	input = document.getElementById('ShareUrl');
	wonSlides = document.getElementById('hoddenTop');
	hoddenBottom = document.getElementById('hoddenBottom');
	let scrollLocation = document.documentElement.scrollTop; // 현재 스크롤바 위치
	let windowHeight = window.innerHeight; // 스크린 창
	
	let footerLocation1 = document.getElementById('product_Footer').scrollHeight;
	let footerLocation2 = document.querySelector('footer').scrollHeight;
	let fullHeight = document.body.scrollHeight;
	
	
	let calc = fullHeight-(footerLocation1+footerLocation2) + 200;
	
	let positionFixed = document.getElementById('positionFixed');
	
 	if(scrollLocation+windowHeight >= calc){
 		positionFixed.style.display = 'none';
 		hoddenTop.append(input);
 	}else{
 		positionFixed.style.display = 'block';
 		hoddenBottom.append(input);
 	}
	
	
});

	function wonDisWorkInfoDo(){//작품 정보제공 고시
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
	function wonDisSellInfoDo(){//판매 작가 정보
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
	function wonDisChangReturnDo(){//배송 교환 환불
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

	function wonAuctionClose(){//전체옵션 선택
		var closeButton = document.getElementById('wonAuctionClose');
		var display = document.getElementById('wonActionDisplay');
		var tempPriceChange = document.getElementById('tempPrice');
		var tempPrice = parseInt(document.getElementById('tempPrice').innerHTML);
		var totalPrice = parseInt(document.getElementById('totalPrice').innerHTML.replace(',',''));
		var changePrice = totalPrice - tempPrice;
		var lastPrice = document.getElementById('totalPrice');
		var wonActionDetailDisplay = document.getElementById('wonActionDetailDisplay');
		var optionSelectDetail = document.getElementById('optionSelectDetail');
		
		tempPriceChange.innerHTML = "0";
		wonActionDetailDisplay.innerHTML = "";
		optionSelectDetail.style.display = 'none'
		
			display.style.removeProperty('position');
			display.style.display = 'none';
		
	}
	function wonAuctionOpen(){
		var openButton = document.getElementById('wonActionButton');
		var display = document.getElementById('wonActionDisplay');
		
		display.style.setProperty('position', 'absolute');
		display.style.setProperty('display','block');
	}
	function wonDetailAuction(e) {
		var display1 = document.getElementById('wonActionDisplay');
		var option = e.querySelector('div');
		var select = e.querySelector('button');
		if(option.style.display == 'none'){		
			option.style.setProperty('display','block');
			
		}else{
			option.style.setProperty('display','none');
		}
		
	}
	function wonAuctionDetailClose() {
		var tempPriceChange = document.getElementById('tempPrice');
		var tempPrice = parseInt(document.getElementById('tempPrice').innerHTML);
		var totalPrice = parseInt(document.getElementById('totalPrice').innerHTML.replace(',',''));
		var changePrice = totalPrice - tempPrice;
		var lastPrice = document.getElementById('totalPrice');
		var display = document.getElementById('wonActionDetailDisplay');
		var optionSelectDetail = document.getElementById('optionSelectDetail');
		
		tempPriceChange.innerHTML = "0";
		lastPrice.innerHTML = AddComma(changePrice);
		display.innerHTML = "";
		optionSelectDetail.style.display = 'none'
		
		
	}

	function imgChage(e){
		var img = e.querySelector('img');
		var mainPhoto = document.getElementById('mainPhoto');
		console.log(img.src);
		mainPhoto.src = img.src;
		
	}
	function optionSelect(e){
		content = e.innerHTML;
		var price = parseInt(e.value);
		
		var display1 = document.getElementById('wonActionDetailDisplay');
		var tempPrice = parseInt(document.getElementById('tempPrice').innerHTML);
		var tempPricee = document.getElementById('tempPrice');
		var i = display1.innerHTML += content +" /";
		var temptotal = tempPrice += price;
		tempPricee.innerHTML = temptotal;

	}
	function completeSelect(){
		var checkDisp = document.getElementById('wonActionDetailDisplay');
		var disp = document.getElementById('optionSelectDetail');
		var tempPrice = parseInt(document.getElementById('tempPrice').innerHTML);
		var totalPrice = parseInt(document.getElementById('totalPrice').innerHTML.replace(',',''));
		var changePrice = totalPrice + tempPrice;
		var lastPrice = document.getElementById('totalPrice');
		var display = document.getElementById('wonActionDisplay');
		

		if(checkDisp.innerHTML == ''){
			alert('옵션을 선택해주세요.');
		}else{
			console.log(checkDisp.innerHTML)
			lastPrice.innerHTML = AddComma(changePrice);
			display.style.display = 'none';
			disp.style.display = 'block';			
		}

	}
	function bookmarkCount(){
		var bookMark = document.getElementById('won_bookMark_star');
		if(bookMark.className == 'fa fa-star-o fa-1x'){
			bookMark.className = "fas fa-star";
		}else{
			bookMark.className = 'fa fa-star-o fa-1x';
		}
	}
	function copy_trackback(){
		var obShareUrl = document.getElementById("ShareUrl");
		obShareUrl.value = window.document.location.href;  // 현재 URL 을 세팅해 줍니다.
		console.log(obShareUrl.value)
		obShareUrl.select();  // 해당 값이 선택되도록 select() 합니다
		document.execCommand("copy"); // 클립보드에 복사합니다.
		alert("URL이 클립보드에 복사되었습니다.\n원하는 곳에 붙여넣기 해주세요"); 
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

<meta charset="UTF-8">
<title>상품소개!</title>
</head>
<body>
<div>
	<%@ include file="../include/uHeader.jsp"  %>
		<div style="width:70%; margin-left: 15%; margin-top: 1%; margin-right: 50%; display: flex; flex-direction: row; z-index: 1" id="productScroll">
			<div style="width:50%;">
		<!-- 전체틀 --><div id="hoddenTop"></div>
				<!-- 사진영역 -->
				
				<div style="margin-top: 2%; display: flex; justify-content:center;" class="wonSlides">
					<img id="mainPhoto" style="width:80%; height:500px;" src="<c:url value='/upload/${firstPhoto}'/>">
				</div>
				
				<div style="display: flex; justify-content:center; margin-bottom: 2%;">
					<!-- 썸네일 -->
			<c:forEach items="${artPhotoSplit }" varStatus="vs">
					<button class="wonSumSlides" id="wondSumImg" onclick="imgChage(this);"><img style="width:100%;" src="<c:url value='/upload/${artPhotoSplit[vs.index]}'/>"></button>
					
			</c:forEach>
				</div>
				<!-- 화면전환버튼 -->
				
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
						${artList.artDescription }				
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
				<c:forEach items="${keywordSplit }" varStatus="vs">
					<li style="padding: 6px 8px;margin: 8px 0px 0px 8px; border:1px #ABABAB solid; font-size: 80%; color: #666666;">#${keywordSplit[vs.index] }</li>
				</c:forEach>
				</ul>
				<hr>
				<c:forEach var="artInfo" items="${artInfo }">
				<div style="display: flex; justify-content: space-between; flex-direction: row; padding:18px 16px;">
					<span>작품 정보제공 고시</span>
					<span id="wonInfoWorkButton" onclick="wonDisWorkInfoDo()" class="fa fa-arrow-down"></span>
				</div>
				<div id="wonDisWorkInfo" style="display:none; width:100%;">
					<table style="width:100%;">
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; border:1px solid  width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">작품명</th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;">${artList.artName }</td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;"><span>법에 의한 인증,허가 등을 받았음을 확인할 수 있는 경우 그에 대한 사항</span></th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;">${artInfo.artInfoDetailCategory}</td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">제조자 / 제조국</th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;">${artInfo.artInfoDetailFrom}</td>
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
							<td style="border:1px #ABABAB solid; padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;">${writer.writerName}</td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid; padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">이메일</th>
							<td style="border:1px #ABABAB solid; padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;">${writer.writerEmail }</td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid; padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">전화번호</th>
							<td style="border:1px #ABABAB solid; padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;">${writer.writerPhone}</td>
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
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;">
								<span>기본료 : </span><span><fmt:formatNumber value="${writer.writerSendPrice }" pattern="#,###"/> 원</span>  <br>
								<span>배송비 무료 조건 :</span> <span>${writer.writerSendfreeCase }</span><br>
								<span>제주, 도서산간일 경우 기본료만 무료가 됩니다.</span><br>
								<span>제주 / 도서산간 추가비용 : </span><span><fmt:formatNumber value="${writer.writerSendPrice }"/>원</span></td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;"><span>제작 / 배송</span></th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;"></td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">교환 / 환불</th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;">
							<c:if test="${writer.writerRefund eq 'y'}">
								<span>교환 및 환불이 가능합니다.</span>
							</c:if>
							<c:if test="${writer.writerRefund eq 'n'}">
								<span>주문 전 판매 작가님과 연락하여 확인해주세요.신선식품이기에 단순변심에의한 교환및 환불은불가합니다</span>
							</c:if>
							</td>
						</tr>
					</table>
				</div>
				</c:forEach><!-- 작품정보 제공공시 -->
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
						<a id="wonUproductPagingButtonNext">
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
			<div style="margin-left:1%; width:50%;">
				<div style="border:1px #ABABAB solid; position: fixed; width:32.7%;" id="positionFixed">
					<div style="margin:1%; padding: 1%; display: flex; justify-content: space-between;">
						<span style="display: flex; flex-direction: row; width:50%;">
							<img style="width: 10%; height:80%;" src="<c:url value='/upload/${writer.writeProfileImg }'/>">
							<span style="font-size: 80%; justify-content:center;">${writer.writerBrandName }</span>
						</span>
					<div>
						<a style="text-decoration: none; display: flex; justify-content: flex-end;"href="#">
							<span style="border:1px #ABABAB solid; font-size: 80%; color: #666666;display: flex;">작가문의</span><!-- 메세지 페이지로 이동 -->
						</a>
					</div>
					</div>
					<div id="wonActionDisplay" style=" width: 80%; border: 1px solid; border-radius: 2px; background-color: #fff; font-size: 80%; vertical-align: baseline; display: none; flex-direction: column;">
								<div style="width:100%;padding: 8px 12px; position: relative;background-color: #333; font: inherit; font-size: 80%; vertical-align: baseline; box-sizing: border-box; border">
									<span style="font-size: 12px;color: #fff;">전체옵션 선택</span>
									<button id="wonAuctionClose" onclick="wonAuctionClose()" style="float: right; background-color: #333; border:none; color: #fff;">X</button>
								</div>
								<!-- 선택사항 -->
								<c:forEach var="b" items="${artOption }">
										<div  style="display: flex; flex-direction: column;"><!-- 선택사항 1 -->
											<div id="wonDetailAuction" onclick="wonDetailAuction(this);">
												<span style="padding: 1%; margin: 1%;">${b.artOptionCategory }</span>
												<i style=" padding: 1%; margin: 1%; float: right;"class="fa fa-arrow-down"></i>
											<div id="wonDetailAuctionSelect"  style="display: none; flex-direction: column; border: none; width: 100%;">
												<button value="${b.artOptionPrice }" onclick="optionSelect(this);" style="background-color: white; border: none; width: 100%;">
												<span style="padding: 1%; margin: 1%;">${b.artOptionName }</span>
												<span style="padding: 1%; margin: 1%;">+${b.artOptionPrice }</span></button>
											</div>
											</div>
											
										</div>
								</c:forEach>
								<!-- 선택사항  end -->
								<div style="width:100%;padding: 8px 12px; position: relative;background-color: #333; font: inherit; font-size: 100%; vertical-align: baseline; box-sizing: border-box;">
									<span onclick="completeSelect();" style="font-size: 12px;color: #fff; cursor: pointer;">선택완료</span>
								</div>
							</div>
					<div style="margin-left: 2.5%;"><!-- 할인율 가격 판매제목  -->
						<strong style="font-size: 150%;">${artList.artName }</strong><br>
						<div style="margin:1%; display: flex; flex-direction: row; justify-content:space-between;">
							<div style="width:70%; display: flex; flex-direction: row;">
								<p style="color: red; padding-top:2%; margin-top: 2%; font-size: 100%;">${ artList.artDiscount}&nbsp;원</p>
								<p style="padding: 1%; margin: 1%; font-size: 150%;"> <fmt:formatNumber value="${artList.artPrice - artList.artDiscount}" pattern="#,###"/>원</p>
								<p style="padding-top:2.5%; margin-top: 2.5%; font-size: 80%; text-decoration: line-through;"><fmt:formatNumber value="${artList.artPrice}" pattern="#,###"/> 원</p>
							</div>
							<div style="width: 30%; display:flex; justify-content: flex-end;">
								<div style="display: flex; flex-direction: column; margin: 1%;">
									<i class="fa fa-star-o fa-1x" aria-hidden="true" onclick="bookmarkCount();" id="won_bookMark_star"></i>
									<span style="align-self: center;"><fmt:formatNumber value="${artList.bookMarkCount }" pattern="#,###"/></span>
								</div>
									<i class="fa fa-share-alt-square fa-3x" aria-hidden="true" onclick="copy_trackback();">
									</i>
							</div>
						</div>
						<div style="display:flex; justify-content: flex-end; margin-right: 1%;">
							<span style="color: #666666; font-weight: bold; font-size:14px;">${artList.artSaleCount }명</span>&nbsp;
							<span style="color: #666666; font-size:14px;">구매</span><!-- 할인율 가격 판매제목  -->
						</div>					
						<div style="display:flex; flex-direction: row; padding: 1%; margin: 1%;">
							<div style="display:flex; flex-direction: column; width:30%;">
								<span style="margin: 2%; padding: 2%; color: #666666;">적립금</span>
								<span style="margin: 2%; padding: 2%; color: #666666;">구매후기</span>
								<span style="margin: 2%; padding: 2%; color: #666666;">배송비</span>
								<span style="margin: 2%; padding: 2%; color: #666666;">수량</span>
							</div>
							<div style="display:flex; flex-direction: column; margin-left: 5%;width:30%;">
								<span style="margin: 2%; padding: 2%;"><fmt:formatNumber value="${(artList.artPrice- artList.artDiscount)*0.01}" pattern="#,###"/> P</span>
								<span style="margin: 2%; padding: 2%;">
									<i class="fa fa-star" aria-hidden="true"></i>
									<i class="fa fa-star" aria-hidden="true"></i>
									<i class="fa fa-star" aria-hidden="true"></i>
									<i class="fa fa-star" aria-hidden="true"></i>
									<i class="fa fa-star" aria-hidden="true"></i>
								</span>
								<span style="margin: 2%; padding: 2%;"><fmt:formatNumber value="${writer.writerSendPrice }" pattern="#,###"/>원</span>
								<span style="margin: 2%; padding: 2%;">${artList.artAmount }</span>
							</div>
						</div>
						
						<div style="padding: 1%; margin: 1%;">
							<button id="wonActionButton" style="width:80%; display: flex; justify-content: space-between; margin: 1%;"
							onclick="wonAuctionOpen()">
								<span>옵션</span>
								<span id="wonActionArrow" style="margin: 1%;"class="fa fa-arrow-down"></span>
							</button>
							<div id="optionSelectDetail" style="display: none; flex-direction:column; width:80%;margin: 1%; background-color: #F5F5F5;" >
								<div style="margin: 1%;padding: 1%; " ><!-- 옵션 선택사항 -->
									<span style="font-size: 80%; color: #666666; padding: 1%;" id="wonActionDetailDisplay">
									
									</span>
								</div>
								<div style="display: flex; justify-content: space-between;">
									<div style="display: flex; flex-direction: row;">
									
									</div>
									<div>
										<span id="tempPrice" style="font-size: 12px; color: #666666;">0</span><span>원</span>
										<button id="wonAuctionDetailClose" onclick="wonAuctionDetailClose()">X</button>
									</div>
								</div>
							</div>
						</div>
						<div style="display: flex;  padding: 1%; margin: 1%;">
							<span style="width:68%;">총작품금액</span>
							<span id="totalPrice" style="font-size: 20px; color: #333333;"><fmt:formatNumber value="${artList.artPrice - artList.artDiscount}"/></span><span>원</span>
						</div>
						<div style="display: flex; flex-direction: row; padding: 1%; margin: 1%;">
							<button style="width:40%; background-color:white; 
							height:50px; margin: 1%; border: 1px #333333 solid;">
								<span style="color: #333333; font-size: 16px;">장바구니</span>
							</button>
							<button style="width:40%; margin: 1%;border: none; background: #f95677; font-style: 16px; color: white;">구매</button>
							<button style="width:20%; margin: 1%">선물하기</button>
						</div>
					</div>
				</div>
			</div><!-- 상품정보 end -->
			
		</div>
	<div style="width:70%; margin-left: 15%; margin-top: 1%; margin-right: 50%; background-color: #F5F5F5; position: relative; z-index: 9999" id="product_Footer">
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
<div id="hoddenBottom"><input type="text" id="ShareUrl" style="width:0.1%;"></div>
	<%@ include file="../include/uFooter.jsp" %>
</div>
</body>
</html>














