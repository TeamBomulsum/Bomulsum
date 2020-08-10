<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 공지사항</title>
<script src="https://kit.fontawesome.com/fea5b9b7d0.js" crossorigin="anonymous"></script>
<style type="text/css">

body a:link, a:visited, a:hover, a:active {
	text-decoration: none;
	border: none;
}


.minwoo_notice_body{
	width:1054px;
	margin-left:auto;
	margin-right:auto;
	border:1px #D8D8D8 solid;
}

.minwoo_notice_body_body{
	width:100%;
	border-top:1px #D8D8D8 solid;
}

.minwoo_notice_one_detail_header{
 	width:100%;
 	border-top:1px #D8D8D8 solid;
 	height:50px;
 	display: flex;
 	flex-direction: column;
 	justify-content: center;
}

.minwoo_notice_one_detail_content{
	width:100%;
	magin:10px;
}

::-webkit-scrollbar {
  width: 6px;
}
::-webkit-scrollbar-track {
  background-color: transparent;
}
::-webkit-scrollbar-thumb {
  border-radius: 3px;
  background-color: gray;
}
::-webkit-scrollbar-button {
  width: 0;
  height: 0;
}
</style>
</head>
<body>
<div>
	<%@ include file="../include/uHeader.jsp"  %>
	
	<!-- 게시판 영역 -->
	<div class="minwoo_notice_body">
		<!-- 헤더 시작-->
		<div style="width:100%;">
			<div style="width:100%; height: 55px;">
				<p style="font-weight:bold; font-size:22px; color:#848484; padding-left:20px;">공지사항</p>
			</div>
		</div>
		<!-- 헤더 종료 -->
		
		<!-- 글 들어올 바디 영역 시작 -->
		<div class=".minwoo_notice_body_body">
			<!-- 글 제목 시작-->               
				<div class="minwoo_notice_one_detail_header">
						<span style="color: red;">[오프라인 행사]</span>
						<span>❑</span>
						<span style="color: #dd5850;"><strong>[</strong><strong>🔥</strong><strong>~83% 할인🔥]&nbsp;</strong></span>
						<span>가심비가 콸콸콸↗ 시원한 7월 할인</span>
				</div>
			<!-- 글 제목 종료 -->
			<!-- 글 내용 시작 -->
				<div class="minwoo_notice_one_detail_content">
					<!-- 이 안에 글 내용 들어와야 합니다!!!!!! -->
				</div>
			<!-- 글 내용 종료 -->
		</div>
		<!-- 글 들어올 바디 영역 종료 -->
		
	</div>
	
	<%@ include file="../include/uFooter.jsp" %>
</div>
</body>
</html>