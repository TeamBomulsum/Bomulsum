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
.jeonga_artist_list{
	padding:0px;
	list-style: none;
}
.jeonga_artist_list_item{
	border-bottom:1px solid #D8D8D8;
}


.jeonga_wprofile_image{
	width:80px;
	height:80px;
	border-radius:70%;
	overflow:hidden;
	position:relative;
}

.jeonga_wprofileImage{
	width:100%;
	height:100%;
	object-fit:cover;
}

.jeonga_wprofile{
	display:flex;
}
.jeonga_wprofile_split{
	padding:2%;
}

.jeonga_wprofile_content{
	width:200px;
}
.jeonga_wprofile_text{
	padding:2%;
	font-size:14px;
}
.jeonga_wprofile_title{
	text-decoration: none;
	color:black;
}
.jeonga_wprofile_button{
	text-decoration: none;
	color:black;
}
.jeonga_wprofile_buttons_top{
	display:flex;
}

.jeonga_wprofile_button_add{
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

#jeonga_wprofile_writer_home{
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

#jeonga_wprofile_message{
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
.jeonga_imageSlides_img{
	width:168.25px;
	height:168.25px;
	margin:0;
	padding:0;
}

.joenga_wprofile_imageslider {
	margin-top:2%;
	margin-bottom:2%;
 	position: relative;
 	width:505px;
 	height:168.25px;
 	overflow:hidden;
 	
}
.jeonga_imageSlides_buttons{
	width:505px;
 	height:168.25px;
	/*visibility:hidden;*/
  	z-index:99;
  	display:flex;
  	justify-content: space-between;
  	position: absolute;
  	
}
/* Hide the images by default*/ 
/*
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
*/
#jeonga_imageSlides1 {
	display:flex;
	justify-content: space-between;
	position:relative;
	z-index:20;
	width:505px;
	height:168.25px;

 
} 


/* Next & previous buttons */
.jeonga_imageSlides_prev {
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
.jeonga_imageSlides_next{
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
.jeonga_imageSlides_prev:hover, .jeonga_imageSlides_next:hover{
  background-color: rgba(0, 0, 0, 0.8);
  color:white;
 opacity: 100;
}


</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
//좋아하는 작가 취소
 $(document).ready(function(){
	$(".jeonga_wprofile_button_add").click(function(){ 
		var $data = $(this).parent().next().children('#jeonga_wprofile_code').text();
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
	slide();

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
			<div class="jeonga_uLikeWriter_title">
			<h2 id="jeonga_uLikeWriter_text">좋아하는(♥) 작가</h2>
			</div>
	
			<!-- 좋아하는 작가 목록 -->
			<ul class="jeonga_artist_list">
			<c:forEach var="artList" items='${artListInfo}'>
				<li class="jeonga_artist_list_item">
					<!-- 작가 프로필  -->
					<div class="jeonga_wprofile">
						<!-- 작가 프로필 사진 -->
						<div class="jeonga_wprofile_split">
							<div class="jeonga_wprofile_image">
							<a href="${artList.writer_url}" target="#" class="jeonga_wrpofile_image_link"> 
								<img style="width:80px; height:80px" id="jeonga_wprofileImage" src="<c:url value='/upload/${artList.writer_profile_img}'/>"/>
							 </a></div>
						</div>
						<div class="jeonga_wprofile_split">
						<!-- 작가 프로필 내용 -->
							<div class="jeonga_wprofile_content">
							<a href="${artList.writer_url}" class="jeonga_wprofile_title" target="">${artList.writer_brand_name}</a>
							<p class="jeonga_wprofile_text">${artList.writer_intro}</p>
							<div class="jeonga_wprofile_buttons">
								<div class="jeonga_wprofile_buttons_top">
									<div class="jeonga_wprofile_button_add">♥︎하는 작가</div>

								<!-- 	</div> -->
									<div id="jeonga_wprofile_writer_home">
									<a class="jeonga_wprofile_button" href="${artList.writer_url}">작가홈</a>
									</div>
								</div>
								<div id="jeonga_wprofile_message">
									<a href="/bomulsum/user/message.do?writer=${artList.writer_code_seq}" class="jeonga_wprofile_button">메시지 보내기</a>
									<div id="jeonga_wprofile_code" style="display:none">${artList.writer_code_seq}</div>
									<!-- 메시지 대상 보내기 -->
								</div>
							</div>
							</div>
						</div>

					<!-- 이미지 슬라이더 -->
					 <div class="joenga_wprofile_imageslider"> 
					  	<div class="jeonga_imageSlides_buttons">
  						<a class="jeonga_imageSlides_prev" onclick="plusSlides(-1)">❮</a>
 						<a class="jeonga_imageSlides_next" onclick="plusSlides(1)">❯</a>
						</div> 
						<!-- 슬라이드 기본 세트 -->
  						<div id="jeonga_imageSlides1">
							<img class="jeonga_imageSlides_img" src="<c:url value='/resources/img/MainLogo.png'/>"><img class="jeonga_imageSlides_img" src="<c:url value='/resources/img/cup.jpg'/>"><img class="jeonga_imageSlides_img" src="<c:url value='/resources/img/Logo_gray.png'/>">
  						</div>
  			<%-- 			<div class="slide">
  						<ul class="panel">
						<li>
   							<img src="<c:url value='/resources/img/test.png'/>" style="width:100px;height:100px">
  						</li>		
  						<!-- 슬라이드 한 세트 -->	
  						<li>
							<img src="<c:url value='/resources/img/MainLogo.png'/>" style="width:100px;height:100px">
  						</li>
  						<!-- 슬라이드 한 세트 -->	
  						<li>
							<img src="<c:url value='/resources/img/text.png'/>" style="width:100px;height:100px">
  						</li>
						</ul>
						</div> --%>
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