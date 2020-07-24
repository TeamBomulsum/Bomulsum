<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 내가 쓴 구매후기</title>
<script src="<c:url value='/resources/vendor/jquery/jquery.min.js' />"></script>
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
#minwoo_reviewBorder{
	border-top:3px solid black; 
	border-right:3px solid black; 
	border-left:3px solid black;  
}
#minwoo_reviewBorderSub{
	border-top:1px solid black;
	border-left:1px solid black;
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
#minwoo_uWriteReviewMeList{
	height:80%;
	width:100%;
	overflow:auto;
	display:flex;
	flex-wrap:wrap;
}

#noReviewContent{
	margin-left:auto;
	margin-right:auto;
	margin-top:5%;
	display:flex;
	flex-direction:column;
	align-items:center;
}
.minwoo_uWriteReviewMe_ListContent{
	margin-top:20px;
	margin-left:10px;
	width:48%;
	height:200px;
	border-width:1px;
	border-style:solid;
	border-color:#BDBDBD;
}
.minwoo_uWriteReviewMe_ListContent_body{
	margin-top:10px;
	margin-left:10px;
	margin-right:10px;
}

.minwoo_uWriteReviewMe_ListContent_body_head{
	display:flex;
	flex-direction:row;
	align-items:center;
	width:100%;
}
.minwoo_uWriteReviewMe_ListContent_body_head_photo{
	width:60px;
	height:60px;
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
	<div style="margin-left:2%; width:80%;">
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
			<div id="minwoo_reviewBorderSub" style="width:50%; height:100%;">
				<a href="#" class="minwoo_reviewA" style="color:#BDBDBD;">구매후기 쓰기</a>
			</div>
			<div id="minwoo_reviewBorder" style="width:50%; height:100%;">
				<a href="#" class="minwoo_reviewA">내가 쓴 구매후기</a>
			</div>
		</nav>
		<!-- 구매 후기 탭 메뉴 종료 -->
		
		
		
		
		
		<!-- 구매후기 쓸 수 있는 작품 리스트 영역 / 구매한 내역이 없을 때 -->
		<!-- 구매리스트 많아지면 스크롤로 넘어가도록 오버플로우 오토 줬는데, 페이징 처리로 해야될지도.. -->
		<!-- 
		<div id="uWriteReviewList">
			<div id="noReviewContent">
				<img src="<c:url value='/resources/img/KMWnoReviewMe.png'/>" style="width:240px;; height:240px;">
				<p style="font-weight:bold;color:#BDBDBD; text-align:center;">
				구매후기를 남겨주시면 작가님이<br>함박 웃음을 지으며 기뻐하신답니다!
				</p>
			</div>
		</div>
		 -->
		<!-- 구매후기 쓸 수 있는 작품 리스트 영역 끝 / 구매한 내역이 없을 때 -->
	
	
	
	
		<!-- DB에서 값 불러오기 -->
		<!-- 구매후기 리스트 영역 시작 -->
		
			<div id="minwoo_uWriteReviewMeList">
			
				<c:forEach var="i" begin="1" end="10">
				<div class="minwoo_uWriteReviewMe_ListContent">
					<div class="minwoo_uWriteReviewMe_ListContent_body">
						<div class="minwoo_uWriteReviewMe_ListContent_body_head">
							<div class="minwoo_uWriteReviewMe_ListContent_body_head_photo">
								<img src="<c:url value='/resources/img/KMWcake.jpg'/>" style="width:100%; height:100%;">
							</div>
							<div style=" margin-left:10px; margin-top:3px; width:65%; font-weight:bold;">
								<a href="#" style="text-decoration:none;">작품제목<c:out value="${i}"/></a>
							</div>
							<div style="font-size:15px; color:blue; width:20%; text-align:center; font-weight:bold;">
								★★★★★
							</div>
						</div>
						<hr>
						<div style="height:50px; display:flex; flex-direction:row; align-items:center;">
							<div style="height:30px; width:30px; border:1px solid black; border-radius:100%;">
								<img src="<c:url value='/resources/img/Logo_blue.png'/>" style="width:100%;height:100%;">
							</div>
							
							<div style="height:50px; width:80%; margin-left:10px; font-size:15px; font-weight:bold; display:flex; flex-direction:column;justify-content:center;">
								<div>귀염둥이</div>
								<div style="color:#BDBDBD;">2020년 07월 21일</div>
							</div>	
						</div>
						<!-- 남긴 댓글 부분 -->
						<div style="margin-top:5px;">
							부모님이 좋아하세요!!
						</div>
						<!-- 남긴 댓글 부분 -->
					</div>
				</div>
				</c:forEach>
				
			</div>
			
			<!-- 구매후기 리스트 영역 끝 -->
	
	
	
	</div>
	<!-- end main div -->
	</div>
	<!-- end 콘텐트 div -->

	<!-- 푸터  -->
	<%@ include file="../include/uFooter.jsp" %>
</div>

		<!--스크립트 -->
		<script>

		</script>
		<!-- 스크립트 -->

</body>
</html>