<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 적립금</title>
<style>
.content {
	width: 70%;
	margin-left: auto;
	margin-right: auto;
	padding-top: 36px;
	padding-bottom: 64px;
	display:flex;
}

body a:link, a:visited, a:hover, a:active {
	text-decoration: none;
	border: none;
}

.dndud_content{
	width:80%;
	display:flex;
	flex-direction: column;
	margin-left: 2%;
	margin-bottom:2%;
}

.reserves_table{
	width:96%;
	display:flex;
	flex-direction: column;
	padding:2%;
	background-color:#1f76bb;
	margin-bottom: 3%;
	color:white;
}

.reserves_table_top{
	display:flex;
	flex-direction: column;
	border-bottom: 1px solid white;
	padding-bottom:0.5%;
}

.reserves_table_top div:nth-child(1){
	font-size:16px;
}

.reserves_table_top div:nth-child(2){
	font-size:30px;
	font-weight:bold;
	align-self: flex-end;
}

.reserves_table_bottom{
	display:flex;
	flex-direction: row;
	padding-top:1%;
}

.reserves_table_bottom_left{
	width:50%;
	display:flex;
	flex-direction: column;
}

.reserves_table_bottom_left div:nth-child(1){
	font-size:13px;
	border-right: 1px solid white;
	padding-right:2%;
}

.reserves_table_bottom_left div:nth-child(2){
	font-size:24px;
	padding-right:2%;
	font-weight:bold;
	align-self: flex-end;
	border-right: 1px solid white;
}

.reserves_table_bottom_right{
	padding-left:2%;
	width:50%;
	display:flex;
	flex-direction: column;
}

.reserves_table_bottom_right div:nth-child(1){
	font-size:13px;
}

.reserves_table_bottom_right div:nth-child(2){
	font-size:24px;
	font-weight:bold;
	align-self: flex-end;
}

.reserves_use_list{
	width:100%;
	display:flex;
	flex-direction: column;
	margin-bottom: 4%;
	font-size:15px;
}

.reserves_use_list_top{
	width:100%;
	display:flex;
	flex-direction: row;
	justify-content: space-between;
	padding-bottom:1%;
	border-bottom: 1px solid #d9d9d9;
}

.reserves_use_list_top span:nth-child(1){
	font-weight: bold;
	font-size: 18px;
}

.reserves_use_list_top span:nth-child(2){
	border: 1px solid #d9d9d9;
	font-size: 13px;
	display:flex;
	justify-content: center;
	align-items: center;
	padding:0.2%;
	cursor:pointer;
}

.reserves_use_list_content{
	margin-top: 2%;
	font-size: 13px;
	color: gray;
	display: flex;
	flex-direction: column;
	border-bottom: 1px solid #d9d9d9;
	padding-bottom: 2%;
}


.reserves_use_list_content div{
	display: flex;
	justify-content: space-between;
	padding-right:1%;
	align-items: center;
}

.reserves_use_list_content div span:nth-child(1){
	color: #333;
}

.reserves_use_list_content div span:nth-child(2){
	font-weight: bold;
}

.dndud_content_footer{
	width:100%;
	display:flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	margin-bottom: 6%;
}

.dndud_content_footer span{
	color:gray;
	font-size: 13px;
}

.dndud_content_paging{
	width:100%;
	display:flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.dndud_content_paging_num{
	width:50%;
	display: flex;
	flex-direction: row;
	justify-content: center;
}

.dndud_content_paging_num a{
	color:red;
	padding:0.5% 1% 0.5% 1%;
	border: 1px solid #d9d9d9;
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
	
		<div class="dndud_content">
			<div class="reserves_table">
				<div class="reserves_table_top">
					<div><span>사용가능한 적립금</span></div>
					<div><span>0P</span></div>
				</div>
				<div class="reserves_table_bottom">
					<div class="reserves_table_bottom_left">
						<div><span>적립 예정</span></div>
						<div><span>7P</span></div>
					</div>
					<div class="reserves_table_bottom_right">
						<div><span>7일이내 만료</span></div>
						<div><span>0P</span></div>
					</div>
				</div>
			</div>
			
			<div class="reserves_use_list">
				<div class="reserves_use_list_top">
					<span>적립금 이용 내역</span>
					<span>안내사항 ></span>
				</div>
				
				<div class="reserves_use_list_content">
					<span>2020-07-21 [선물] (카페) 주문제작 감성 일러스트 엽서</span>
					<div>
						<span>아기손 적립예정</span>
						<span>7P</span>
					</div>
				</div>
			</div>
			
			<div class="dndud_content_footer">
				<span>최근 1년까지 내역을 확인할 수 있습니다.</span>
			</div>
			
			<div class="dndud_content_paging">
				<div class="dndud_content_paging_num">
					<a>1</a>
				</div>
			</div>
		</div>
		
		
		
	
	</div>
	<!-- 푸터  -->
	<%@ include file="../include/uFooter.jsp" %>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</html>