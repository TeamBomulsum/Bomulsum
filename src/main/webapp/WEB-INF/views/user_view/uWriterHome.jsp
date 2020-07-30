<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 작가홈</title>

<style type="text/css">

body a:link, a:visited, a:hover, a:active {
	text-decoration: none;
	border: none;
}

/*민우 css 시작*/
.minwoo_writer_main{
	width:1100px;
	margin:auto;
	padding-bottom:50px;
	display:flex;
}


.minwwo_writer_side{
	width:150px;
	height:610px;
	padding:32px 16px 16px;
	border:1px solid #d9d9d9;
	border-top:none;
}

.minwwo_writer_side hr{
	border:0px;
	background-color: #d9d9d9;
	height:3px;
}

.minwoo_writer_profile{
	 width:150px;
	 height:260px;
	 padding-bottom: 10px;
}

.minwoo_writer_profile_img{
	width:96px;
	height:96px;
	margin:0 auto;
}

.minwoo_writer_profile_img_bg{
	position:relative;
	width:100%;
	height:100%;
	margin:0 auto;
}

.minwoo_writer_profile_img_bg img{
	 position:absolute;
	 width:100%;
	 height:100%;
	 border-radius:50%;
	 border:1px solid black;
}

.minwoo_writer_profile_name{
	 width:100%;
	 height:40px;
	 margin-top:15px;
	 margin-bottom:10px;
	 text-align:center;
	 font-size:15px;
}

.minwoo_writer_profile_name a{
	text-decoration: none;
}

.minwoo_writer_profile_sayhello{
	 width:100%;
	 margin-left:auto;
	 margin-right:auto;
	 text-align: center;
	 font-size: 13px;
	 color:#848484;
}

.minwoo_writer_profile_buttons{
	display:flex;
	flex-direction:column;
	margin:5px;
}

.minwoo_writer_profile_buttons button{
	 background-color:white;
	 padding:5px;
	 margin:5px;
	 border:1px solid #d9d9d9;
}

.minwoo_writer_profile_activity{
	 margin-top:10px;
	 margin-bottom:10px;
	 font-weight:bold;
	 font-size:11px;
	 width:100%;
}

.minwoo_writer_profile_activity_table{
	font-size:11px;
	width:100%;
	color:#848484;
}

.minwoo_writer_profile_activity_table td:nth-child(2){
	 text-align:right;
	 text-decoration: none;
}

.minwwo_writer_saleplace{
	width:860px;
	margin-left:20px;
}

.minwwo_writer_saleplace_header{
	width:100%;
	display:flex;
	align-items:center;
}

.minwwo_writer_saleplace_header_form{
	font-size:12px;
	line-height:50px;
	width:100%;
}

.minwoo_writer_saleplace_header_form_input{
	width:160px;
	height:30px;
	border:1px solid #848484;
	border-radius:3px;
}

.minwwo_writer_saleplace_body{
	widht:100%;
	display:flex;
	flex-wrap:wrap;
}

/*우영이 CSS 영역 시작*/
.article{
   margin-top: 16px;
   margin-left: 8px;
   margin-right: 8px;
   width:196px;
   border: 1px solid #d9d9d9;
   border-radius:4px;
   background-color:#f8f9fb;
}

.article_img{
   display:flex;
   flex-direction: column;
   background-image: url('../resources/img/KMWcake.jpg');
   width:196px;
   height:196px;
   background-size:196px;
   border-radius:4px;
   background-repeat: no-repeat;
}

.article_img i{
    font-size: 20px;
    align-self: flex-end;
    margin: 5%;
    color: gray;
    -webkit-text-stroke-width: 1px;
    -webkit-text-stroke-color: white;
}

.article_detail{
   padding: 8px 10px;
   height:90px;
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

.article_grade{
   font-size:12px;
   display:flex;
   flex-direction:column;
   padding-left:10px;
   padding-top:10px;
   padding-bottom:5px;
/*    align-items: flex-start; */
}

.article_grade span{
   color:#999;
   margin-left:10px;
}

.article_grade_text{
	display:flex;
	flex-direction: row;
	align-items: center;
}
.article_grade_comments{
	color:#6E6E6E;
	padding-top:3px;
}

/*우영이 CSS 영역 종료*/

</style>

</head>
<body>
<div>
	<%@ include file="include/uHeader.jsp"  %>
	
	
	<!-- 작가 홈 메인 영역 시작 -->
	<div class="minwoo_writer_main">
		
		

		<!-- 작가 사이드 영역 시작 -->
		<div class="minwwo_writer_side">			
			
			<!-- 작가 프로필 영역 시작-->
			<div class="minwoo_writer_profile">				
				<!-- 프로필 사진 영역 시작-->
				<div class="minwoo_writer_profile_img">
					<div class="minwoo_writer_profile_img_bg">
						<img src="<c:url value='/resources/img/KMWnoReview.png'/>">
					</div>
				</div>
				<!-- 프로필 사진 영역 종료 -->
				<!-- 작가명 시작-->
				<div class="minwoo_writer_profile_name">
					<a href="#">
						<span>보노보노<br>bonoBono</span>
					</a>
				</div>
				<!-- 작가명 종료 -->
				<!-- 작가 인사말?영역 시작 -->
				<div class="minwoo_writer_profile_sayhello">
					<p>💙여름시즌 이벤트💙 <br>6월 15일~8월 31일 전제품 무료배송 2만원 이상 구매 시 나비집게핀 증정</p>
				</div>
				<!-- 작가 인사말?영역 종료 -->
			</div>
			<!-- 작가 프로필 영역 종료-->
			
			<hr>
			
			<!-- 버튼들 영역 시작-->
			<div class="minwoo_writer_profile_buttons">
				<button>♥ 작가 추가</button>
				<button>메시지</button>
				<button>후원하기</button>
				<button>공유하기</button>
			</div>
			<!-- 버튼들 영역 종료 -->

			<hr>
			
			<!-- 작가 활동 정보 영역 시작 -->
			<div  class="minwoo_writer_profile_activity">
				<p>활동정보</p>
				<table class="minwoo_writer_profile_activity_table">
					<tr><td>좋아하는 사람</td><td>35471명</td></tr>
					<tr><td>판매중인 작품</td><td>128개</td></tr>
					<tr><td>구매후기</td><td>9322개</td></tr>
					<tr><td>후원해주신 분들</td><td>8111명</td></tr>
				</table>
			</div>
			<!-- 작가 활동 정보 영역 종료 -->

		</div>
		<!-- 작가 사이드 영역 종료 -->
		
		
		
		<!-- 작품 판매 영역 시작 -->
		<div class="minwwo_writer_saleplace">
		
			<!-- 헤더 영역 시작 -->
			<div class="minwwo_writer_saleplace_header">
				<h2 style="width:600px">판매중인 작품</h2>
				<div style="float:right;">
					<form class="minwwo_writer_saleplace_header_form">
						<input type="text" name="" placeholder="작가님의 작품 검색" class="minwoo_writer_saleplace_header_form_input">
						<button type="submit" style="background-color:#2E64FE; border:1px solid #2E64FE;
	 							border-radius:3px; color:white; width:60px; height:32px;">검색</button>
					</form>
				</div>
			</div>
			<!-- 헤더 영역 종료 -->
		
			
			<!-- 작품들 영역 시작 -->
			<div class="minwwo_writer_saleplace_body">
			
			<c:forEach begin="1" end="100">
				<div class="article">
					<div class="article_img">
						<i class="fa fa-star"></i>
					</div>
					<div class="article_detail">
						<a>CONVEY.G</a>
						<span>[3일할인][인기]차량용 우드불 디퓨저</span>
						<span style="color:red;">
							[41%] 4,900원
							<span style="font-size:11px; color:#848484;"><del>10000원</del></span>
						</span>
					</div>
					<div class="article_grade">
						<div class="aritcle_grade_text">
							<i class="fa fa-star" style="color:gold"></i>
							<i class="fa fa-star" style="color:gold"></i>
							<i class="fa fa-star" style="color:gold"></i>
							<i class="fa fa-star" style="color:gold"></i>
							<i class="fa fa-star" style="color:gold"></i>
						</div>
						<div class="article_grade_comments">
							ㅠㅠ 좋아요...
						</div>
					</div>
				</div>
			</c:forEach>
		         
			</div>
			<!-- 작품들 영역 종료 -->
	
		
		</div>
		<!-- 작품 판매 영역 종료 -->
		
		
	</div>
	<!-- 작가 홈 메인 영역 종료 -->
	
	<%@ include file="include/uFooter.jsp" %>
</div>
</body>
</html>