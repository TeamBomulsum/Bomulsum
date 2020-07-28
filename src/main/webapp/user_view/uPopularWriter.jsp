<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 인기 작가</title>
<style>
a:link, a:visited, a:hover, a:active{
   text-decoration: none;
   color: black;
}
.jeonga_title_img{
   display:flex;
   width:100%;
   height:210px;
   background-image: url('../resources/img/articles_head.png');
   background-repeat: no-repeat;
   background-size:100%;
   flex-direction: column;
   align-items: center;
   justify-content: center;
}

.jeonga_title_img h1{
   color:white;
}

.jeonga_title_img div{
   height:2px;
   width:64px;
   margin-top:15px;
   margin-bottom:15px;
   background-color:white;
}

.jeonga_title_img p{
   display:flex;
   justify-content:center;
   font-size:14px;
   color:white;
   width:100%;
}
/* 작가 리스트 */
.jeonga_artist_wrap{
	width:1100px;
	margin:0 auto;
}
.jeonga-artist-list{
	padding:0px;
	list-style-type: none;

}
.jeonga-artist-list-item{
	border-bottom:1px solid #D8D8D8;
}

.jeonga-profile-rank{
	padding-top:18px;
	padding-left:8px;
	position:absolute;
	z-index: 10;
}

.jeonga-profile-image{
	margin-top:30px;
	margin-left:31.6px;
	width:100px;
	height:100px;
	border-radius:70%;
	overflow:hidden;
	position:relative;
	z-index: 99;
}
.jeonga-profile-image1{
	margin-top:33.5px;
	margin-left:30.5px;
	width:100px;
	height:100px;
	border-radius:70%;
	overflow:hidden;
	position:relative;
	z-index: 99;
}

.jeonga-profileImage{
	width:100%;
	height:100%;
	object-fit:cover;
}

.jeonga-profile{
	display:flex;
}
.jeonga-profile-split-img{
	width:160px;
}
.jeonga-profile-split{
	padding:18px;
}

.jeonga-profile-content{
	width:200px;
}
.jeonga-profile-text{
	padding:2%;
	font-size:14px;
}
.jeonga-profile-buttons-top{
	display:flex;
}

#jeonga-profile-button-add{
	cursor: pointer;
	border:1px solid #D8D8D8;
	color:#DF3A01;
	padding:7px;
	text-align: center;
  	text-decoration: none;
  	display: inline-block;
  	font-size: 12px;
	width:78px;
	margin:3px;
}

#jeonga-profile-writer-home{
	background-color: white;
	border:1px solid #D8D8D8;
	padding:7px;
	text-align: center;
  	text-decoration: none;
  	display: inline-block;
  	font-size: 12px;
	width:78px;
	margin:3px;
}

#jeonga-profile-message{
	background-color: white;
	border:1px solid #D8D8D8;
	padding:7px;
	text-align: center;
  	text-decoration: none;
  	display: inline-block;
  	font-size: 12px;
	width:178px;
	margin-top:3px;
	margin-left:3px;
	

}
/*이미지 슬라이더 CSS*/
.jeonga-imageSlides-img{
	width:168.25px;
	height:168.25px;
	margin:0;
	padding:0;
}

.joenga-profile-imageslider_one {
	padding:2%;
 	position: absolute;
 	width:673.25px;
 	height:168.25px;
 	margin-left:380px;
 	
}
.jeonga-imageSlides-buttons_one{
	width:673.25px;
	height:168.25px;
	/*visibility:hidden;*/
  	z-index:99;
  	display:flex;
  	justify-content: space-between;
  	position: absolute;
  	
}
/* Hide the images by default*/ 
.jeonga-imageSlides_one {
	display:flex;
	justify-content: space-between;
	position:relative;
	z-index:80;
	width:673.25px;
	height:168.25px;
	padding:0;
 
}

#jeonga-imageSlides1_one {
	display:flex;
	justify-content: space-between;
	position:relative;
	z-index:20;
	width:673.25px;
	height:168.25px;
}


/* Next & previous buttons */
.jeonga-imageSlides_one-prev {
  right:10;
  cursor: pointer;
  width: auto;
  padding: 70px 12px;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
  opacity: 0;
  
}
.jeonga-imageSlides_one-next{
	right:0;
 	cursor: pointer;
 	width: auto;
  	padding:70px 12px;
 	font-weight: bold;
  	font-size: 20px;
  	border-radius: 0 3px 3px 0;
  	user-select: none;
 	-webkit-user-select: none;
	opacity: 0;
}
/* On hover, add a black background color with a little bit see-through */
.jeonga-imageSlides_one-prev:hover, .jeonga-imageSlides_one-next:hover{
  background-color: rgba(0, 0, 0, 0.8);
  color:white;
 opacity: 100;
}

/*이미지 슬라이더2 CSS*/
.jeonga-imageSlides-img{
	width:168.25px;
	height:168.25px;
	margin:0;
	padding:0;
}

.joenga-profile-imageslider_two {
	padding:2%;
 	position: absolute;
 	width:673.25px;
 	height:168.25px;
 	margin-left:380px;
 	
}
.jeonga-imageSlides-buttons_two{
	width:673.25px;
	height:168.25px;
  	z-index:99;
  	display:flex;
  	justify-content: space-between;
  	position: absolute;
  	
}
/* Hide the images by default*/ 
.jeonga-imageSlides_two {
	display:flex;
	justify-content: space-between;
	position:relative;
	z-index:80;
	width:673.25px;
	height:168.25px;
	padding:0;
 
}

#jeonga-imageSlides1_two {
	display:flex;
	justify-content: space-between;
	position:relative;
	z-index:20;
	width:673.25px;
	height:168.25px;
}


/* Next & previous buttons */
.jeonga-imageSlides_two-prev {
  right:10;
  cursor: pointer;
  width: auto;
  padding: 70px 12px;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
  opacity: 0;
  
}
.jeonga-imageSlides_two-next{
	right:0;
 	cursor: pointer;
 	width: auto;
  	padding:70px 12px;
 	font-weight: bold;
  	font-size: 20px;
  	border-radius: 0 3px 3px 0;
  	user-select: none;
 	-webkit-user-select: none;
	opacity: 0;
}
/* On hover, add a black background color with a little bit see-through */
.jeonga-imageSlides_two-prev:hover, .jeonga-imageSlides_two-next:hover{
  background-color: rgba(0, 0, 0, 0.8);
  color:white;
 opacity: 100;
}

/*이미지 슬라이더3 CSS*/
.joenga-profile-imageslider_three {
	padding:2%;
 	position: absolute;
 	width:673.25px;
 	height:168.25px;
 	margin-left:380px;
 	
}
.jeonga-imageSlides-buttons_three{
	width:673.25px;
	height:168.25px;
  	z-index:99;
  	display:flex;
  	justify-content: space-between;
  	position: absolute;
  	
}
/* Hide the images by default*/ 
.jeonga-imageSlides_three {
	display:flex;
	justify-content: space-between;
	position:relative;
	z-index:80;
	width:673.25px;
	height:168.25px;
	padding:0;
 
}

#jeonga-imageSlides1_three {
	display:flex;
	justify-content: space-between;
	position:relative;
	z-index:20;
	width:673.25px;
	height:168.25px;
}


/* Next & previous buttons */
.jeonga-imageSlides_three-prev {
  right:10;
  cursor: pointer;
  width: auto;
  padding: 70px 12px;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
  opacity: 0;
  
}
.jeonga-imageSlides_three-next{
	right:0;
 	cursor: pointer;
 	width: auto;
  	padding:70px 12px;
 	font-weight: bold;
  	font-size: 20px;
  	border-radius: 0 3px 3px 0;
  	user-select: none;
 	-webkit-user-select: none;
	opacity: 0;
}
/* On hover, add a black background color with a little bit see-through */
.jeonga-imageSlides_three-prev:hover, .jeonga-imageSlides_three-next:hover{
  background-color: rgba(0, 0, 0, 0.8);
  color:white;
 opacity: 100;
}
/*이미지 슬라이더4 CSS*/

.joenga-profile-imageslider_four {
	padding:2%;
 	position: absolute;
 	width:673.25px;
 	height:168.25px;
 	margin-left:380px;
 	
}
.jeonga-imageSlides-buttons_four{
	width:673.25px;
	height:168.25px;
  	z-index:99;
  	display:flex;
  	justify-content: space-between;
  	position: absolute;
  	
}
/* Hide the images by default*/ 
.jeonga-imageSlides_four {
	display:flex;
	justify-content: space-between;
	position:relative;
	z-index:80;
	width:673.25px;
	height:168.25px;
	padding:0;
 
}

#jeonga-imageSlides1_four {
	display:flex;
	justify-content: space-between;
	position:relative;
	z-index:20;
	width:673.25px;
	height:168.25px;
}


/* Next & previous buttons */
.jeonga-imageSlides_four-prev {
  right:10;
  cursor: pointer;
  width: auto;
  padding: 70px 12px;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
  opacity: 0;
  
}
.jeonga-imageSlides_four-next{
	right:0;
 	cursor: pointer;
 	width: auto;
  	padding:70px 12px;
 	font-weight: bold;
  	font-size: 20px;
  	border-radius: 0 3px 3px 0;
  	user-select: none;
 	-webkit-user-select: none;
	opacity: 0;
}
/* On hover, add a black background color with a little bit see-through */
.jeonga-imageSlides_four-prev:hover, .jeonga-imageSlides_four-next:hover{
  background-color: rgba(0, 0, 0, 0.8);
  color:white;
 opacity: 100;
}

/*이미지 슬라이더5 CSS*/
.joenga-profile-imageslider_five {
	padding:2%;
 	position: absolute;
 	width:673.25px;
 	height:168.25px;
 	margin-left:380px;
 	
}
.jeonga-imageSlides-buttons_five{
	width:673.25px;
	height:168.25px;
  	z-index:99;
  	display:flex;
  	justify-content: space-between;
  	position: absolute;
  	
}
.jeonga-imageSlides_five {
	display:flex;
	justify-content: space-between;
	position:relative;
	z-index:80;
	width:673.25px;
	height:168.25px;
	padding:0;
 
}

#jeonga-imageSlides1_five {
	display:flex;
	justify-content: space-between;
	position:relative;
	z-index:20;
	width:673.25px;
	height:168.25px;
}


/* Next & previous buttons */
.jeonga-imageSlides_five-prev {
  right:10;
  cursor: pointer;
  width: auto;
  padding: 70px 12px;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
  opacity: 0;
  
}
.jeonga-imageSlides_five-next{
	right:0;
 	cursor: pointer;
 	width: auto;
  	padding:70px 12px;
 	font-weight: bold;
  	font-size: 20px;
  	border-radius: 0 3px 3px 0;
  	user-select: none;
 	-webkit-user-select: none;
	opacity: 0;
}
/* On hover, add a black background color with a little bit see-through */
.jeonga-imageSlides_five-prev:hover, .jeonga-imageSlides_five-next:hover{
  background-color: rgba(0, 0, 0, 0.8);
  color:white;
 opacity: 100;
}
</style>
<script>
var slideIndex = 0;
showSlides(slideIndex);

function plusSlides_one(n) {
  var slides1 = document.getElementById("jeonga-imageSlides1_one");
  slides1.style.display="none";
  showSlides(slideIndex += n);
}

function plusSlides_two(n) {
	  var slides1 = document.getElementById("jeonga-imageSlides1_two");
	  slides1.style.display="none";
	  showSlides_two(slideIndex += n);
}

function plusSlides_three(n) {
	  var slides1 = document.getElementById("jeonga-imageSlides1_three");
	  slides1.style.display="none";
	  showSlides_three(slideIndex += n);
}

function plusSlides_four(n) {
	  var slides1 = document.getElementById("jeonga-imageSlides1_four");
	  slides1.style.display="none";
	  showSlides_four(slideIndex += n);
}
function plusSlides_five(n) {
	  var slides1 = document.getElementById("jeonga-imageSlides1_five");
	  slides1.style.display="none";
	  showSlides_five(slideIndex += n);
}
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("jeonga-imageSlides_one");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  slides[slideIndex-1].style.display = "block";

}
function showSlides_two(n) {
	  var i;
	  var slides = document.getElementsByClassName("jeonga-imageSlides_two");
	  if (n > slides.length) {slideIndex = 1}
	  if (n < 1) {slideIndex = slides.length}
	  for (i = 0; i < slides.length; i++) {
	      slides[i].style.display = "none";
	  }
	  slides[slideIndex-1].style.display = "block";
}

function showSlides_three(n) {
	  var i;
	  var slides = document.getElementsByClassName("jeonga-imageSlides_three");
	  if (n > slides.length) {slideIndex = 1}
	  if (n < 1) {slideIndex = slides.length}
	  for (i = 0; i < slides.length; i++) {
	      slides[i].style.display = "none";
	  }
	  slides[slideIndex-1].style.display = "block";

}
function showSlides_four(n) {
	  var i;
	  var slides = document.getElementsByClassName("jeonga-imageSlides_four");
	  if (n > slides.length) {slideIndex = 1}
	  if (n < 1) {slideIndex = slides.length}
	  for (i = 0; i < slides.length; i++) {
	      slides[i].style.display = "none";
	  }
	  slides[slideIndex-1].style.display = "block";

}
function showSlides_five(n) {
	  var i;
	  var slides = document.getElementsByClassName("jeonga-imageSlides_five");
	  if (n > slides.length) {slideIndex = 1}
	  if (n < 1) {slideIndex = slides.length}
	  for (i = 0; i < slides.length; i++) {
	      slides[i].style.display = "none";
	  }
	  slides[slideIndex-1].style.display = "block";

}
</script>
</head>
<body>
<div>
	<%@ include file="include/uHeader.jsp"  %>
	<div class="uPopularWriterWrap">
		<!-- 배너 헤더 -->
		<div class="jeonga_title_img">
      	<h1>인기작가</h1>
      	<div></div>
     	<p>많은 사람들의 인기를 받고있는 작가님을 소개합니다.</p>
   		</div>
   		
   		<!-- 콘텐츠 -->
   		<div class="jeonga_artist_wrap">
   			<!-- 좋아하는 작가 목록 -->
			<ul class="jeonga-artist-list">
				<!-- 1등 -->
				<li class="jeonga-artist-list-item">
					<!-- 작가 프로필  -->
					<div class="jeonga-profile  ">
						<!-- 작가 프로필 사진 -->
						<div class="jeonga-profile-split-img">
							<div class="jeonga-profile-rank">
									<img src="<c:url value='/resources/img/1.png'/>" style="width:150px; height:150px">
							</div>
							<div class="jeonga-profile-image">
							<a href="#" target="#" class="jeonga-rpofile-image-link">
								<img class="jeonga-profileImage" src="<c:url value='/resources/img/earings.jpg'/>" style="width:100px; height:100px">
							 </a></div>
						</div>
						<div class="jeonga-profile-split">
						<!-- 작가 프로필 내용 -->
							<div class="jeonga-profile-content">
							<a href="#" class="jeonga-profile-title" target="">령쓰</a>
							<div class="jeonga-stars" data-ui="rating" data-value="5">
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i> 
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i>
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i>
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i> 
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i>  
							</div>
							<p class="jeonga-profile-text">안녕하세요 령쓰입니다(*´꒳`*) 여러분들의 추억을 저만의 독특한 감성으로 그려드립니다</p>
							
							<div class="jeonga-profile-buttons">
								<div class="jeonga-profile-buttons-top">
								<!-- <a href="#" class="btn btn-s btn-white toggle-heart"
									data-name="starred-toolbar" data-starred-type="artist"
									data-init="" data-starred="" target=""
									data-target-id="">--><!-- <em class="txt active">♥︎하는 작가</em> 	</a>-->
								<div id="jeonga-profile-button-add">♥︎작가로 추가</div>
									<div id="jeonga-profile-writer-home">
									<a class="jeonga-profile-button" href="#">작가홈</a>
									</div>
								</div>
								<div id="jeonga-profile-message">
									<a href="#" class="jeonga-profile-button">메시지 보내기</a>
								</div>
							</div>
							</div>
						</div>

					<!-- 이미지 슬라이더 -->
					<div class="joenga-profile-imageslider_one">
					 	<div class="jeonga-imageSlides-buttons_one">
  						<a class="jeonga-imageSlides_one-prev" onclick="plusSlides_one(-1)">❮</a>
 						<a class="jeonga-imageSlides_one-next" onclick="plusSlides_one(1)">❯</a>
						</div>
						<!-- 슬라이드 기본 세트 -->
  						<div id="jeonga-imageSlides1_one">
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/Logo_gray.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>">
  						</div>
						<!-- 슬라이드 한 세트 -->
					 	<div class="jeonga-imageSlides_one" style="display:none">
   							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/test.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/text.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/earings.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>">
  						</div>		
  						<!-- 슬라이드 한 세트 -->	
  						<div class="jeonga-imageSlides_one" style="display:none" >
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/Logo_gray.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>">
  						</div>
  						<!-- 슬라이드 한 세트 -->	
  						<div class="jeonga-imageSlides_one" style="display:none" >
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/text.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/earings.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>">
  						</div>
  					</div> 
				</div>
				</li>
		
			<!-- 2등 -->
				<li class="jeonga-artist-list-item">
					<!-- 작가 프로필  -->
					<div class="jeonga-profile  ">
						<!-- 작가 프로필 사진 -->
						<div class="jeonga-profile-split-img">
							<div class="jeonga-profile-rank">
									<img src="<c:url value='/resources/img/2.png'/>" style="width:150px; height:150px">
							</div>
							<div class="jeonga-profile-image">
							<a href="#" target="#" class="jeonga-rpofile-image-link">
								<img class="jeonga-profileImage" src="<c:url value='/resources/img/earings.jpg'/>" style="width:100px; height:100px">
							 </a></div>
						</div>
						<div class="jeonga-profile-split">
						<!-- 작가 프로필 내용 -->
							<div class="jeonga-profile-content">
							<a href="#" class="jeonga-profile-title" target="">령쓰</a>
							<div class="jeonga-stars" data-ui="rating" data-value="5">
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i> 
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i>
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i>
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i> 
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i>  
							</div>
							<p class="jeonga-profile-text">안녕하세요 령쓰입니다(*´꒳`*) 여러분들의 추억을 저만의 독특한 감성으로 그려드립니다</p>
							
							<div class="jeonga-profile-buttons">
								<div class="jeonga-profile-buttons-top">
								<!-- <a href="#" class="btn btn-s btn-white toggle-heart"
									data-name="starred-toolbar" data-starred-type="artist"
									data-init="" data-starred="" target=""
									data-target-id="">--><!-- <em class="txt active">♥︎하는 작가</em> 	</a>-->
								<div id="jeonga-profile-button-add">♥︎작가로 추가</div>
									<div id="jeonga-profile-writer-home">
									<a class="jeonga-profile-button" href="#">작가홈</a>
									</div>
								</div>
								<div id="jeonga-profile-message">
									<a href="#" class="jeonga-profile-button">메시지 보내기</a>
								</div>
							</div>
							</div>
						</div>

					<!-- 이미지 슬라이더 -->
					<div class="joenga-profile-imageslider_two">
					 	<div class="jeonga-imageSlides-buttons_two">
  						<a class="jeonga-imageSlides_two-prev" onclick="plusSlides_two(-1)">❮</a>
 						<a class="jeonga-imageSlides_two-next" onclick="plusSlides_two(1)">❯</a>
						</div>
						<!-- 슬라이드 기본 세트 -->
  						<div id="jeonga-imageSlides1_two">
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/Logo_gray.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/test.png'/>">
  						</div>
						<!-- 슬라이드 한 세트 -->
					 	<div class="jeonga-imageSlides_two" style="display:none">
   							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/test.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/text.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/earings.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>">
  						</div>		
  						<!-- 슬라이드 한 세트 -->	
  						<div class="jeonga-imageSlides_two" style="display:none" >
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/Logo_gray.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/test.png'/>">
  						</div>
  						<!-- 슬라이드 한 세트 -->	
  						<div class="jeonga-imageSlides_two" style="display:none" >
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/text.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/earings.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>">
  						</div>
  					</div> 
				</div>
				</li>
				<!-- 3등 -->
				<li class="jeonga-artist-list-item">
					<!-- 작가 프로필  -->
					<div class="jeonga-profile  ">
						<!-- 작가 프로필 사진 -->
						<div class="jeonga-profile-split-img">
							<div class="jeonga-profile-rank">
									<img src="<c:url value='/resources/img/3.png'/>" style="width:147px; height:147px;">
							</div>
							<div class="jeonga-profile-image1">
							<a href="#" target="#" class="jeonga-rpofile-image-link">
								<img class="jeonga-profileImage" src="<c:url value='/resources/img/earings.jpg'/>" style="width:100px; height:100px">
							 </a></div>
						</div>
						<div class="jeonga-profile-split">
						<!-- 작가 프로필 내용 -->
							<div class="jeonga-profile-content">
							<a href="#" class="jeonga-profile-title" target="">령쓰</a>
							<div class="jeonga-stars" data-ui="rating" data-value="5">
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i> 
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i>
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i>
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i> 
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i>  
							</div>
							<p class="jeonga-profile-text">안녕하세요 령쓰입니다(*´꒳`*) 여러분들의 추억을 저만의 독특한 감성으로 그려드립니다</p>
							
							<div class="jeonga-profile-buttons">
								<div class="jeonga-profile-buttons-top">
								<!-- <a href="#" class="btn btn-s btn-white toggle-heart"
									data-name="starred-toolbar" data-starred-type="artist"
									data-init="" data-starred="" target=""
									data-target-id="">--><!-- <em class="txt active">♥︎하는 작가</em> 	</a>-->
								<div id="jeonga-profile-button-add">♥︎작가로 추가</div>
									<div id="jeonga-profile-writer-home">
									<a class="jeonga-profile-button" href="#">작가홈</a>
									</div>
								</div>
								<div id="jeonga-profile-message">
									<a href="#" class="jeonga-profile-button">메시지 보내기</a>
								</div>
							</div>
							</div>
						</div>

					<!-- 이미지 슬라이더 -->
					<div class="joenga-profile-imageslider_three">
					 	<div class="jeonga-imageSlides-buttons_three">
  						<a class="jeonga-imageSlides_three-prev" onclick="plusSlides_three(-1)">❮</a>
 						<a class="jeonga-imageSlides_three-next" onclick="plusSlides_three(1)">❯</a>
						</div>
						<!-- 슬라이드 기본 세트 -->
  						<div id="jeonga-imageSlides1_three">
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/Logo_gray.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/test.png'/>">
  						</div>
						<!-- 슬라이드 한 세트 -->
					 	<div class="jeonga-imageSlides_three" style="display:none">
   							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/test.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/text.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/earings.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>">
  						</div>		
  						<!-- 슬라이드 한 세트 -->	
  						<div class="jeonga-imageSlides_three" style="display:none" >
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/Logo_gray.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/test.png'/>">
  						</div>
  						<!-- 슬라이드 한 세트 -->	
  						<div class="jeonga-imageSlides_three" style="display:none" >
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/text.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/earings.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>">
  						</div>
  					</div> 
				</div>
				</li>
				<!-- 4등 -->
				<li class="jeonga-artist-list-item">
					<!-- 작가 프로필  -->
					<div class="jeonga-profile  ">
						<!-- 작가 프로필 사진 -->
						<div class="jeonga-profile-split-img">
							<div class="jeonga-profile-rank">
									<img src="<c:url value='/resources/img/3.png'/>" style="width:147px; height:147px;">
							</div>
							<div class="jeonga-profile-image1">
							<a href="#" target="#" class="jeonga-rpofile-image-link">
								<img class="jeonga-profileImage" src="<c:url value='/resources/img/earings.jpg'/>" style="width:100px; height:100px">
							 </a></div>
						</div>
						<div class="jeonga-profile-split">
						<!-- 작가 프로필 내용 -->
							<div class="jeonga-profile-content">
							<a href="#" class="jeonga-profile-title" target="">령쓰</a>
							<div class="jeonga-stars" data-ui="rating" data-value="5">
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i> 
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i>
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i>
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i> 
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i>  
							</div>
							<p class="jeonga-profile-text">안녕하세요 령쓰입니다(*´꒳`*) 여러분들의 추억을 저만의 독특한 감성으로 그려드립니다</p>
							
							<div class="jeonga-profile-buttons">
								<div class="jeonga-profile-buttons-top">
								<!-- <a href="#" class="btn btn-s btn-white toggle-heart"
									data-name="starred-toolbar" data-starred-type="artist"
									data-init="" data-starred="" target=""
									data-target-id="">--><!-- <em class="txt active">♥︎하는 작가</em> 	</a>-->
								<div id="jeonga-profile-button-add">♥︎작가로 추가</div>
									<div id="jeonga-profile-writer-home">
									<a class="jeonga-profile-button" href="#">작가홈</a>
									</div>
								</div>
								<div id="jeonga-profile-message">
									<a href="#" class="jeonga-profile-button">메시지 보내기</a>
								</div>
							</div>
							</div>
						</div>

					<!-- 이미지 슬라이더 -->
					<div class="joenga-profile-imageslider_four">
					 	<div class="jeonga-imageSlides-buttons_four">
  						<a class="jeonga-imageSlides_four-prev" onclick="plusSlides_four(-1)">❮</a>
 						<a class="jeonga-imageSlides_four-next" onclick="plusSlides_four(1)">❯</a>
						</div>
						<!-- 슬라이드 기본 세트 -->
  						<div id="jeonga-imageSlides1_four">
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/Logo_gray.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/test.png'/>">
  						</div>
						<!-- 슬라이드 한 세트 -->
					 	<div class="jeonga-imageSlides_four" style="display:none">
   							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/test.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/text.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/earings.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>">
  						</div>		
  						<!-- 슬라이드 한 세트 -->	
  						<div class="jeonga-imageSlides_four" style="display:none" >
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/Logo_gray.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/test.png'/>">
  						</div>
  						<!-- 슬라이드 한 세트 -->	
  						<div class="jeonga-imageSlides_four" style="display:none" >
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/text.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/earings.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>">
  						</div>
  					</div> 
				</div>
				</li>
				<!-- 5등 -->
				<li class="jeonga-artist-list-item1">
					<!-- 작가 프로필  -->
					<div class="jeonga-profile  ">
						<!-- 작가 프로필 사진 -->
						<div class="jeonga-profile-split-img">
							<div class="jeonga-profile-rank">
									<img src="<c:url value='/resources/img/3.png'/>" style="width:147px; height:147px;">
							</div>
							<div class="jeonga-profile-image1">
							<a href="#" target="#" class="jeonga-rpofile-image-link">
								<img class="jeonga-profileImage" src="<c:url value='/resources/img/earings.jpg'/>" style="width:100px; height:100px">
							 </a></div>
						</div>
						<div class="jeonga-profile-split">
						<!-- 작가 프로필 내용 -->
							<div class="jeonga-profile-content">
							<a href="#" class="jeonga-profile-title" target="">령쓰</a>
							<div class="jeonga-stars" data-ui="rating" data-value="5">
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i> 
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i>
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i>
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i> 
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i>  
							</div>
							<p class="jeonga-profile-text">안녕하세요 령쓰입니다(*´꒳`*) 여러분들의 추억을 저만의 독특한 감성으로 그려드립니다</p>
							
							<div class="jeonga-profile-buttons">
								<div class="jeonga-profile-buttons-top">
								<!-- <a href="#" class="btn btn-s btn-white toggle-heart"
									data-name="starred-toolbar" data-starred-type="artist"
									data-init="" data-starred="" target=""
									data-target-id="">--><!-- <em class="txt active">♥︎하는 작가</em> 	</a>-->
								<div id="jeonga-profile-button-add">♥︎작가로 추가</div>
									<div id="jeonga-profile-writer-home">
									<a class="jeonga-profile-button" href="#">작가홈</a>
									</div>
								</div>
								<div id="jeonga-profile-message">
									<a href="#" class="jeonga-profile-button">메시지 보내기</a>
								</div>
							</div>
							</div>
						</div>

					<!-- 이미지 슬라이더 -->
					<div class="joenga-profile-imageslider_five">
					 	<div class="jeonga-imageSlides-buttons_five">
  						<a class="jeonga-imageSlides_five-prev" onclick="plusSlides_five(-1)">❮</a>
 						<a class="jeonga-imageSlides_five-next" onclick="plusSlides_five(1)">❯</a>
						</div>
						<!-- 슬라이드 기본 세트 -->
  						<div id="jeonga-imageSlides1_five">
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/Logo_gray.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/test.png'/>">
  						</div>
						<!-- 슬라이드 한 세트 -->
					 	<div class="jeonga-imageSlides_five" style="display:none">
   							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/test.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/text.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/earings.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>">
  						</div>		
  						<!-- 슬라이드 한 세트 -->	
  						<div class="jeonga-imageSlides_five" style="display:none" >
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/Logo_gray.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/test.png'/>">
  						</div>
  						<!-- 슬라이드 한 세트 -->	
  						<div class="jeonga-imageSlides_five" style="display:none" >
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/text.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/earings.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>">
  						</div>
  					</div> 
				</div>
				</li>

			</ul>
		</div>
	</div>
	<%@ include file="include/uFooter.jsp" %>
</div>
</body>
</html>