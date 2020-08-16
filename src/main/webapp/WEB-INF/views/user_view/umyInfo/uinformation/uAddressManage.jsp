<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 배송지 관리</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script type="text/javascript">



$(document).ready(function () {
	// 취소시 초기값으로 돌리는거.
	// 나중에 DB에서 받아와서 초기값저장
	// $defaultName = $('원래 Name').val();
	// $defaultTel = $('#addrTel1').val();
	// $defaultAddr11 = $('#addrName1').val();
	// $defaultAddr12 = $('#addrName1').val();
	// $defaultAddr13 = $('#addrName1').val();
	
	// 주소지1
	$('#editBtn').click(function(){
	    $('#adrBtn').css("display", "inline-block");
	    $("#adrBtn").attr("class","dainBtn");
		$('#saveBtn').css("display", "inline-block");
		$('.dai1').css("border" ,"1px solid #acacac");
		$('.di1').css("border" ,"1px solid #acacac");
		$(".di1").removeAttr("readonly");
		//$('#editBtn').html("취소");
		$('#editBtn').css("display", "none");
		$('#editCancelBtn').css("display", "inline");
	  });
	
	//주소지1 변경 취소
	$('#editCancelBtn').click(function(){
		$('#editCancelBtn').css("display", "none");
		$('#adrBtn').css("display", "none");
	    $("#editBtn").css("display","inline");
	    $('#saveBtn').css("display", "none");
	    $("#emailChangeCancelBtn").css("display","none");
		$('.dai1').css("border" ,"none");
		$('.di1').css("border" ,"none");
		$(".di1").attr("readonly","readonly");
		
		//초기값으로... 
		// $(input 아이디).val(들어갈거)
		$('#addrName1').val($defaultName);
	  });
	
	
	// 주소지2
	$('#editBtn2').click(function(){
	    $('#adrBtn2').css("display", "inline-block");
	    $("#adrBtn2").attr("class","dainBtn");
		$('#saveBtn2').css("display", "inline-block");
		$('.dai2').css("border" ,"1px solid #acacac");
		$('.di2').css("border" ,"1px solid #acacac");
		$(".di2").removeAttr("readonly");
		//$('#editBtn2').html("취소");
		$('#editBtn2').css("display", "none");
		$('#editCancelBtn2').css("display", "inline");
	  });
	
	//주소지2 변경 취소
	$('#editCancelBtn2').click(function(){
		$('#editCancelBtn2').css("display", "none");
		$('#adrBtn2').css("display", "none");
	    $("#editBtn2").css("display","inline");
	    $('#saveBtn2').css("display", "none");
	    $("#emailChangeCancelBtn2").css("display","none");
		$('.dai2').css("border" ,"none");
		$('.di2').css("border" ,"none");
		$(".di2").attr("readonly","readonly");
	  });
	
	// 주소지3
	$('#editBtn3').click(function(){
	    $('#adrBtn3').css("display", "inline-block");
	    $("#adrBtn3").attr("class","dainBtn");
		$('#saveBtn3').css("display", "inline-block");
		$('.dai3').css("border" ,"1px solid #acacac");
		$('.di3').css("border" ,"1px solid #acacac");
		$(".di3").removeAttr("readonly");
		//$('#editBtn3').html("취소");
		$('#editBtn3').css("display", "none");
		$('#editCancelBtn3').css("display", "inline");
	  });
	
	//주소지3 변경 취소
	$('#editCancelBtn3').click(function(){
		$('#editCancelBtn3').css("display", "none");
		$('#adrBtn3').css("display", "none");
	    $("#editBtn3").css("display","inline");
	    $('#saveBtn3').css("display", "none");
	    $("#emailChangeCancelBtn3").css("display","none");
		$('.dai3').css("border" ,"none");
		$('.di3').css("border" ,"none");
		$(".di3").attr("readonly","readonly");
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

body a:link, a:visited, a:hover, a:active {
	text-decoration: none;
	border: none;
}

.dainSection {
	margin-left: 2%;
	width: 80%;
}

.dainUamTitle{
	margin-bottom: 24px;
}

.dainTable{
	border-collapse: collapse;
	width: 100%;
	font-size: 12px;
	border: 1px solid #d9d9d9;
	margin-bottom: 3%;
}

.dainth{
	 text-align: left; 
	 color: #666666; 
	 background-color: #eeeeee;
	 
}

.daintd{
	padding: 5px 10px;
	vertical-align: middle;
}

.daintd.td1{
	width: 14%;
}
.dainem{
	color: #dd5850;
	font-size: 18px;
	display: inline-block;
	margin-right: 10px;
}

.dainInput{
	background: #fff;
    font-size: 12px;
    line-height: 13px;
    border: none;
    /*수정버튼 눌렀을떄 아래꺼*/
    /*border: 1px solid #acacac;*/
    height: 26px;
    min-width: 96%;
    border-radius: 3px;
    padding: 2px 8px;
    outline: none;
    
}

.dainBtn{
	background-color: white;
	border: 1px solid #d9d9d9;
	border-radius: 3px;
	padding: 6px 8px;
	outline: none;
	font-size: 12px;
}

.dainBtn:hover{
	cursor: pointer;
}

.dainBtn2{
 	 background-color: #1f76bb; 
 	 border: 1px solid #1f76bb;
	 color: #fff;
	 padding: 6px 16px;
	 border: none;
}
.dainBtn2:hover{
	background-color: #1c6baa;
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
	<section class="dainSection">
	<div class="dainUamTitle">
		<h1 style="margin: 0px;">주소(배송지) 관리</h1>
	</div>
	
	<!-- 배송지1 테이블 (#dt1) -->
	<table class="dainTable" id="dt1">
		<thead class="dainth">
		<tr class="daintr" style="border: 1px solid #d9d9d9;">
			<th class="daintd" colspan="2" style="padding: 12px 8px;">배송지 1</th>
		</tr>
		</thead>
		<tr class="daintr"  >
			<td class="daintd td1" style="vertical-align: middle;"><em class="dainem">*</em>받는분</td>
			<td class="daintd td2" style="padding-top: 15px;">
				<input class="dainInput di1" name="addrName1" id="addrName1" type="text" placeholder="받는분 이름을 입력해주세요." 
				autocomplete="off" required="required" readonly="readonly"/>
			</td>
		</tr>
		<tr class="daintr">
			<td class="daintd" ><em class="dainem">*</em>전화번호</td>
			<td class="daintd" >
				<input class="dainInput di1" name="addrTel1" id="addrTel1" type="text" value="none" autocomplete="off" 
				required="required" readonly="readonly"/>
			</td>
		</tr>
		<tr class="daintr">
			<td class="daintd" style="vertical-align: top;"><em class="dainem">*</em>주소</td>
			<td class="daintd" style="padding-bottom: 15px;">
				<!-- 주소 name에 숫자두개는 앞에숫자가 n번배송지, 뒤에숫자(1-2-3이 우편번호-주소1-주소2 -->
				<input class="dainInput dai1" name="addrAddr11" id="addrAddr11" type="text" 
				placeholder="우편번호" autocomplete="off" 
				required="required" readonly="readonly" style="min-width: 13%; max-width: 13%; margin-bottom: 10px;"/>
				<!-- 수정버튼 눌렀을때 아래 버튼이 생김 -->
				<button id="adrBtn" style="display: none;"> 주소 찾기</button><br>
				<input class="dainInput dai1" name="addrAddr12" id="addrAddr12" type="text" 
				placeholder="기본주소" autocomplete="off" 
				required="required" readonly="readonly" style="margin-bottom: 10px;"/><br>
				<input class="dainInput di1" name="addrAddr13" id="addrAddr13" type="text" 
				placeholder="나머지 주소" autocomplete="off" 
				required="required" readonly="readonly" style="margin-bottom: 10px;"/><br>
				<button class="dainBtn" id="editBtn" style="padding: 6px 16px;">수정</button><button 
				class="dainBtn" id="editCancelBtn" style="padding: 6px 16px; display: none;">취소</button>
				<!-- 수정버튼 눌렀을때 아래 버튼이 생김 -->
				<span id="saveBtn" style="display: none;"><button class="dainBtn dainBtn2">저장</button></span>
			</td>
		</tr>
	</table>
	
	<!-- 배송지2 테이블 (#dt2) -->
	<table class="dainTable" id="dt2">
		<thead class="dainth">
		<tr class="daintr" style="border: 1px solid #d9d9d9;">
			<th class="daintd" colspan="2" style="padding: 12px 8px;">배송지 2</th>
		</tr>
		</thead>
		<tr class="daintr"  >
			<td class="daintd td1" style="vertical-align: middle;"><em class="dainem">*</em>받는분</td>
			<td class="daintd td2" style="padding-top: 15px;">
				<input class="dainInput di2" name="addrName2" type="text" placeholder="받는분 이름을 입력해주세요." 
				autocomplete="off" required="required" readonly="readonly"/>
			</td>
		</tr>
		<tr class="daintr">
			<td class="daintd" ><em class="dainem">*</em>전화번호</td>
			<td class="daintd" >
				<input class="dainInput di2" name="addrTel2" type="text" value="none" autocomplete="off" 
				required="required" readonly="readonly"/>
			</td>
		</tr>
		<tr class="daintr">
			<td class="daintd" style="vertical-align: top;" ><em class="dainem">*</em>주소</td>
			<td class="daintd" style="padding-bottom: 15px;">
				<input class="dainInput dai2" name="addrAddr21" type="text" placeholder="우편번호" autocomplete="off" 
				required="required" readonly="readonly" style="min-width: 13%; max-width: 13%; margin-bottom: 10px;"/>
				<!-- 수정버튼 눌렀을때 아래 버튼이 생김 -->
				<button id="adrBtn2" style="display: none;"> 주소 찾기</button><br>
				<input class="dainInput dai2" name="addrAddr22" type="text" placeholder="기본주소" autocomplete="off" 
				required="required" readonly="readonly" style="margin-bottom: 10px;"/><br>
				<input class="dainInput di2" name="addrAddr23" type="text" placeholder="나머지 주소" autocomplete="off" 
				required="required" readonly="readonly" style="margin-bottom: 10px;"/><br>
				<button class="dainBtn" id="editBtn2" style="padding: 6px 16px;">수정</button><button 
				class="dainBtn" id="editCancelBtn2" style="padding: 6px 16px; display: none;">취소</button>
				<!-- 수정버튼 눌렀을때 아래 버튼이 생김 -->
				<span id="saveBtn2" style="display: none;"><button class="dainBtn dainBtn2">저장</button></span>
			</td>
		</tr>
	</table>
	
	
	<!-- 배송지3 테이블 (#dt3) -->
	<table class="dainTable" id="dt3">
		<thead class="dainth">
		<tr class="daintr" style="border: 1px solid #d9d9d9;">
			<th class="daintd" colspan="2" style="padding: 12px 8px;">배송지 3</th>
		</tr>
		</thead>
		<tr class="daintr"  >
			<td class="daintd td1" style="vertical-align: middle;"><em class="dainem">*</em>받는분</td>
			<td class="daintd td2" style="padding-top: 15px;">
				<input class="dainInput di3" name="addrName3" type="text" placeholder="받는분 이름을 입력해주세요." 
				autocomplete="off" required="required" readonly="readonly"/>
			</td>
		</tr>
		<tr class="daintr">
			<td class="daintd" ><em class="dainem">*</em>전화번호</td>
			<td class="daintd" >
				<input class="dainInput di3" name="addrTel3" type="text" value="none" autocomplete="off" 
				required="required" readonly="readonly"/>
			</td>
		</tr>
		<tr class="daintr">
			<td class="daintd" style="vertical-align: top;" ><em class="dainem">*</em>주소</td>
			<td class="daintd" style="padding-bottom: 15px;">
				<input class="dainInput dai3" name="addrAddr31" type="text" placeholder="우편번호" autocomplete="off" 
				required="required" readonly="readonly" style="min-width: 13%; max-width: 13%; margin-bottom: 10px;"/>
				<!-- 수정버튼 눌렀을때 아래 버튼이 생김 -->
				<button id="adrBtn3" style="display: none;"> 주소 찾기</button><br>
				<input class="dainInput dai3" name="addrAddr32" type="text" placeholder="기본주소" autocomplete="off" 
				required="required" readonly="readonly" style="margin-bottom: 10px;"/><br>
				<input class="dainInput di3" name="addrAddr33" type="text" placeholder="나머지 주소" autocomplete="off" 
				required="required" readonly="readonly" style="margin-bottom: 10px;"/><br>
				<button class="dainBtn" id="editBtn3" style="padding: 6px 16px;">수정</button><button 
				class="dainBtn" id="editCancelBtn3" style="padding: 6px 16px; display: none;">취소</button>
				<!-- 수정버튼 눌렀을때 아래 버튼이 생김 -->
				<span id="saveBtn3" style="display: none;"><button class="dainBtn dainBtn2">저장</button></span>
			</td>
		</tr>
	</table>
	

	
	</section> <!-- dain section끝 -->
	</div> <!-- content 끝 -->
	<!-- 푸터  -->
	<%@ include file="../../include/uFooter.jsp" %>
</div>
</body>
</html>