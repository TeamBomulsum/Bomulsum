<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 회원 등급</title>
<style>
.content {
	width: 70%;
	margin-left: auto;
	margin-right: auto;
	padding-top: 36px;
	padding-bottom: 64px;
	display: flex;
}

.dainSection {
	margin-left: 2%;
	width: 80%;
}

.dainUmgTitle {
	margin-bottom: 24px;
}

.dainMembershipTable {
	border: 1px solid #d9d9d9;
	width: 100%;
}

.dainMbArea1 {
	display: flex;
}

.dainPbSplit {
	height: 10px;
	width: 96%;
	margin-left: 2%;
	background: #f2f2f2;
}

.dainPbName{
	font-size: 12px;
	display: flex;
	justify-content: space-between;
	margin-top: 4%;
}

.nomargin{
	margin: 0px;
}

.nextMb{
	 font-size: 14px;
	 text-align: center;
	 border: 2px solid black;
	 border-radius: 3px;
	 padding: 10px 0px;
	 margin: 20px 0px 0px;
	 width: 100%;
}

.dainUmgSubTitle{
	margin-top: 24px;
	padding: 40px 0px 4px;
}

.gradeName{
	font-size: 14px; 
	width: 100%; 
	text-align: center; 
	font-weight: bold; 
	margin-top: 6px;
}

.dl{
	margin: 0px;
}

table{
	border-collapse: collapse;
}

.dainUmgGuide-top{
	display: flex; 
	justify-content: space-between;
	padding-top: 40px;
	margin-bottom: 24px;
}


.dainUmgGuide-top :hover {
	background-color: #faf9f9;
}

.arrow {
  border: solid black;
  border-width: 0 1px 1px 0;
  display: inline-block;
  padding: 3px;
}

.right {
  transform: rotate(-45deg);
  -webkit-transform: rotate(-45deg);
}

.NowGradeCircle{
	width: 18px;
	height: 18px;
	border-radius: 50%;
	z-index: 99;
	position: absolute;
	
}

.colBlue{
	background-color: #1f76bb;
	border: 1px solid #1c6ba9;
}
.colGray{
	background-color: #f5f5f5;
	border: 1px solid #acacac;
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
	 	<div class="dainUmgTitle">
		<h1 style="margin: 0px;">회원등급</h1>
		</div>
		
		<!-- 현재 회원등급 표시영역 -->
		<table class="dainMembershipTable">
		<tr> 
			<td style="padding:42px 32px; width: 50%;">
				<div class="dainMbArea1" style="display: flex; align-items: center;">
					<div>
						<div><i class="fas fa-gem fa-5x" style="color: #ad734e"></i></div>
					</div>
					<div style="margin-left: 24px;">
					<h1>브론즈</h1>
					<p style="color: #29aae1; font-size: 14px;">작품 구매시 적립률 0.5%</p>
					</div>
				</div>
			</td>
			
			<!-- 다음달 예상등급 표시영역 -->
			<td style="padding: 24px; border-left: 1px solid #d9d9d9; width: 50%; ">
				<div class="dainMbArea2">
					<div style="padding-bottom:20px;">
					<strong>8월 예상등급</strong>
					</div>
					<div class="dainProgressBar" style="display: flex; align-items: center;">
						<div class="dainPbSplit" ></div>
						<div class="NowGradeCircle colBlue" ></div>
						<div class="NowGradeCircle colGray" style="margin-left: 8%;"></div>
						<div class="NowGradeCircle colGray" style="margin-left: 15%;"></div>
						<div class="NowGradeCircle colGray" style="margin-left: 22%;"></div>
						<!--  
						<div class="dainPbSplit"></div>
						<div class="dainPbSplit"></div>-->
					</div>
					<div class="dainPbName">
						<div>브론즈</div>
						<div>실버</div>
						<div>골드</div>
						<div>다이아</div>
					</div>
					<div class="nextMb" style="font-size: 14px;">
						<p class="nomargin" style="margin-bottom: 4px;">7월 31일까지 100,000원 이상 더 사면,</p>
						<p class="nomargin" style="font-weight: bold;"> 실버 등급!</p> <!-- 여기 등급명 바꿔주고 계산 -->
					</div>
				</div>
			</td>
		</tr>
	</table>
	<!-- 등급별 혜택 안내 영역 -->
	<div class="dainUmgSubTitle">
	<h4>등급별 혜택 알아보기</h4>
	<table style="width: 100%; ">
		<tr style="">
			
			<td style="padding:16px 16px; width: 50%; border-top:1px solid #d9d9d9;">
				<div class="dainMbArea1" style="display: flex; align-items: center;">
					<div>
						<div><i class="fas fa-gem fa-3x" style="color: #99ffff"></i></div>
						<div class="gradeName">다이아</div>
					</div>
					<div style="margin-left: 24px;">
					<dl>
						<dt style="font-size: 12px;">작품 구매시 적립률</dt>
						<dd style="font-size: 16px; margin: 0px; font-weight: bold; color: #1f76bb">2.0%</dd>
						<dt style="font-size: 12px; margin-top: 16px;">등급조건</dt>
						<dd style="font-size: 14px; margin: 0px; font-weight: bold;">60만원 이상 구매시</dd>
					</dl>
					</div>
				</div>
			</td>
			<td style="padding:16px 16px; width: 50%; border-top:1px solid #d9d9d9; border-top:1px solid #d9d9d9;">
				<div class="dainMbArea1" style="display: flex; align-items: center;">
					<div>
						<div><i class="fas fa-gem fa-3x" style="color: gold"></i></div>
						<div class="gradeName">골드</div>
					</div>
					<div style="margin-left: 24px;">
					<dl>
						<dt style="font-size: 12px;">작품 구매시 적립률</dt>
						<dd style="font-size: 16px; margin: 0px; font-weight: bold; color: #1f76bb">1.5%</dd>
						<dt style="font-size: 12px; margin-top: 16px;">등급조건</dt>
						<dd style="font-size: 14px; margin: 0px; font-weight: bold;">30만원 이상, 60만원 미만 구매시</dd>
					</dl>
					</div>
				</div>
			</td>
			</tr>
			<tr> 
			<td style="padding:16px 16px; width: 50%; border-top:1px solid #d9d9d9; border-bottom:1px solid #d9d9d9;">
				<div class="dainMbArea1" style="display: flex; align-items: center;">
					<div>
						<div><i class="fas fa-gem fa-3x" style="color: silver"></i></div>
						<div class="gradeName">실버</div>
					</div>
					<div style="margin-left: 24px;">
					<dl>
						<dt style="font-size: 12px;">작품 구매시 적립률</dt>
						<dd style="font-size: 16px; margin: 0px; font-weight: bold; color: #1f76bb;">1.0%</dd>
						<dt style="font-size: 12px; margin-top: 16px;">등급조건</dt>
						<dd style="font-size: 14px; margin: 0px; font-weight: bold;">10만원 이상, 30만원 미만 구매시</dd>
					</dl>
					</div>
				</div>
			</td>
			<td style="padding:16px 16px; width: 50%; border-top:1px solid #d9d9d9; border-bottom:1px solid #d9d9d9;">
				<div class="dainMbArea1" style="display: flex; align-items: center;">
					<div>
						<div><i class="fas fa-gem fa-3x" style="color: #ad734e;"></i></div>
						<div class="gradeName">브론즈</div>
					</div>
					<div style="margin-left: 24px;">
					<dl>
						<dt style="font-size: 12px;">작품 구매시 적립률</dt>
						<dd style="font-size: 16px; margin: 0px; font-weight: bold; color: #1f76bb">0.5%</dd>
						<dt style="font-size: 12px; margin-top: 16px;">등급조건</dt>
						<dd style="font-size: 14px; margin: 0px; font-weight: bold;">10만원 미만 구매시</dd>
					</dl>
					</div>
				</div>
			</td>
			</tr>
	</table>
	</div>
	
	<!-- 등급 안내사항 영역 -->
	<div class="dainUmgGuide">
	<div class="dainUmgGuide-top">
		<div style="font-size: 16px; font-weight: bold;">안내사항</div>
		<a href="#" style="text-decoration: none; border: 1px solid #d9d9d9; 
		height:80%; padding: 3px 5px; line-height: 24px; padding: 0px 12px; 
		border-radius: 3px;" ><span style="font-size: 10px;">자세히 보기 <i class="arrow right"></i></span></a>
	</div>
	<p style="font-size: 12px; padding: 16px 24px; margin: 0px 12px; background-color: #FAF9F9">
	‣ 회원 등급은 최근 3개월간 결제 금액을 산정하여 다음 달 15일에 변경됩니다. <br>
	‣ 등급에 반영되는 결제 금액은 배송비, 제주/도서산간 추가 비용, 후원하기, 쿠폰할인, 적립금 사용이 제외된 작품 금액입니다.<br>
	‣ 매월 등급이 변경되기 전 환불시, 등급조건의 구매 금액에서 제외됩니다.<br>
	‣ 회원 등급 산정 및 혜택은 당사 사정에 의해 변경될 수 있습니다.
	</p>
	</div>
	</section> 

	</div> <!-- end content -->
	
	<!-- 푸터  -->
	<%@ include file="../include/uFooter.jsp" %>
</div>
</body>
</html>