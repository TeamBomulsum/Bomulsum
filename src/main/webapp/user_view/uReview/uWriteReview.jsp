<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 구매후기 쓰기</title>
<style>

.content {
	width: 70%;
	margin-left: auto;
	margin-right: auto;
	padding-top: 36px;
	padding-bottom: 64px;
}
#minwoo_reviewBoder{
	border-top:3px solid black; 
	border-right:3px solid black; 
	border-left:3px solid black;  
}
#minwoo_reviewBorderSub{
	border-top:1px solid black;
	border-right:1px solid black;
	border-bottom:3px solid black;
}
.minwoo_reviewA{
	font-size:15px;
	width:100%;
	height:100%;
	display:flex;
	justify-content:center;
	align-items:center;
	text-decoration:none;
	font-weight:bold;
}
#minwoo_uWriteReviewList{
	height:80%;
	width:100%;
	overflow:auto;
	display:flex;
	flex-direction:column;
}
#noReviewContent{
	margin-left:auto;
	margin-right:auto;
	margin-top:5%;
	display:flex;
	flex-direction:column;
	align-items:center;
}
.minwoo_uWriteReview_ListContent{
	margin-top:20px;
	margin-left:auto;
	margin-right:auto;
	width:99%;
	border-width:1px;
	border-style:solid;
	border-color:#BDBDBD;
}
.minwoo_uWriteReview_ListContent_body{
	margin-top:10px;
	margin-left:10px;
	margin-right:10px;
}
.minwoo_uWriteReview_ListContent_button{
	margin-top:10px;
	margin-bottom:10px;
	width:95%;
	border-width:1px;
	border-style:solid;
	border-color:#BDBDBD;
	margin-left:auto;
	margin-right:auto;
}
.minwoo_uWriteReview_ListContent_buttonA{
	margin-top:10px;
	margin-bottom:10px;
	width:100%;
	height:100%;
	display:flex;
	justify-content:center;
	align-items:center;
	text-decoration:none;
	font-size:15px;
	color:#1C1C1C;
	border:none;
}
.minwoo_uWriteReview_ListContent_buttonA:active{
	margin-top:10px;
	margin-bottom:10px;
	width:100%;
	height:100%;
	display:flex;
	justify-content:center;
	align-items:center;
	text-decoration:none;
	font-size:15px;
	color:#1C1C1C;
	border:none;
}
.minwoo_uWriteReview_ListContent_body_head{
	padding-inline-start: 20px;
	display:flex;
	flex-direction:row;
}
.minwoo_uWriteReview_ListContent_body_head_photo{
	width:60px;
	height:60px;
}

.minwoo_contentOptionUl{
	 font-size:small;
	 color:#6E6E6E;
	 margin-top:10px;
}

#minwoo_reviewModal{
  display:none;
  position:fixed; 
  width:100%;
  height:100%;
  top:0;
  left:0; 
  background:rgba(0,0,0,0.3);
}
.minwoo_modal_con{
  display:none;
  position:fixed;
  top:50%; left:50%;
  transform: translate(-50%,-50%);
  max-width: 60%;
  min-height: 30%;
  background:#fff;
}
.minwoo_modal_con .title{
  font-size:20px; 
  padding: 20px; 
  background : gold;
}
.minwoo_modal_con .con{
  font-size:15px; line-height:1.3;
  padding: 30px;
}
.minwoo_modal_con .close{
  display:block;
  position:absolute;
  width:30px; height:30px;
  border-radius:50%; 
  border: 3px solid #000;
  text-align:center; line-height: 30px;
  text-decoration:none;
  color:#000; font-size:20px; font-weight: bold;
  right:10px; top:10px;
}

</style>
</head>
<body>
<div>
	<!-- 헤더 -->
	<%@ include file="../include/uHeader.jsp"  %>
	
	
	<!-- 콘텐트 div 시작 사이드 -->
	<div class="content" style="display:flex;">
	<!-- 사이드메뉴 -->
	<%@ include file="../include/uside.jsp" %>
	<!-- 내용 여기다 넣으시오 -->
	
	<!-- main div 시작 -->
	<div style="margin-left:2%; margin-right:2%; width:100%;">
		<div>
			<h2>나의 구매 후기</h2>
		</div>
		
		<!-- 상단 구매후기 설명 -->
		<p style="background-color:#E6E6E6; font-size:13px; width:100%;">
			<br>
			&emsp;&emsp;여러분들이 작성해주시는 솔직한 구매후기는 핸드메이드 작품 선택을 고민하는 분들에게 선택의 도움을 줄 수 있답니다.
			<br>
			&emsp;&emsp;구매하신 작품마다 1회의 구매후기 작성과 1회의 수정이 가능합니다.
			<br>
			&emsp;&emsp;단, 작성하신 구매후기를 삭제하면 다시 작성할 수 없으니 신중히 평가해 주세요.
			<br>
			<br>
			&emsp;&emsp;해당 작품과 무관한 내용이나 비방, 욕설 등 부적합한 내용의 구매후기는 서비스 이용 약관이나 관련 법률에 의해 제재를 받을 수 있습니다.
			<br><br/>
		</p>
		<!-- 상단 구매후기 설명 종료 -->
		
		<!-- 구매 후기 탭 메뉴 -->
		<nav style="height:5%; width:100%; display:flex; flex-direction:row;">
			<div id="minwoo_reviewBoder" style="width:50%; height:100%;">
				<a href="#" class="minwoo_reviewA">구매후기 쓰기</a>
			</div>
			<div id="minwoo_reviewBorderSub" style="width:50%; height:100%;">
				<a href="#" class="minwoo_reviewA" style="color:#BDBDBD;">내가 쓴 구매후기</a>
			</div>
		</nav>
		<!-- 구매 후기 탭 메뉴 종료 -->
		
		<!-- 구매후기 쓸 수 있는 작품 리스트 영역 / 구매한 내역이 없을 때 -->
		<!-- 구매리스트 많아지면 스크롤로 넘어가도록 오버플로우 오토 줬는데, 페이징 처리로 해야될지도.. -->
		<!-- 
		<div id="uWriteReviewList">
			<div id="noReviewContent">
				<img src="<c:url value='/resources/img/KMWnoReview.png'/>">
				<p style="font-weight:bold;color:#BDBDBD;">
				작성할 수 있는 구매후기가 없습니다.
				</p>
			</div>
		</div>
		-->
		<!-- 구매후기 쓸 수 있는 작품 리스트 영역 끝 / 구매한 내역이 없을 때 -->
		 
		<!-- 구매후기 쓸 수 있는 작품 리스트 영역 / 구매한 내역이 있을 때 -->
		<div id="minwoo_uWriteReviewList">
			<div class="minwoo_uWriteReview_ListContent">
			
				<div class="minwoo_uWriteReview_ListContent_body">
					<div class="minwoo_uWriteReview_ListContent_body_head">
						<div class="minwoo_uWriteReview_ListContent_body_head_photo">
							<img src="<c:url value='/resources/img/KMWcake.jpg'/>" style="width:100%; height:100%;">
						</div>
						<div style="margin-left:10px; margin-top:3px;">
							<div style="font-weight:bold;">
								<a href="#" style="text-decoration:none;">작품제목</a>
							</div>
							<div style="margin-top:3px;">
								<a href="#" style="text-decoration:none; font-weight:bold; font-size:smaller; color:#BDBDBD;">작가이름</a>
							</div>
						</div>
					</div>
					<ul class="minwoo_contentOptionUl">
						<li>옵션명1 : 내용</li>
						<li>옵션명2 : 내용</li>
						<li>옵션명3 : 내용</li>
						<li>옵션명4 : 내용</li>
					</ul>
				</div>
				<div class="minwoo_uWriteReview_ListContent_button">
					<a class="minwoo_uWriteReview_ListContent_buttonA" name="writeReviewButton" href="javascript:openModal('minwoo_reviewModal');">구매후기 작성하기</a>
				</div>
			</div>
			
			<div class="minwoo_uWriteReview_ListContent">
				<div class="minwoo_uWriteReview_ListContent_body">
					<div class="minwoo_uWriteReview_ListContent_body_head">
						<div class="minwoo_uWriteReview_ListContent_body_head_photo">
							<img src="<c:url value='/resources/img/KMWcake.jpg'/>" style="width:100%; height:100%;">
						</div>
						<div style="margin-left:10px; margin-top:3px;">
							<div style="font-weight:bold;">
								<a href="#" style="text-decoration:none;">작품제목</a>
							</div>
							<div style="margin-top:3px;">
								<a href="#" style="text-decoration:none; font-weight:bold; font-size:smaller; color:#BDBDBD;">작가이름</a>
							</div>
						</div>
					</div>
					<ul class="minwoo_contentOptionUl">
						<li>옵션명1 : 내용</li>
						<li>옵션명2 : 내용</li>
						<li>옵션명3 : 내용</li>
						<li>옵션명4 : 내용</li>
					</ul>
					<hr>
					<ul class="minwoo_contentOptionUl">
						<li>옵션명1 : 내용</li>
						<li>옵션명2 : 내용</li>
						<li>옵션명3 : 내용</li>
						<li>옵션명4 : 내용</li>
					</ul>
				</div>
				<div class="minwoo_uWriteReview_ListContent_button">
					<a class="minwoo_uWriteReview_ListContent_buttonA" name="writeReviewButton" href="javascript:openModal('minwoo_reviewModal');">구매후기 작성하기</a>
				</div>
					
			</div>
		</div>
		<!-- 구매후기 쓸 수 있는 작품 리스트 영역 끝 / 구매한 내역이 있을 때 -->
	
		<!-- 구매후기 쓰기 모달 내용 시작-->
		<div id="minwoo_reviewModal" name="minwoo_reviewModal">
			<div class="minwoo_modal_con">
		    	<a href="javascript:;" class="close">X</a>
		    	<p class="title">제목</p>
		    	<div class="con">
		      		콘영역안의 내용
				</div>
			</div>
		</div>		
		<!-- 구매후기 쓰기 모달 내용 끝 -->
	
	</div>
	<!-- end main div -->
	</div>
	<!-- end 콘텐트 div -->

	<!-- 푸터  -->
	<%@ include file="../include/uFooter.jsp" %>
</div>

		<!-- 모달 구동을 위한 스크립트 -->
		<script type="text/javascript">
		function openModal(minwoo_reviewModal){
			document.get
			$("#minwoo_reviewModal").fadeIn(300);
			$("."+minwoo_reviewModal).fadeIn(300);
		}
		
		$("#minwoo_reviewModal, .close").on('click',function(){
			$("#minwoo_reviewModal").fadeOut(300);
			$(".minwoo_modal_con").fadeOut(300);
		});
		</script>
		<!-- 모달 구동을 위한 스크립트 -->

</body>
</html>