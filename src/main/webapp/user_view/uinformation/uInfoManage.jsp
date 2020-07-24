<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- JQuery -->

<title>보물섬 | 회원 정보 관리</title>
<script type="text/javascript">
$(document).ready(function () {
	//이메일 변경하기 버튼 클릭시
	$('#emailChangeBtn').click(function(){
	    $('#emailChange').css("display", "block");
		/*$("#emailChangeBtn").html("변경취소");*/
	    $("#emailChangeBtn").css("display","none");
	    $("#emailChangeCancelBtn").css("display","inline");
	  });
	
	//이메일 변경 취소
	$('#emailChangeCancelBtn').click(function(){
		$('#emailChange').css("display", "none");
	    $("#emailChangeBtn").css("display","inline");
	    $("#emailChangeCancelBtn").css("display","none");
	  });
	
	//전화 변경하기 버튼 클릭시
	$('#phoneChangeBtn').click(function(){
		$('#phoneChange').css("display", "block");
	    $("#phoneChangeBtn").css("display","none");
	    $("#phoneChangeCancelBtn").css("display","inline");
	});
	
	//전화 변경 취소
	$('#phoneChangeCancelBtn').click(function(){
		$('#phoneChange').css("display", "none");
	    $("#phoneChangeBtn").css("display","inline");
	    $("#phoneChangeCancelBtn").css("display","none");
	  });
	
	//회원탈퇴 클릭시
	$(withdrawBtn).click(function(){
	var withdrawCheck = confirm("정말로 탈퇴하시겠습니까?");
	console.log(withdrawCheck);	//회원탈퇴여부 true/false
	});
	
});
</script>
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
    line-height: 13px;
    border: 1px solid #acacac;
    height: 26px;
    max-width: 40%;
    border-radius: 3px;
    padding: 2px 8px;
}

.dainInput:focus {
	outline:1px solid #65ddd1;
}

.dainBtn{
	background-color: white;
	border: 1px solid #d9d9d9;
	border-radius: 3px;
	padding: 4px 8px;
	margin-left: 5px;
	outline: none;
	font-size: 12px;
}
.dainBtn:hover{
	cursor: pointer;
}
.dainBtn2{
 background-color: #1f76bb; 
	 color: #fff;
	 padding: 8px 18px;
	 border: none;
}
.dainBtn2:hover{
	background-color: #1c6baa;
}

#emailChange {
	display: none;
}
#phoneChange{
	display: none;
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
		<!-- 이름 받아와야함 -->
		<td class="daintd"><input type="text" class="dainInput" id="uName" 
		name="uName" maxlength="20" value="이름" autocomplete="off"/></td>
	</tr>
	<tr>
		<td class="dainth">이메일</td>
		<!-- 이메일 받아와야함 -->
		<td class="daintd">cooldain@daum.net<button class="dainBtn" 
		id="emailChangeBtn">변경하기</button><button class="dainBtn" 
		id="emailChangeCancelBtn" style="display:none;">취소하기</button>
		<div id="emailChange">
			<p style="margin: 10px 0px 3px 0px">변경할 이메일 주소를 입력해주세요. (예.abcd@bomulsum.me)</p>
			<input type="text" class="dainInput" id="uEmail" 
		name="uEmail" maxlength="20" autocomplete="off"/>
		<button class="dainBtn">인증메일 발송</button>
		</div>
		
		</td>
	</tr>
	<tr>
		<td class="dainth">전화</td>
		<!-- 전화번호 받아와야함 -->
		<td class="daintd">010-9170-9406<button class="dainBtn" 
		id="phoneChangeBtn">변경하기</button><button class="dainBtn" 
		id="phoneChangeCancelBtn" style="display:none;">취소하기</button>
		<div style="color: #666666">주문, 배송시 등록된 번호로 SMS를 발송해 드립니다.</div>
		<div id="phoneChange">
			<p style="margin: 10px 0px 3px 0px">변경할 전화번호를 입력해주세요.</p>
			<input type="text" class="dainInput" id="uPhone" 
		name="uPhone" placeholder="010-1234-5678" maxlength="20" autocomplete="off"/>
		<button class="dainBtn">인증번호 요청</button>
		</div>
		</td>
	</tr>
	<tr>
		<td class="dainth">성별</td>
		<td class="daintd">
		<form action="#">
			<!-- 성별 받아와야함 -->
		  <input class="dainRadio" type="radio" id="female" name="gender" value="female" checked="checked">
		  <label for="female">여성</label>
		  <input  class="dainRadio" type="radio" id="male" name="gender" value="male">
		  <label for="male">남성</label>
		  </form>
		</td>
	</tr>
	<tr>
		<td class="dainth">생일</td>
		<td class="daintd">
		<input type="text" class="dainInput" id="uBirth" name="uBirth" autocomplete="off"
		maxlength="15" placeholder="2000-01-01" style="max-width:90px; "/></td>
	</tr>
	<tr>
		<td class="dainth">알림설정</td>
		<td class="daintd">
		<p style="margin:0 0 5px 0;">파격할인/이벤트/쿠폰 알림 등의 정보를 받아보시겠습니까?</p>
		  <form action="#">
		  <input type="checkbox" id="sms" name="sms" value="sms" checked="checked">
		  <label for="sms">SMS</label>
		  <input type="checkbox" id="email" name="email" value="emal" checked="checked">
		  <label for="email">이메일</label>
		  </form>
		</td>
	</tr>
	</table>	
	<div style="display: flex; justify-content: flex-end; margin-top: 15px;">
		<button class="dainBtn" id="withdrawBtn">회원탈퇴</button>
	</div>
	<div style="display: flex; justify-content: center;">
		<button class="dainBtn dainBtn2">회원 정보 수정하기</button>
	</div>
	
	
	</section>
	
	
	</div>
	<!-- 푸터  -->
	<%@ include file="../include/uFooter.jsp" %>
</div>
</body>
</html>