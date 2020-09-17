<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 - 핸드메이드, 수공예, 수제먹거리</title>
</head>
<script src="https://kit.fontawesome.com/fea5b9b7d0.js" crossorigin="anonymous"></script>
<style>
.mySlides {
	width: 100%;
	display: none;
}

.title_img{
	width:100%;
	vertical-align: middle;
}

/* Slideshow container */
.slideshow-container {
	width:100%;
	position: relative;
    margin-top: 2px;
}

/* Next & previous buttons */
.prev, .next {
	cursor: pointer;
	position: absolute;
	top: 50%;
	width: auto;
	padding: 16px;
	margin-top: -22px;
	color: #333;
	font-weight: bold;
	font-size: 18px;
	transition: 0.6s ease;
	border-radius: 0 3px 3px 0;
	user-select: none;
}

/* Position the "next button" to the right */
.next {
	right: 0;
	border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
	background-color: rgba(0, 0, 0, 0.8);
}


/* Number text (1/3 etc) */
.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}


.active, .dot:hover {
	background-color: #717171;
}

/* Fading animation */
.fade {
	-webkit-animation-name: fade;
	-webkit-animation-duration: 1.5s;
	animation-name: fade;
	animation-duration: 1.5s;
}

@-webkit-keyframes fade {
	from {opacity: .4}
	to {opacity: 1}
}

@keyframes fade {
	from {opacity: .4}
	to {opacity: 1}
}
</style>
<style>
.dndud_content {
	width: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.dndud_img_slide_box {
	width: 100%;
	height: 480px !important;
}

.all_categories{
	width:1073px;
	display:flex;
	flex-direction: column;
}

.part_of_category{
	display:flex;
	width:100%;
	flex-direction: column;
	padding-top: 40px;
}

.title{
    padding-left: 10px;
	font-size:20px;
	color:#333;
	font-weight: 700;
	cursor:pointer;
	margin-bottom: 16px;
}

.articles{
	display:flex;
	flex-wrap: wrap;
}

.reviews{
	display:flex;
	flex-wrap: wrap;
}

.writers{
	display:flex;
	flex-wrap: wrap;
}

.article{
	margin-top: 16px;
	margin-left: 8px;
	margin-right: 8px;
	width:196px;
	border: 1px solid #d9d9d9;
	border-radius:4px;
	background-color:#f8f9fb;
	cursor:pointer;
}

.review{
	display:flex;
	flex-direction: row;
	margin-top: 16px;
	margin-left: 8px;
	margin-right: 8px;
	width:518.5px;
	border: 1px solid #d9d9d9;
	border-radius:4px;
	background-color:#f8f9fb;
}

.writer{
	display:flex;
	flex-direction: column;
	margin-top: 16px;
	margin-left: 8px;
	margin-right: 8px;
	border: 1px solid #d9d9d9;
	border-radius:4px;
	width: 339.66px;
	align-items: center;
	color:#333;
	font-size:14px;
}

.categories{
	display:flex;
	flex-wrap: wrap;
	cursor:pointer;
}

.category{
	display:flex;
	flex-direction:column;
	margin-top: 16px;
	margin-left: 8px;
	margin-right: 8px;
	width:160.8px;
	border: 1px solid #d9d9d9;
	border-radius:4px;
	background-color:#f8f9fb;
}

.category span{
	padding:5px;
	font-size:14px;
	
}

.category_img{
	width:160.8px;
	height:160.8px;
	border-radius: 4px;
	background-repeat: no-repeat;
	background-size: 160.8px;
}

.article_img{
	display:flex;
	flex-direction: row;
	justify-content: space-between;
	width:196px;
	height:196px;
	background-size: 196px;
	border-radius:4px;
	background-repeat: no-repeat;
}

.article_img img{
	margin:5%;
	display:flex;
	width:30px;
	height:30px;
}

.article_img i{
	display:flex;
    font-size: 20px;
    margin: 5%;
    color: gray;
    -webkit-text-stroke-width: 1px;
    -webkit-text-stroke-color: white;
}

.review_img{
	background-image:url("<c:url value='/resources/img/uhome_review.PNG'/>"); 
	width:209px;
	height:209px;
	background-size: 209px;
	border-radius:4px;
	background-repeat: no-repeat;
}

.writer_img{
	background-image:url("<c:url value='/resources/img/writer_profile.PNG'/>"); 
	width:339px;
	height:160px;
	background-size: 339px;
	border-radius:4px;
	background-repeat: no-repeat;
	display:flex;
	justify-content: center;
	align-items: flex-end;
}

.writer_profile{
	z-index:10;
	border-radius: 50%;
	width:80px;
	height:80px;
    background-color: yellow;
}

.writer_name{
	display:flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	margin-top : 10px;
}

.writer_name span{
	margin-top: 10px;
}

.writer_intro{
	margin-top:20px;
	height:100px;
	color:#666;
	margin-bottom:10px;
}

.link_groups{
	width:309px;
	padding:15px;
	font-size:14px;
	color:#333;
	display:flex;
	flex-direction: column;
}

.link_writer{
	display:flex;
	flex-direction: row;
}

.link_groups span{
	padding: 1px 0;
	cursor:pointer;
	text-align: center;
}


.link_writer span:nth-child(1){
	color:#1f76bb;
	width:153px;
	margin-right:1.5px;
	border:1px solid #d9d9d9;
}

.link_writer span:nth-child(2){
	width:153px;
	margin-left:1.5px;
	border:1px solid #d9d9d9;
}

.link_groups .send_message{
	width:309px;
	margin-top: 1.5px;
	border: 1px solid #d9d9d9;
}



.article_detail{
	padding: 8px 10px;
	height:96px;
	justify-content: flex-start;
	display:flex;
	flex-direction: column;
	border-bottom:1px solid #d9d9d9;
	font-size:12px;
}

.article_detail a{
	hegith:15px;
	font-size:12px;
	color:#999;
	margin-bottom:4px;
}

.article_detail span{
	font-size:14px;
	height:42px
}

.review_detail{
	padding:10px;
	display:flex;
	justify-content: flex-start;
	flex-direction: column;
	font-size:12px;
}

.review_detail span{
	color:#333;
	font-weight: 700;
	font-size:14px;
	height:50px;
}

.review_detail .review_text{
	width:300px;
	height:120px;
}

.review_detail .review_text span{
	color:#666;
	overflow:hidden;
	text-overflow: ellipsis;
	font-size:14px;
}

.article_grade{
	font-size:12px;
	display:flex;
	flex-direction: row;
	padding:8px 10px;
	justify-content: flex-start;
	align-items: center;
	height:18px;
}

.article_grade span:nth-last-child(1){
	display: flex;
    align-items: center;
    padding-left: 10px;
    color: #999;
}

.review_detail .grade span{
	font-size:12px;
	color:#999;
}

.go_button{
	display:flex;
	justify-content:center;
	align-items:center;
	margin:24px;
}

.go_button span{
	display:flex;
	justify-content:center;
	align-items: center;
	padding:10px 24px;
	width:400px;
	border: 1px solid #d9d9d9;
	border-radius: 2px;
	cursor:pointer;
}

.go_button span:hover{
	outline: none;
    background: #f5f5f5;
    border-color: #d9d9d9;
}

.minwoo_starRev{
	display:flex;
}

.minwoo_starR1{
    background: url('<c:url value='/resources/img/KMWico_review.png'/>') no-repeat -28px 0;
    background-size: auto 100%;
    width: 8px;
    height: 16px;
    float:left;
    text-indent: -9999px;
}
.minwoo_starR2{
    background: url('<c:url value='/resources/img/KMWico_review.png'/>') no-repeat right 0;
    background-size: auto 100%;
    width: 8px;
    height: 16px;
    float:left;
    text-indent: -9999px;
}
.minwoo_starR1.on{background-position:0 0;}
.minwoo_starR2.on{background-position:-8px 0;}

.fs{
	cursor:pointer;
}

.all_of_category{
	margin-bottom:40px;
}
</style>

<body>
	<div>
		<%@ include file="include/uHeader.jsp"%>
		<div class="dndud_content">
		
			<!--  상단 이미지 슬라이드 쇼   -->
			<div class="slideshow-container">
				<div class="mySlides fade">
					<div class="numbertext">1 / 8</div>
					<img class="title_img" src="<c:url value='/resources/img/uhome1.jpg'/>" style="width: 100%">
				</div>

				<div class="mySlides fade">
					<div class="numbertext">2 / 8</div>
					<img class="title_img"  src="<c:url value='/resources/img/uhome2.jpg'/>" style="width: 100%">
				</div>

				<div class="mySlides fade">
					<div class="numbertext">3 / 8</div>
					<img class="title_img"  src="<c:url value='/resources/img/uhome3.jpg'/>" style="width: 100%">
				</div>

				<div class="mySlides fade">
					<div class="numbertext">4 / 8</div>
					<img class="title_img"  src="<c:url value='/resources/img/uhome4.jpg'/>" style="width: 100%">
				</div>
				
				<div class="mySlides fade">
					<div class="numbertext">5 / 8</div>
					<img class="title_img"  src="<c:url value='/resources/img/uhome5.jpg'/>" style="width: 100%">
				</div>
				
				<div class="mySlides fade">
					<div class="numbertext">6 / 8</div>
					<img class="title_img"  src="<c:url value='/resources/img/uhome6.jpg'/>" style="width: 100%">
				</div>
				
				<div class="mySlides fade">
					<div class="numbertext">7 / 8</div>
					<img class="title_img"  src="<c:url value='/resources/img/uhome7.jpg'/>" style="width: 100%">
				</div>
				
				<div class="mySlides fade">
					<div class="numbertext">8 / 8</div>
					<img class="title_img"  src="<c:url value='/resources/img/uhome8.jpg'/>" style="width: 100%">
				</div>

				<a class="prev" onclick="plusSlides(-1)">&#10094;</a> 
				<a class="next" onclick="plusSlides(1)">&#10095;</a>
			</div>
			
			<div class="all_categories">
				<!-- 오늘의 추천작품 -->
				<div class="today_recommend_work part_of_category">
					<span class="title">
						<i class="fas fa-medal"></i><a>오늘의 추천작품</a>
					</span>
					<div class="articles">
						<c:forEach items="${recommendWork }" var="recommend">
							<div class="article" onclick="artCode(this)" id="${recommend.artCode }">
								<div class="article_img" style="background-image: URL('/bomulsum/upload/${recommend.artImg}')">
									<c:set var="wishCheck" value="N" />
									<c:if test="${not empty wishList }">
										<c:forEach items="${wishList }" var="wish">
											<c:if test="${recommend.artCode eq wish }">
												<c:set var="wishCheck" value="Y"/>
											</c:if>
										</c:forEach>
									</c:if>
									<c:if test="${wishCheck eq 'Y' }">
										<i class="fa fa-star fs" style="color:#d64640"></i>
									</c:if>
									<c:if test="${wishCheck eq 'N' }">
										<i class="fa fa-star fs"></i>
									</c:if>
									<input type="hidden" value="${recommend.artCode }">
								</div>
								<div class="article_detail">
									<a>${recommend.writerName }</a>
									<span>${recommend.artName }</span>
								</div>
								<div class="article_grade">
								<c:if test="${recommend.reviewCnt ne 0 }">								
									<div class="minwoo_starRev" data-rate="${recommend.reviewValue }">
										<span class="minwoo_starR1">별1_왼쪽</span> <span class="minwoo_starR2">별1_오른쪽</span>
										<span class="minwoo_starR1">별2_왼쪽</span> <span class="minwoo_starR2">별2_오른쪽</span>
										<span class="minwoo_starR1">별3_왼쪽</span> <span class="minwoo_starR2">별3_오른쪽</span>
										<span class="minwoo_starR1">별4_왼쪽</span> <span class="minwoo_starR2">별4_오른쪽</span>
										<span class="minwoo_starR1">별5_왼쪽</span> <span class="minwoo_starR2">별5_오른쪽</span>
										<span>(<a>${recommend.reviewCnt}</a>)</span>
									</div>
								</c:if>
								</div>
							</div>
						</c:forEach>
					</div>
					
					<div class="go_button" onclick="location.href='/bomulsum/category/recommended.do';">
						<span>오늘의 추천 작품 더보기</span>
					</div>
				</div>
				
				
				<!-- 실시간 후기 -->
				<div class="live_review part_of_category">
					<span class="title">
						<i class="fas fa-user-edit"></i><a>실시간 후기</a>
					</span>
					<div class="reviews">
					
						<c:forEach var="i" begin="1" end="6">
							<div class="review">
								<div class="review_img"></div>
								<div class="review_detail">
									<span>브로치 동물 친구들~</span>
									<div class="review_text">
										<span>우악 금요일 주문해서 토요일 받았어용
										배송도 빠르고 브로치도 너무 귀여워요 ㅠㅠㅠ
										서비스로 주신브로치랑 과자도 정말 감사해용
										많이 파시구 앞으로도 예쁜작품 많이 만들어주세요.</span>
									</div>
									<div class="grade">
										<i class="fa fa-star" style="color:gold"></i>
										<i class="fa fa-star" style="color:gold"></i>
										<i class="fa fa-star" style="color:gold"></i>
										<i class="fa fa-star" style="color:gold"></i>
										<i class="fa fa-star" style="color:gold"></i>
										<span> | <a>이우선</a></span>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					
					<div class="go_button">
						<span>실시간 후기 더보기</span>
					</div>
				</div>
				
				<!-- 작가님 추천 -->
				<div class="writer_recommend part_of_category">
					<span class="title">
						<i class="fas fa-ad"></i><a>작가님 추천작품</a>
					</span>
					<div class="articles">
						<c:forEach items="${artistRecommend }" var="artistRec">
							<div class="article" onclick="artCode(this)"  id="${artistRec.artCode }">
								<div class="article_img" style="background-image: URL('/bomulsum/upload/${artistRec.artImg}')">
									<c:set var="wishCheck" value="N" />
									<c:if test="${not empty wishList }">
										<c:forEach items="${wishList }" var="wish">
											<c:if test="${artistRec.artCode eq wish }">
												<c:set var="wishCheck" value="Y"/>
											</c:if>
										</c:forEach>
									</c:if>
									<c:if test="${wishCheck eq 'Y' }">
										<i class="fa fa-star fs" style="color:#d64640"></i>
									</c:if>
									<c:if test="${wishCheck eq 'N' }">
										<i class="fa fa-star fs"></i>
									</c:if>
									<input type="hidden" value="${artistRec.artCode }">
								</div>
								<div class="article_detail">
									<a>${artistRec.writerName }</a>
									<span>${artistRec.artName }</span>
								</div>
								<div class="article_grade">
								<c:if test="${artistRec.reviewCnt ne 0 }">								
									<div class="minwoo_starRev" data-rate="${artistRec.reviewValue }">
										<span class="minwoo_starR1">별1_왼쪽</span> <span class="minwoo_starR2">별1_오른쪽</span>
										<span class="minwoo_starR1">별2_왼쪽</span> <span class="minwoo_starR2">별2_오른쪽</span>
										<span class="minwoo_starR1">별3_왼쪽</span> <span class="minwoo_starR2">별3_오른쪽</span>
										<span class="minwoo_starR1">별4_왼쪽</span> <span class="minwoo_starR2">별4_오른쪽</span>
										<span class="minwoo_starR1">별5_왼쪽</span> <span class="minwoo_starR2">별5_오른쪽</span>
										<span>(<a>${artistRec.reviewCnt}</a>)</span>
									</div>
								</c:if>
								</div>
							</div>
						</c:forEach>
					</div>
					
					<div class="go_button">
						<span>작가님 추천작품 더보기</span>
					</div>
				</div>
				
				<!-- 인기 작품 -->
				<div class="best_article part_of_category">
					<span class="title">
						<i class="fas fa-fire"></i><a>인기 작품</a>
					</span>
					<div class="articles">
						<c:set var="i" value="0" />
						<c:forEach items="${bestWork }" var="best">
							<div class="article" onclick="artCode(this)" id="${best.artCode }">
								<div class="article_img" style="background-image: URL('/bomulsum/upload/${best.artImg}')">
									<c:choose>
										<c:when test="${i == 0}">
											<img src="<c:url value='/resources/img/uFirst.png'/> ">
										</c:when>
										<c:when test="${i == 1}">
											<img src="<c:url value='/resources/img/uSecond.png'/> ">
										</c:when>
										<c:otherwise>
											<img src="<c:url value='/resources/img/uThird.png'/> ">
										</c:otherwise>
										
									</c:choose>
									<c:set var="wishCheck" value="N" />
									<c:if test="${not empty wishList }">
										<c:forEach items="${wishList }" var="wish">
											<c:if test="${best.artCode eq wish }">
												<c:set var="wishCheck" value="Y"/>
											</c:if>
										</c:forEach>
									</c:if>
									<c:if test="${wishCheck eq 'Y' }">
										<i class="fa fa-star fs" style="color:#d64640"></i>
									</c:if>
									<c:if test="${wishCheck eq 'N' }">
										<i class="fa fa-star fs"></i>
									</c:if>
									<input type="hidden" value="${best.artCode }">
								</div>
								<div class="article_detail">
									<a>${best.writerName }</a>
									<span>${best.artName }</span>
								</div>
								<div class="article_grade">
								<c:if test="${best.reviewCnt ne 0 }">								
									<div class="minwoo_starRev" data-rate="${best.reviewValue }">
										<span class="minwoo_starR1">별1_왼쪽</span> <span class="minwoo_starR2">별1_오른쪽</span>
										<span class="minwoo_starR1">별2_왼쪽</span> <span class="minwoo_starR2">별2_오른쪽</span>
										<span class="minwoo_starR1">별3_왼쪽</span> <span class="minwoo_starR2">별3_오른쪽</span>
										<span class="minwoo_starR1">별4_왼쪽</span> <span class="minwoo_starR2">별4_오른쪽</span>
										<span class="minwoo_starR1">별5_왼쪽</span> <span class="minwoo_starR2">별5_오른쪽</span>
										<span>(<a>${best.reviewCnt}</a>)</span>
									</div>
								</c:if>
								</div>
							</div>
							<c:set var="i" value="${i+1 }"/>
						</c:forEach>
					</div>
					
					<div class="go_button">
						<span>인기작품 더보기</span>
					</div>
				</div>
				
				
				<!-- 인기 작가 -->
				<div class="best_writer part_of_category">
					<span class="title">
						<i class="far fa-thumbs-up"></i><a>인기작가</a>
					</span>
					<div class="writers">
						
						<c:forEach var="i" begin="1" end="3">
							<div class="writer">
								<div class="writer_img">
									<div class="writer_profile"></div>
								</div>
								<div class="writer_name">
									<span>디디얌</span>
									<span>
										<i class="fa fa-star" style="color:gold"></i>
										<i class="fa fa-star" style="color:gold"></i>
										<i class="fa fa-star" style="color:gold"></i>
										<i class="fa fa-star" style="color:gold"></i>
										<i class="fa fa-star" style="color:gold"></i>
									</span>
								</div>
								<div class="writer_intro">
									<span>디디얌 베이커리 & 디저트</span>
								</div>
								<div class="link_groups">
									<div class="link_writer">
										<span><i class="fas fa-heart"></i> 작가로 추가</span>
										<span>작가 홈</span>
									</div>
									<span class="send_message">
										메시지 보내기
									</span>
								</div>
							</div>
						</c:forEach>
						
						
					</div>
					
					<div class="go_button">
						<span>인기작가 더보기</span>
					</div>
				</div>
				
				
				<!-- 전체 카테고리 -->
				<div class="all_of_category part_of_category">
					<span class="title">
						<i class="fas fa-th-large"></i><a>전체 카테고리</a>
					</span>
					<div class="categories">
						<c:set var="img" value="${fn:split(categoryImg, ',') }" />
						<c:forEach items="${category }" var="c" varStatus="v">
						
							<div class="category" onclick="location.href='/bomulsum/category/detail.do?category=${c}';">
							
								<c:if test="${img[v.index] eq \"null\"}">
									<div class="category_img"
										style="background-image: url('/bomulsum/resources/img/noimage.png')"></div>
								</c:if>
								<c:if test="${img[v.index] ne \"null\"}">
									<div class="category_img" 
										style="background-image: url('/bomulsum/upload/${img[v.index] } ');"></div>
								</c:if>
								
								<span>${c }</span>
								
							</div>
							
						</c:forEach>
						
					</div>
					
				</div>
				
				
				
			</div>
			
		</div>
		<%@ include file="include/uFooter.jsp"%>
	</div>
</body>
<script>
var memberCode = '<%= (String)session.getAttribute("member") %>';

var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  slides[slideIndex-1].style.display = "block";
}

window.onload = function(){
	setInterval(function(){
		plusSlides(1);
	}, 5000);
}

function artCode(e){
	var art_code = e.id;
	var url = "/bomulsum/user/uProductInfo/"+art_code+".do?memberCode="+memberCode;
	window.open(url, "_blank");
}

window.onload = function(){
	var starRevPoint = $('.minwoo_starRev');
	starRevPoint.each(function(){
		var targetScore = $(this).attr('data-rate');
		console.log(targetScore);
		$(this).find('span:nth-child(-n+'+ targetScore +')').parent().children('span').removeClass('on');
		$(this).find('span:nth-child(-n+'+ targetScore +')').addClass('on').prevAll('span').addClass('on');
	});
}

$(function(){
	
	$(".fs").on("click", function(e){
		e.stopPropagation();
		if(memberCode == null || memberCode == 'null'){
			alert('로그인이 필요한 서비스입니다.');
			location.href='/bomulsum/user/login.do';
			return;
		}
		
		var artCode = $(this).next().val();
		var option = '좋아하는작품';
		console.log(artCode);
		
		
		var clickIcon = $(this);
		console.log(clickIcon);
		var tORf;
		
		if(clickIcon.css("color") == "rgb(128, 128, 128)"){
			clickIcon.css("color", "#d64640");
			tORf = true;
		}else{
			clickIcon.css("color", "gray");
			tORf = false;
		}
		
		$.ajax({
			url:'/bomulsum/category/wish.do',
			data:{
				'member':memberCode,
				'option':option,
				'optionCode':artCode,
				'bool': tORf
			},
			type:'POST',
			success:function(data){
				
			},
			error:function(e){
				console.log(e);
			}
		}); 
		if(tORf){
			alert('좋아하는 작품에 추가되었습니다.');
		}else{
			alert('해제되었습니다.');
		}
	});
});
</script>
</html>