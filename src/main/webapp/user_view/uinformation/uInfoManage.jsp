<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 회원 정보 관리</title>
<style>
.content {
	width: 70%;
	margin-left: auto;
	margin-right: auto;
	padding-top: 36px;
	padding-bottom: 64px;
	display: flex;
}

body a:link, a:visited, a:hover, a:active, :active{
	text-decoration: none;
	border: none;
}



.dainSection {
	margin-left: 2%;
	width: 80%;
}

.dainUimTitle{
	margin-bottom: 24px;
}

.dainth{
	background: #eee;
    font-weight: normal;
	font-size: 12px;
    width: 120px;
    text-align: left;
    color: #666;
    padding: 12px 10px;
    border-top: 1px solid #d9d9d9;
	border-bottom: 1px solid #d9d9d9;
}
.daintd{
	padding: 12px 10px;
	border-top: 1px solid #d9d9d9;
	border-bottom: 1px solid #d9d9d9;
}
.dainTable{
	border-collapse: collapse;
	width: 100%;
	font-size: 12px;
}



.dainInput{
	background: #fff;
    font-size: 12px;
    line-height: 14px;
    border: 1px solid #acacac;
    height: 28px;
    max-width: 40%;
    border-radius: 3px;
    padding: 2px 8px;
}

input:checked {
	background-color: red;
	
}

</style>
</head>
<body>
<div>
	<!-- 헤더 -->
	<%@ include file="../include/uHeader.jsp"  %>
	
	<div class="content">
	<!-- 사이드메뉴 -->
	<%@ include file="../include/uside.jsp" %>
	<!-- 내용 여기다 넣으시오 -->
	<section class="dainSection">
	<div class="dainUimTitle">
		<h1 style="margin: 0px;">회원 정보 관리</h1>
	</div>
	<table class="dainTable">
	<tr>
		<td class="dainth">이름</td>
		<td class="daintd"><input type="text" class="dainInput" id="pageAddress" name="pageAddress" maxlength="20" value="이름가져옴" /></td>
	</tr>
	<tr>
		<td class="dainth">이메일</td>
		<td class="daintd">cooldain@daum.net<button>변경하기</button></td>
	</tr>
	<tr>
		<td class="dainth">전화</td>
		<td class="daintd">010-9170-9406<button>변경하기</button><div>주문, 배송시 등록된 번호로 SMS를 발송해 드립니다.</div></td>
	</tr>
	<tr>
		<td class="dainth">성별</td>
		<td class="daintd">
		<form>
		  <input type="radio" id="female" name="gender" value="female">
		  <label for="female">여성</label>
		  <input type="radio" id="male" name="gender" value="male">
		  <label for="male">남성</label>
		  </form>
		</td>
	</tr>
	<tr>
		<td class="dainth">생일</td>
		<td class="daintd"><input type="text" class="dainInput" id="pageAddress" name="pageAddress" maxlength="15" placeholder="2000-01-01" /></td>
	</tr>
	<tr>
		<td class="dainth">알림설정</td>
		<td class="daintd"></td>
	</tr>
	</table>	
	
	
	
	
	</section>
	
	
	</div>
	<!-- 푸터  -->
	<%@ include file="../include/uFooter.jsp" %>
</div>
</body>
</html>