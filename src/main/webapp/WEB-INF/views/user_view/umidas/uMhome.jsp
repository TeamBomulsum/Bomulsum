<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 금손클래스</title>

<style>

body a:link, a:visited, a:hover, a:active {
   text-decoration: none;
   color: white;
}


.uLikeWriterWrap {

}
/*이미지 슬라이드*/

.jeonga_slide_img{
	width:100%;
	height:480px;
	margin:0;
	padding:0;
}

.jeonga_uMhome_slidecontainer {
	
 	position: relative;
 	width:100%;
	height:480px;
 	
}

.jeonga_uMhome_mySlides{
	position:relative;
	z-index:80;
	width:100%;
	height:480px;
	padding:0;
	display: none
 
}

#jeonga_uMhome_mySlides1 {

	position:relative;
	z-index:20;
	width:100%;
	height:480px; 
}
.jeonga_uMhome_imageSlides_buttons{
	width:100%;
	height:480px;
  	z-index:99;
  	display:flex;
  	justify-content: space-between;
  	position: absolute;
}

/* Next & previous buttons */
.jeonga_uMhome_prev {
  color:white;
  cursor: pointer;
  width: auto;
  margin-top:220px;
  margin-left:200px;
  font-weight: bold;
  font-size: 35px;
}

.jeonga_uMhome_next{
    color:white;
 	cursor: pointer;
 	width: auto;
 	margin-top:220px;
 	margin-right:200px;
 	font-weight: bold;
  	font-size: 35px;
}

.jeonga_slide_numbertext {
  background-color:#6E6E6E;
  border-radius: 10px 10px 10px 10px;
  color: #f2f2f2;
  font-size: 11px;
  padding: 4px 13px;
  position: absolute;
  margin-top:430px;
  margin-left:1200px;
}

/*카테고리*/
.jeonga_uMhome_category {
    width: 1056px;
    margin: 0 auto;
    position: relative;
}
.jeonga_uMhome_nav_group {
    display: flex;
    justify-content: space-between;
    width: 100%;
    margin-top: 20px;
    margin-bottom:20px;
}
.jeonga_uMhome_nav_con{
	border:0.5px solid #D8D8D8;
	border-radius:5px 5px 5px 5px;
	text-align:center;
	padding:15px 30px;
	width:150px;
	margin:10px;
}
.jeonga_uMhome_nav_link {
    text-align: center;
    cursor: pointer;
}
.jeonga_uMhome_nav_con img {
    display: block;
    width:48px;
    margin-left:25px;
    margin-bottom:7px;
}
.jeonga_uMhome_nav_link span {
    font-size: 14px;
    color: #666;
}
/*콘텐츠*/
.jeonga_uMhome_content{

   width: 1056px;
   height:900px;
   margin: 0 auto;
   position: relative;
}
.jeonga_uMhome_content_title_txt{
	margin-bottom:0;
}
.jeonga_uMhome_content_title{
	display:flex;
	justify-content: space-between;
	align-items: flex-end;
	margin-bottom:20px;
	
}
.jeonga_uMhome_content_detail{
	width:250px;
	border:0.5px solid #D8D8D8;
}
.jeonga_uMhome_content_card{
	width:250px;
	border:0.5px solid #D8D8D8;
	border-radius:5px 5px 5px 5px;
	margin:6px;
}
.jeonga_uMhome_content_card_locagion{
	background-color:#6E6E6E;
 	border-radius: 3px 3px 3px 3px;
 	font-weight:bold;
 	color: #f2f2f2;
  	font-size: 12px;
 	padding: 7px 10px;
	position: absolute;
	z-index: 99;
	margin:1%;
}
.jeonga_uMhome_content_card_star{
	margin:1%;
	padding-left:200px;
	position:absolute;
	z-index:80;
}

.jeonga_uMhome_content_card_star i{
	font-size:30px;
	align-self:flex-end;
	margin:2%;
	color: gray;
	-webkit-text-stroke-width: 2px;
	-webkit-text-stroke-color: white;
}
.jeonga_uMhome_content_card_img_link{
	position:relative;
	z-index: -1;
	margin:0;
	padding:0;

}
.jeonga_uMhome_content_info{
	padding:8px 10px;
}

.jeonga_uMhome_content_info span{
	color: #dd5850;
	font-size:12px;
}
.jeonga_uMhome_card_rating{
	padding:8px 10px;
}
</style>

<script>
var slideIndex = 0;
showSlides(slideIndex);

function plusSlides(n) {
  var slides1 = document.getElementById("jeonga_uMhome_mySlides1");
  slides1.style.display="none";
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("jeonga_uMhome_mySlides");
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
		<%@ include file="../include/uHeader.jsp"%>
		<div class="uMhomeWrap">

		<!-- 이미지 슬라이드 -->
		<div class="jeonga_uMhome_slidecontainer">
		
		<div class="jeonga_uMhome_imageSlides_buttons">
			<a class="jeonga_uMhome_prev" onclick="plusSlides(-1)">❮</a>
			<a class="jeonga_uMhome_next" onclick="plusSlides(1)">❯</a>
		</div>
		
		<div id="jeonga_uMhome_mySlides1">
  		<div class="jeonga_slide_numbertext">1 / 3</div>
  		<img class="jeonga_slide_img" src="<c:url value='/resources/img/mainImg.jpg'/>" style="width:100%">
		</div>

		<div class="jeonga_uMhome_mySlides">
  		<div class="jeonga_slide_numbertext">2 / 3</div>
  		<img class="jeonga_slide_img" src="<c:url value='/resources/img/mainImg1.jpg'/>" style="width:100%">
		</div>

		<div class="jeonga_uMhome_mySlides">
  		<div class="jeonga_slide_numbertext">3 / 3</div>
 		<img class="jeonga_slide_img" src="<c:url value='/resources/img/mainImg2.jpg'/>" style="width:100%">
		</div>
		
		</div>

		<!-- 카테고리 -->
		<div class="jeonga_uMhome_category">
        	<nav class="jeonga_uMhome_nav_group">
        		<div class="jeonga_uMhome_nav_con">
                <a href="<c:url value='/midas/detail.do?category=공예'/>" class="jeonga_uMhome_nav_link">
                	<img src="https://image.idus.com/static/edu/cate_icon_craft.png" >
                	<span>공예</span>
            	</a>
            	</div>
            	<div class="jeonga_uMhome_nav_con">
                <a href="<c:url value='/midas/detail.do?category=요리'/>" class="jeonga_uMhome_nav_link">
                	<img src="https://image.idus.com/static/edu/cate_icon_cook.png">
                	<span>요리</span>
            	</a>
            	</div>
            	<div class="jeonga_uMhome_nav_con">
                <a href="<c:url value='/midas/detail.do?category=미술'/>" class="jeonga_uMhome_nav_link">
                	<img src="https://image.idus.com/static/edu/cate_icon_art.png" >
                	<span>미술</span>
            	</a>
            	</div>
            	<div class="jeonga_uMhome_nav_con">
                <a href="<c:url value='/midas/detail.do?category=플라워'/>" class="jeonga_uMhome_nav_link">
                	<img src="https://image.idus.com/static/edu/cate_icon_flower.png">
                	<span>플라워</span>
            	</a>
            	</div>
            	<div class="jeonga_uMhome_nav_con">
                <a href="<c:url value='/midas/detail.do?category=뷰티'/>" class="jeonga_uMhome_nav_link">
                	<img src="https://image.idus.com/static/edu/cate_icon_perfume.png">
                	<span>뷰티</span>
            	</a>
            	</div>
            	<div class="jeonga_uMhome_nav_con">
                <a href="<c:url value='/midas/detail.do?category=체험 및 기타'/>" class="jeonga_uMhome_nav_link">
                	<img src="https://image.idus.com/static/edu/cate_icon_hand.png"/>
                	<span>체험 및 기타</span>
           		 </a>
           		 </div>
             </nav>
   		 </div>

			<!-- 콘텐츠 -->
			
 		<div class="jeonga_uMhome_content">
        	<div class="jeonga_uMhome_content_title">
        		<div>
           		<h2 class="jeonga_uMhome_content_title_txt">주변 금손 클래스 <button type="button" style="border:0px; background-color:white; font-size:16px; color:#01A9DB"><i class="fa fa-compass" aria-hidden="true"></i>&nbsp;서울 마포구</button></h2>
            	</div>
            	<a href="#" class="jeonga_uMhome_content_more"><span style="color:#01A9DB; margin:0">더보기 &gt;</span></a>
       		</div>
       		
			
   			<div class="jeonga_uMhome_content_section" style="display:flex;flex-wrap:wrap;  width:1056px;">
   			<%-- <c:forEach begin="1" end="8">
   				<div class="jeonga_uMhome_content_card">
   					<div class="jeonga_uMhome_content_card_img">
   						<div class="jeonga_uMhome_content_card_locagion">서울 마포구</div>
   						<div class="jeonga_uMhome_content_card_star">
   						<i id="${i}bookmark" class="fa fa-star fs"></i>
   						</div>
   						<div class="jeonga_uMhome_content_card_img_link">
   						<!--  <a href="#" class="jeonga_uMhome_content_card_link">-->
   						<img src="<c:url value='/resources/img/earings.jpg'/>" style="width:250px; height:250px">
   						<!--  </a>-->
   						</div>	
   					</div>
   					<div class="jeonga_uMhome_content_detail">
                		<div class="jeonga_uMhome_content_info">
                    		<a href="#" class="jeonga_uMhome_card_label"><span>공예</span></a><br/>
                    		<a href="#" class="jeonga_uMhome_card_text">
                    		<b style="font-size:14px">[홍대] 보석 귀걸이 만들기</b></a>
                        </div>
                        <div class="jeonga_uMhome_card_rating">
   							<i class="fa fa-star" style="color:gold"></i>
							<i class="fa fa-star" style="color:gold"></i>
							<i class="fa fa-star" style="color:gold"></i>
							<i class="fa fa-star" style="color:gold"></i>
							<i class="fa fa-star" style="color:gold"></i>
							<span style="font-size:14px; color:gray">(1)</span>
            		    </div>
                   </div>
   				</div>
   			</c:forEach> --%>
   			</div>
 	
    </div>

			</div>
			<%@ include file="../include/uFooter.jsp"%>
		</div>
</body>
</html>