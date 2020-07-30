<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디어스 | 즐겨찾는작품</title>
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
#wonBookButton{
	cursor: pointer;
	text-decoration: none;
}
#wonBookContent{
	cursor: pointer;
	
}
#wonBookContent:hover {
	box-shadow: 1px 1px gray;
}



</style>
</head>
<body>
<div>
	<!-- 헤더 -->
	<%@ include file="../../include/uHeader.jsp"  %>
	
	
	
	<div class="content">
	<!-- 사이드메뉴 -->
	<%@ include file="../../include/uside.jsp" %>
	<!-- 내용 여기다 넣으시오 -->
	
	<div style="margin-left:2%; width: 100%;">
		<div>
			<h2 style="margin: 1%;">즐겨찾는(★) 작품</h2>
		</div>
		<div style="display: flex; flex-direction: row; margin: 1%;">
			<div style="width: 33%; padding:2%; border: 1px solid #D8D8D8;text-align: center;">
				<a id="wonBookButton" href="uBookMarkWork.jsp"><span style="text-align: center;">작품</span></a>
			</div>
			<div style="width: 33%; padding:2%; border: 1px solid #D8D8D8;text-align: center; background-color: #D8D8D8; border-color: #B0B0B0;">
				<a id="wonBookButton" href="uBookMarkOnline.jsp"><span style="text-align: center; color: #B0B0B0;">온라인</span></a>
			</div>
			<div style="width: 33%; padding:2%; border: 1px solid #D8D8D8; text-align: center; background-color: #D8D8D8; border-color: #B0B0B0;">
				<a id="wonBookButton" href="uBookMarkOffline.jsp"><span style="text-align: center; color: #B0B0B0;">오프라인</span></a>
			</div>
		</div>
		<div style="maring-top:1%;">
				<div style="display: flex; flex-wrap: wrap;">
					<div id="wonBookContent" style="width: 23%; text-decoration: none; margin:1%;">
					<!-- 내용물 -->
						<a style="margin:1%;">
							<img style="width: 100%;" src="<c:url value='/resources/img/test.png'/>" >
							<span style="color: #ABABAB; font-size: 80%;">판매자 계정</span><br>
							<span>상품설명</span><br>
							<span style="color: red;">할인율</span>&nbsp;<span>가격</span><br>
							<span style="text-decoration: line-through; color: #ABABAB; font-size: 70%;">원가</span><br>
							<span>별점</span><br>
							<span style="background-color:#EAEAEA; border:1px solid #EAEAEA; border-radius: 5px; font-size: 60%; color: #ABABAB;">후기</span>
							&nbsp;<span style="color: #ABABAB; font-size: 60%;">후기내용</span>
						</a>
					</div>
					<div id="wonBookContent" style="width: 23%; text-decoration: none; margin:1%;">
					<!-- 내용물 -->
						<a style="margin:1%;">
							<img style="width: 100%;" src="<c:url value='/resources/img/test.png'/>" >
							<span style="color: #ABABAB; font-size: 80%;">판매자 계정</span><br>
							<span>상품설명</span><br>
							<span style="color: red;">할인율</span>&nbsp;<span>가격</span><br>
							<span style="text-decoration: line-through; color: #ABABAB; font-size: 70%;">원가</span><br>
							<span>별점</span><br>
							<span style="background-color:#EAEAEA; border:1px solid #EAEAEA; border-radius: 5px; font-size: 60%; color: #ABABAB;">후기</span>
							&nbsp;<span style="color: #ABABAB; font-size: 60%;">후기내용</span>
						</a>
					</div>
					<div id="wonBookContent" style="width: 23%; text-decoration: none; margin:1%;">
					<!-- 내용물 -->
						<a style="margin:1%;">
							<img style="width: 100%;" src="<c:url value='/resources/img/test.png'/>" >
							<span style="color: #ABABAB; font-size: 80%;">판매자 계정</span><br>
							<span>상품설명</span><br>
							<span style="color: red;">할인율</span>&nbsp;<span>가격</span><br>
							<span style="text-decoration: line-through; color: #ABABAB; font-size: 70%;">원가</span><br>
							<span>별점</span><br>
							<span style="background-color:#EAEAEA; border:1px solid #EAEAEA; border-radius: 5px; font-size: 60%; color: #ABABAB;">후기</span>
							&nbsp;<span style="color: #ABABAB; font-size: 60%;">후기내용</span>
						</a>
					</div>
					<div id="wonBookContent" style="width: 23%; text-decoration: none; margin:1%;">
					<!-- 내용물 -->
						<a style="margin:1%;">
							<img style="width: 100%;" src="<c:url value='/resources/img/test.png'/>" >
							<span style="color: #ABABAB; font-size: 80%;">판매자 계정</span><br>
							<span>상품설명</span><br>
							<span style="color: red;">할인율</span>&nbsp;<span>가격</span><br>
							<span style="text-decoration: line-through; color: #ABABAB; font-size: 70%;">원가</span><br>
							<span>별점</span><br>
							<span style="background-color:#EAEAEA; border:1px solid #EAEAEA; border-radius: 5px; font-size: 60%; color: #ABABAB;">후기</span>
							&nbsp;<span style="color: #ABABAB; font-size: 60%;">후기내용</span>
						</a>
					</div>
					<div id="wonBookContent" style="width: 23%; text-decoration: none; margin:1%;">
					<!-- 내용물 -->
						<a style="margin:1%;">
							<img style="width: 100%;" src="<c:url value='/resources/img/test.png'/>" >
							<span style="color: #ABABAB; font-size: 80%;">판매자 계정</span><br>
							<span>상품설명</span><br>
							<span style="color: red;">할인율</span>&nbsp;<span>가격</span><br>
							<span style="text-decoration: line-through; color: #ABABAB; font-size: 70%;">원가</span><br>
							<span>별점</span><br>
							<span style="background-color:#EAEAEA; border:1px solid #EAEAEA; border-radius: 5px; font-size: 60%; color: #ABABAB;">후기</span>
							&nbsp;<span style="color: #ABABAB; font-size: 60%;">후기내용</span>
						</a>
					</div>
						
			</div>
		</div>
	</div>
	
	
	
	
	</div>
	<!-- 푸터  -->
	<%@ include file="../../include/uFooter.jsp" %>
</div>
</body>
</html>