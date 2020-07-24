<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 좋아하는 작가</title>
<style>
.content {
	width: 70%;
	margin-left: auto;
	margin-right: auto;
	padding-top: 36px;
	padding-bottom: 64px;
	display: flex;
}

body a:link, a:visited, a:hover, a:active {
	text-decoration: none;
	border: none;
}

.uLikeWriterWrap {
	width: 80%;
	margin-left: 2%;
}
/*작가 프로필*/
.jeonga-artist-list{
	padding:0px;
}
.jeonga-artist-list-item{
	border-bottom:1px solid #D8D8D8;
}


.jeonga-wprofile-image{
	width:80px;
	height:80px;
	border-radius:70%;
	overflow:hidden;
	position:relative;
}

.jeonga-wprofileImage{
	width:100%;
	height:100%;
	object-fit:cover;
}

.jeonga-wprofile{
	display:flex;
}
.jeonga-wprofile-split{
	padding:2%;
}

.jeonga-wprofile-content{
	width:200px;
}
.jeonga-wprofile-text{
	padding:2%;
	font-size:14px;
}
.jeonga-wprofile-buttons-top{
	display:flex;
}

#jeonga-wprofile-button-add{
	background-color:#DF3A01;
	border:1px solid #DF3A01;
	color:white;
	padding:7px;
	text-align: center;
  	text-decoration: none;
  	display: inline-block;
  	font-size: 12px;
	width:78px;
	margin:3px;
}

#jeonga-wprofile-writer-home{
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

#jeonga-wprofile-message{
	background-color: white;
	border:1px solid #D8D8D8;
	padding:7px;
	text-align: center;
  	text-decoration: none;
  	display: inline-block;
  	font-size: 12px;
	width:181px;
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

.joenga-wprofile-imageslider {
	padding:2%;
 	position: relative;
 	width:505px;
 	height:168.25px;
 	
}
.jeonga-imageSlides-buttons{
	width:505px;
	height:168.25px;
	/*visibility:hidden;*/
  	z-index:99;
  	display:flex;
  	justify-content: space-between;
  	position: absolute;
  	
}
/* Hide the images by default*/ 
.jeonga-imageSlides {
	display:flex;
	justify-content: space-between;
	position:relative;
	z-index:80;
	width:505px;
	height:168.25px;
	padding:0;
	/*display:none;*/
 
}

#jeonga-imageSlides1 {
	display:flex;
	justify-content: space-between;
	position:relative;
	z-index:20;
	width:505px;
	height:168.25px;

 
}


/* Next & previous buttons */
.jeonga-imageSlides-prev {
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
.jeonga-imageSlides-next{
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
.jeonga-imageSlides-prev:hover, .jeonga-imageSlides-next:hover{
  background-color: rgba(0, 0, 0, 0.8);
  color:white;
 opacity: 100;
}

</style>

<script>
var slideIndex = 0;
showSlides(slideIndex);



function plusSlides(n) {
  var slides1 = document.getElementById("jeonga-imageSlides1");
  slides1.style.display="none";
  showSlides(slideIndex += n);
  
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("jeonga-imageSlides");
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
	<!-- 헤더 -->
	<%@ include file="include/uHeader.jsp"%>

	<div class="content">
		<!-- 사이드메뉴 -->
		<%@ include file="include/uside.jsp"%>
		<!-- 내용 여기다 넣으시오 -->
		<div class="uLikeWriterWrap">
			<div class="jeonga-uLikeWriter-title">
			<h2 id="jeonga-uLikeWriter-text">좋아하는(♥) 작가</h2>
			</div>
	
			<!-- 좋아하는 작가 목록 -->
			<ul class="jeonga-artist-list">
				<li class="jeonga-artist-list-item">
					<!-- 작가 프로필  -->
					<div class="jeonga-wprofile  ">
						<!-- 작가 프로필 사진 -->
						<div class="jeonga-wprofile-split">
							<div class="jeonga-wprofile-image">
							<a href="#" target="#" class="jeonga-wrpofile-image-link">
								<img id="jeonga-wprofileImage" src="<c:url value='/resources/img/earings.jpg'/>"/>
							 </a></div>
						</div>
						<div class="jeonga-wprofile-split">
						<!-- 작가 프로필 내용 -->
							<div class="jeonga-wprofile-content">
							<a href="#" class="jeonga-wprofile-title" target="">령쓰</a>
							<div class="jeonga-stars" data-ui="rating" data-value="5">
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i> 
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i>
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i>
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i> 
								<i class="fa fa-star" aria-hidden="true" style="color:gold"></i>  
							</div>
							<p class="jeonga-wprofile-text">안녕하세요 령쓰입니다(*´꒳`*) 여러분들의 추억을 저만의 독특한 감성으로 그려드립니다</p>
							
							<div class="jeonga-wprofile-buttons">
								<div class="jeonga-wprofile-buttons-top">
								<!-- <a href="#" class="btn btn-s btn-white toggle-heart"
									data-name="starred-toolbar" data-starred-type="artist"
									data-init="" data-starred="" target=""
									data-target-id="">--><!-- <em class="txt active">♥︎하는 작가</em> 	</a>-->
								<div id="jeonga-wprofile-button-add">♥︎하는 작가</div>
									<div id="jeonga-wprofile-writer-home">
									<a class="jeonga-wprofile-button" href="#">작가홈</a>
									</div>
								</div>
								<div id="jeonga-wprofile-message">
									<a href="#" class="jeonga-wprofile-button">메시지 보내기</a>
								</div>
							</div>
							</div>
						</div>
					
					<!-- 이미지 슬라이더 -->
					<div class="joenga-wprofile-imageslider">
					 	<div class="jeonga-imageSlides-buttons">
  						<a class="jeonga-imageSlides-prev" onclick="plusSlides(-1)">❮</a>
 						<a class="jeonga-imageSlides-next" onclick="plusSlides(1)">❯</a>
						</div>
						<!-- 슬라이드 기본 세트 -->
  						<div id="jeonga-imageSlides1">
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/Logo_gray.png'/>">
  						</div>
						<!-- 슬라이드 한 세트 -->
					 	<div class="jeonga-imageSlides" style="display:none">
   							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/test.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/text.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/earings.jpg'/>">
  						</div>		
  						<!-- 슬라이드 한 세트 -->	
  						<div class="jeonga-imageSlides" style="display:none" >
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/Logo_gray.png'/>">
  						</div>
  						<!-- 슬라이드 한 세트 -->	
  						<div class="jeonga-imageSlides" style="display:none" >
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/text.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/earings.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>">
  						</div>
  					</div> 
												
					
				</div>
				</li>
			</ul>

		</div>
	</div>
		<!-- 푸터  -->
		<%@ include file="include/uFooter.jsp"%>
	</div>
</body>
</html>