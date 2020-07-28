<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 자주 묻는 질문</title>
<style type="text/css">

body a:link, a:visited, a:hover, a:active {
	text-decoration: none;
	border: none;
}

.minwoo_notice_one a{
    display: inline-block;
    padding:10px;
    width: 100%;
    font-size: 15px;
    color: #333;
}

.minwoo_notice_one a:hover:not(.active) {
    color: #1f76bb;
}

.minwoo_notice_one{
 	width:100%;
 	border-top:1px #D8D8D8 solid;
 	height:50px;
 	display: flex;
 	flex-direction: column;
 	justify-content: center;
}

.minwoo_paging {
	margin-top: 20px;
	text-align: center;
	margin-bottom: 100px;
}

.minwoo_paging a {
	display: inline-block;
	margin: 0 3px;
	text-decoration: none;
	padding: 5px 10px;
	border: 1px solid #ccc;
	color: #999999;
	background-color: #fff;
}

.minwoo_paging a:hover:not(.active) {
    color: #1f76bb;
    border: 1px solid #ccc;
}s

.minwoo_arrow prev {
	border: 0px;
}

.minwoo_arrow next {
	border: 0px;
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
	<div style="width:60%; margin-left:auto; margin-right:auto; border:1px #D8D8D8 solid;">
		<!-- 헤더 시작-->
		<div style="width:100%;">
			<div style="width:100%; height: 55px;">
				<p style="font-weight:bold; font-size:22px; color:#848484; padding-left:20px;">자주 묻는 질문</p>
			</div>
		</div>
		<!-- 헤더 종료 -->
		
		<!-- 글 들어올 바디 영역 시작 -->
		<div style="width:100%; border-top:1px #D8D8D8 solid;">
			<!-- 내용물 -->               
			<c:forEach begin="1" end="5">
				<div class="minwoo_notice_one">
					<a href="#">
						<span>❑ 선물하기 이용 가이드(FAQ)</span>
					</a>
				</div>
			</c:forEach>
			<c:forEach begin="1" end="5">
				<div class="minwoo_notice_one">
					<a href="#">
						<span>❑</span>  
						<span style="color:red">[작가 입점 안내]</span>
						<span>똥손도 금손이 되게 만들어주는 보물찾기</span>
					</a>
				</div>
			</c:forEach>
			<!-- 내용물 -->
		</div>
		<!-- 글 들어올 바디 영역 종료 -->
		
	</div>
	<div class="minwoo_paging">
	<!-- <div style="margin-top:15px; margin-bottom:15px; display: flex; justify-content: center; align-items: center; padding:5px;"> -->
			<a style='cursor:pointer' class='first_page'>처음</a>
			<a style='cursor:pointer' class='back_page'>이전</a>
			<a style='cursor:pointer; color:#ff8400'>1</a>
			<a style='cursor:pointer' class='go_page'>2</a>
			<a style='cursor:pointer' class='next_page'>다음</a>
		    <a style='cursor:pointer' class='last_page'>끝</a>
	</div>
	
	<%@ include file="../include/uFooter.jsp" %>
</div>
</body>
</html>