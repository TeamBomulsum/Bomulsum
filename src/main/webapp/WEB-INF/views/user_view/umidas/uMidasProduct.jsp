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
/*
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
	*/
</script>



<meta charset="UTF-8">
<title>금손클래스 상품소개!</title>
</head>
<body>

	
<div>
	<%@ include file="../include/uHeaderClass.jsp"  %>
		<div style="width: 100%;display: flex;flex-direction: row;align-items: center;justify-content: center;">
			<img src="<c:url value='/resources/img/page_ready.png' />"/>
		<%-- <!-- 전체틀 -->
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
					<a id="wonAHover" style="margin: 18px 0px 17px; width:15%; font-size: 100%; margin-left: 1%;">소개</a>
					<a id="wonAHover" style="margin: 18px 0px 17px; width:35%; font-size: 100%; margin-left: 1%;">장소</a>
					<a id="wonAHover" style="margin: 18px 0px 17px; width:35%; font-size: 100%; margin-left: 1%;">댓글</a>
					<a id="wonAHover" style="margin: 18px 0px 17px; width:10%; font-size: 100%; margin-left: 1%;">작가정보</a>
				</div>
				<hr>
				<div>
					<!-- 내용 작품 소개 -->
					<div>
						작품내용을 쓰거라			
					</div>
					<hr>
					<!-- 작품내용 end -->
					<!-- 구글맵 -->
					<div><h2>작품 및 편의시설</h2></div>
					<div id="map" style="width: 100%; height: 400px;">
					</div>
					<!-- 구글맵 end -->
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
						<span>배송 교환 환불</span>
					<span id="wonChangReturnButton" onclick="wonDisChangReturnDo()" class="fa fa-arrow-down"></span>
					</div>
				<div id="wonDisChangReturn" style="width:100%; display: block;">
					<table style="width:100%;">
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">클래스 5일 전 취소 시</th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;">100% 환불</td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;"><span>클래스 4일 전 취소 시</span></th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;">클래스 금액의 5% 차감 후 환불</td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">클래스 3일 전 취소 시</th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;">클래스 금액의 10% 차감 후 환불</td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">클래스 2일 전 취소 시</th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;">클래스 금액의 20% 차감 후 환불</td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">클래스 1일 전 취소 시</th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;">클래스 금액의 30% 차감 후 환불</td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">클래스 당일 취소나 불참 시</th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: red;">환불 불가</td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">예약 당일 밤 12시 이전 취소 시</th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;">100% 환불</td>
						</tr>
					</table>
				</div>		
				<!-- 구매후기 end -->
				<hr>
				
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
						</div>
							<!-- 즐겨찾기 공유하기 -->
							<div style="display: flex; flex-direction: row; margin: 1%;">
								<button style="width: 47.5%;height:50px; margin: 1%; background-color: white; border:1px #ABABAB solid;">즐겨찾기</button>
								<button style="width: 47.5%;height:50px; margin: 1%; background-color: white; border:1px #ABABAB solid;">공유하기</button>
							</div>
							<div style="width:94%; display: flex; flex-direction: row; justify-content: center; background-color: #f5f5f5; margin: 1%; padding: 1%;">
								<div style="display: flex; flex-direction: column; width:30%;">
									<span style="display: flex; justify-content: center; font-size: 12px; color: #999;">난이도</span>
									<span style="display: flex; justify-content: center;">중</span>							
								</div>
								<div style="display: flex; flex-direction: column; width:30%;">
									<span style="display: flex; justify-content: center; font-size: 12px; color: #999;">소요시간</span>
									<span style="display: flex; justify-content: center;">1 시간</span>									
								</div>
								<div style="display: flex; flex-direction: column; width:30%;">
									<span style="display: flex; justify-content: center; font-size: 12px; color: #999;">수업인원</span>
									<span style="display: flex; justify-content: center;">4</span>								
								</div>
							</div>
							<div style="width: 100%; margin: 1%;">
								<button style="width:95%; height:80px; margin: 1%;padding:1%; border: none; 
								background: #f95677; font-style: 16px; color: white;">예약하기</button>
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
		</div> --%>
	</div>
	<%@ include file="../include/uFooter.jsp" %>
</div>
</body>
<script type="text/javascript"src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=be7458592e1d99d5cbb5c781b7ae5a77&libraries=services,clusterer"></script>

<script type="text/javascript">
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};  

//지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

//주소로 좌표를 검색합니다
geocoder.addressSearch('경기도 남양주시 와부읍 덕소로 97번길 34', function(result, status) {

// 정상적으로 검색이 완료됐으면 
 if (status === kakao.maps.services.Status.OK) {

    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

    // 결과값으로 받은 위치를 마커로 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: coords
    });

    // 인포윈도우로 장소에 대한 설명을 표시합니다
    var infowindow = new kakao.maps.InfoWindow({
        content: '<div style="width:150px;text-align:center;padding:6px 0;"></div>'
    });
    infowindow.open(map, marker);

    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
    map.setCenter(coords);
} 
});    
</script>
</html>














