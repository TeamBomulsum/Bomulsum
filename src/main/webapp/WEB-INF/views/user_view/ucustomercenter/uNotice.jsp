<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 공지사항</title>
<script src="https://kit.fontawesome.com/fea5b9b7d0.js" crossorigin="anonymous"></script>
<script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
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
	margin-top: 1px;
}

.minwoo_notice_body_body{
	width:100%;
}
.minwoo_notice_one a{
    display: flex;
    align-items: center;
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
 	flex-direction: row;
 	justify-content: space-between;
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
}

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

.pagination{
	cursor:pointer;
}

.curPage{
	color:#ff8400;
}
</style>
</head>
<body>

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
		<div class="minwoo_notice_body_body">
			<!-- 내용물 -->          
			<c:forEach var="list" items="${boardVo}">
				<div class="minwoo_notice_one">
					<a href="/user/board/notice.do?seq=${list.noticeSeq}">
						<c:if test="${list.noticeCategory eq '이벤트'}">
							<span style="color: #1f76bb;">[이벤트]</span>
						</c:if>
						<c:if test="${list.noticeCategory eq '회원용-공지사항'}">
							<span style="color: red;">[공지사항]</span>
						</c:if>
						<span>❑</span>
						<span>${list.noticeTitle}</span>
					</a>
					<a style="display:flex;justify-content: flex-end;align-items: center;">${list.noticeDate }</a>
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
		<a id="1" class="pagination curPage">1</a>
		<a style='cursor:pointer' class='next_page'>다음</a>
	    <a style='cursor:pointer' class='last_page'>끝</a>
	</div>
	
	<%@ include file="../include/uFooter.jsp" %>

</body>
<script>
	var curPage = 1;
	var nums;
	$(function(){
		var list = new Array();
		
		<c:forEach items="${boardVo}" var="i">
			var json = new Object();
			json.noticeSeq = "${i.noticeSeq}";
			json.noticeCategory = "${i.noticeCategory}";
			json.noticeTitle = "${i.noticeTitle}";
			json.noticeContent = `${i.noticeContent}`;
			json.noticeDate = "${i.noticeDate}";
			list.push(json);
		</c:forEach>
		
		
		if(list.length / 10 != 0){
			nums = Math.floor(list.length / 10) + 1;
		}else{
			nums = Math.floor(list.length / 10);
		}
		for(var i = 2; i <= nums; i++){
			var aTag = $("<a>");
			aTag.addClass('pagination');
			aTag.attr('id', i);
			aTag.html(i);
			aTag.insertAfter('#1');
		}
		
		
		
	});
</script>
</html>