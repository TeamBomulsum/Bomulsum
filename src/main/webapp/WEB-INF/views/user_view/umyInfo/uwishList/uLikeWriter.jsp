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
	list-style: none;
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
.jeonga-wprofile-title{
	text-decoration: none;
	color:black;
}
.jeonga-wprofile-button{
	text-decoration: none;
	color:black;
}
.jeonga-wprofile-buttons-top{
	display:flex;
}

.jeonga-wprofile-button-add{
	cursor:pointer;
	background-color:#DF3A01;
	border:1px solid #DF3A01;
	color:white;
	padding:7px;
	text-align: center;
  	text-decoration: none;
  	display: inline-block;
  	font-size: 12px;
	width:99px;
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
	width:99px;
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
	margin-top:2%;
	margin-bottom:2%;
 	position: relative;
 	width:505px;
 	height:168.25px;
 	overflow:hidden;
 	
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
.jeonga-imageSlides1 {
	display:flex;
	justify-content: space-between;
	position:relative;
	z-index:80;
	width:505px;
 	height:168.25px;
	padding:0;
 
}
.jeonga-imageSlides2 {
	display:flex;
	justify-content: space-between;
	position:relative;
	z-index:80;
	width:505px;
	height:168.25px;
	padding:0;
 
}
.jeonga-imageSlides3 {
	display:flex;
	justify-content: space-between;
	position:relative;
	z-index:80;
	width:505px;
	height:168.25px;
	padding:0;
 
}
/* 
#jeonga-imageSlides1 {
	display:flex;
	justify-content: space-between;
	position:relative;
	z-index:20;
	width:505px;
	height:168.25px;

 
} */


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

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link href="<c:url value='/resources/css/jqery.bxslider.min.css'/>" rel="stylesheet" type="text/css"/>
<script src="<c:url value='/resources/js/jquery.bxslider.min.js'/>"></script>



<script>
//좋아하는 작가 취소
 $(document).ready(function(){
	$(".jeonga-wprofile-button-add").click(function(){ 
		var $data = $(this).parent().next().children('#jeonga-wprofile-code').text();
		 console.log($data);
		 var param = $data;
		 console.log(param);
	
	 
		 $.ajax({
			url : "/bomulsum/user/wishlist/unLikeWriter.do",
			data : {"writer_code_seq" : param},
			success : function() {
				alert('좋아하는 작가를 취소합니다.');
				location.reload(true);
			},
			error : function(err) {
				console.log(err);
			}
			})

	});
	  $('.bxslider').bxSlider();  // ul에 있는 class명을 기준으로 선언을 합니다. 즉, 이미지구성요소들을 감싸고있는 객체에 선언해 줍니다. 

 });
	
//이미지 슬라이드

	/* var slideIndex = 0;
	showSlides(slideIndex);

	function plusSlides(n) {
		var slides1 = document.getElementById("jeonga-imageSlides1");
		slides1.style.display = "none";
		showSlides(slideIndex += n);

	}

	function currentSlide(n) {
		showSlides(slideIndex = n);
	}

	function showSlides(n) {
		var i;
		var slides = document.getElementsByClassName("jeonga-imageSlides");
		if (n > slides.length) {
			slideIndex = 1
		}
		if (n < 1) {
			slideIndex = slides.length
		}
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}

		  slides[slideIndex-1].style.display = "block"; 

	} */
	/*
	$(function(){
 		var slideIndex = 0;
		var showSlides = new Array();
				var $data1 = $(".jeonga-imageSlides1").children();
		var $data2 = $(".jeonga-imageSlides2").children();
		var $data3 = $(".jeonga-imageSlides3").children();
		console.log($data1);
		console.log($data2);
		console.log($data3);
		var data1 = $data1;
		var data2 = $data2;
		var data3 = $data3;
		showSlides.put(data1);
		showSlides.put(data2);
		showSlides.put(data3); */
		
		
 		//$(".jeonga-imageSlides-prev").click(function(){ 
			
			//var slides1 = $(this).parent().next().children();
			// console.log(slides);
			//slides1.hide();
			//var slides2 = $(this).parent().next().next().children();
			//var slides3 = $(this).parent().next().next().next().children();
			//slides2.show();
			//console.log(slides1);
			//console.log(slides2);
			//console.log(slides3);
			/* slides2.css({"display": "block"}); */
			//slides2.show();
			/*  showSlides.put(slides1);
			 showSlides.put(slides2);
			 showSlides.put(slides3);
			 console.log(showSlides); */
			 
		/* 	 for(int i=0; i<showSlides.length; i++){
				 
			 } */
		//}); 
	//});
</script>
</head>
<body>
	<div>
	<!-- 헤더 -->
	<%@ include file="../../include/uHeader.jsp"%>

	<div class="content">
		<!-- 사이드메뉴 -->
		<%@ include file="../../include/uside.jsp"%>
		<!-- 내용 여기다 넣으시오 -->
		<div class="uLikeWriterWrap">
			<div class="jeonga-uLikeWriter-title">
			<h2 id="jeonga-uLikeWriter-text">좋아하는(♥) 작가</h2>
			</div>
	
			<!-- 좋아하는 작가 목록 -->
			<ul class="jeonga-artist-list">
			<c:forEach var="artList" items='${artListInfo}'>
				<li class="jeonga-artist-list-item">
					<!-- 작가 프로필  -->
					<div class="jeonga-wprofile  ">
						<!-- 작가 프로필 사진 -->
						<div class="jeonga-wprofile-split">
							<div class="jeonga-wprofile-image">
							<a href="${artList.writer_url}" target="#" class="jeonga-wrpofile-image-link"> 
								<img style="width:80px; height:80px" id="jeonga-wprofileImage" src="<c:url value='/upload/${artList.writer_profile_img}'/>"/>
							 </a></div>
						</div>
						<div class="jeonga-wprofile-split">
						<!-- 작가 프로필 내용 -->
							<div class="jeonga-wprofile-content">
							<a href="${artList.writer_url}" class="jeonga-wprofile-title" target="">${artList.writer_brand_name}</a>
							<p class="jeonga-wprofile-text">${artList.writer_intro}</p>
							<div class="jeonga-wprofile-buttons">
								<div class="jeonga-wprofile-buttons-top">
									<div class="jeonga-wprofile-button-add">♥︎하는 작가</div>

								<!-- 	</div> -->
									<div id="jeonga-wprofile-writer-home">
									<a class="jeonga-wprofile-button" href="${artList.writer_url}">작가홈</a>
									</div>
								</div>
								<div id="jeonga-wprofile-message">
									<a href="/bomulsum/user/message.do?writer=${artList.writer_code_seq}" class="jeonga-wprofile-button">메시지 보내기</a>
									<div id="jeonga-wprofile-code" style="display:none">${artList.writer_code_seq}</div>
									<!-- 메시지 대상 보내기 -->
								</div>
							</div>
							</div>
						</div>

					<!-- 이미지 슬라이더 -->
					<!-- <div class="joenga-wprofile-imageslider"> -->
					 <!-- 	<div class="jeonga-imageSlides-buttons">
  						<a class="jeonga-imageSlides-prev" onclick="plusSlides(-1)">❮</a>
 						<a class="jeonga-imageSlides-next" onclick="plusSlides(1)">❯</a>
						</div> -->
						<!-- 슬라이드 기본 세트 -->
  						<%-- <div id="jeonga-imageSlides1">
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/Logo_gray.png'/>">
  						</div> --%>
  						<ul class="bxslider">
						<li>
   							<img src="<c:url value='/resources/img/test.png'/>">
  						</li>		
  						<!-- 슬라이드 한 세트 -->	
  						<li>
							<img src="<c:url value='/resources/img/MainLogo.png'/>">
  						</li>
  						<!-- 슬라이드 한 세트 -->	
  						<li>
							<img src="<c:url value='/resources/img/text.png'/>">
  						</li>
						</ul>
						<%-- <!-- 슬라이드 한 세트 -->
					 	<div class="jeonga-imageSlides">
   							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/test.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/text.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/earings.jpg'/>">
  						</div>		
  						<!-- 슬라이드 한 세트 -->	
  						<div class="jeonga-imageSlides" style="display:none" >
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/MainLogo.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/Logo_gray.png'/>">
  						</div>
  						<!-- 슬라이드 한 세트 -->	
  						<div class="jeonga-imageSlides" style="display:none" >
							<img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/text.png'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/earings.jpg'/>"><img class="jeonga-imageSlides-img" src="<c:url value='/resources/img/cup.jpg'/>">
  						</div> --%>
  					<!-- </div>  -->
					
				</div>
				</li>
				</c:forEach>
			</ul>

		</div>
	</div>
		<!-- 푸터  -->
		<%@ include file="../../include/uFooter.jsp"%>
	</div>
</body>
</html>