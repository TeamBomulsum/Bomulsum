<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 카테고리</title>
</head>
<style>
.dndud_main_category{
	width:70%;
	margin-left: auto;
	margin-right: auto;
}

.dndud_main_category_title{
	margin-top:5%;
	margin-bottom:3%;
}

.dndud_main_category_title .title{
	font-size:23px;
	font-weight:bold;
}

.dndud_main_category_searchBox{
	font-size:13px;
	color:#333;
	margin-top:3%;
	display:flex;
	flex-direction:column;
	width:100%;
	border:1px solid #d9d9d9;
	margin-bottom:3%;
}

.dndud_main_category_searchBox div{
	display:flex;
	flex-direction:row;
	width:100%;
}

.dndud_main_category_searchBox span{
	margin:1.5%;
	width:13%;
}

.dndud_main_category_searchBox div:nth-child(1){
	border-bottom:1px solid #f5f5f5;
}

.dndud_main_category_searchBox div:nth-child(1) span:nth-child(2) a{
	font-size:13px;
	font-weight:bold;
	padding:1%;
	background-color: #e9f5ff;
    color: #0a91ff;
}

.dndud_main_category_searchBox div span:nth-child(1){
	color:#999;
}

.dndud_main_category_search_detail{
	display:flex;
	justify-content: space-between;
	flex-direction: row;
	margin-bottom:3%;
}

.dndud_main_category_search_detail div{
	border:solid 1px #d9d9d9;
	border-radius: 2px;
	cursor:pointer;
	color:#666666;
	font-size: 13px;
	padding:0.5%;
}

.dndud_main_category_search_detail select{
	width:10%;
}

.dndud_main_category_search_detail select:focus{
	outline:none;
}

.dndud_main_category_contents{
	display:flex;
	width:100%;
	flex-wrap: wrap;
}

.dndud_main_category_content_box{
	width:19%;
	margin-right:1%; 
	margin-bottom:2%; 
	height:450px;
	cursor:pointer;
}

.dndud_main_category_content_box:hover{
	box-shadow:2px 2px 2px 2px #d9d9d9;
	transition: .5s;
}

.content_img{
	width: 100%;
	height: 50%;
	background-image: URL('<c:url value="/resources/img/category_testimg.png"/> ');
	background-repeat: no-repeat;
	background-size: 100%;
	display:flex;
	flex-direction: column;
}

.content_img i{
	font-size:30px;
	align-self:flex-end;
	margin:2%;
	color: gray;
	-webkit-text-stroke-width: 2px;
	-webkit-text-stroke-color: white;
}

.content_detail{
	display:flex;
	flex-direction: column;
	width:98%;
	padding:1%;
}

.content_detail_writer{
	color:#999999;
	font-size:14px;
	margin-bottom:1.5%;
	overflow: hidden;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;
    text-overflow: ellipsis;
}

.content_detail_title{
	color:#333333;
	font-size:15px;
	margin-bottom:1.5%;
}

.content_detail_price_decount{
	font-size:24px;
	color:#333333;
	margin-bottom:1%;
	font-weight:bold;
}

.content_detail_price_decount a:nth-child(1){
	color:#d64640;
}

.content_detail_price_orgin{
	margin-bottom:2%;
	color:#999999;
	font-size:14px;
	font-weight:bold;
	text-decoration: line-through;
}

.content_detail_other{
	margin-bottom:4%;
	font-size:14px;
	font-weight:bold;
}

.content_detail_other span:nth-child(1){
	padding:1%;
	background-color: #e9f5ff;
	color: #0a91ff;
	margin:1%;
}

.content_detail_other span:nth-child(2){
	padding:1%;
	margin:1%;
	background-color: #e2fae6;
	color: #39af4d;
}

.content_detail_star span{
	color:#999999;
}

</style>
<body>
<div>
	<%@ include file="../include/uHeader.jsp"  %>
	
	<div class="dndud_main_category">
	
		<div class="dndud_main_category_title">
			<span class="title">카테고리</span>
			<div class="dndud_main_category_searchBox">
				<div>
					<span>배송</span>
					<span><input type="checkbox"><a>무료배송</a> 만 보기</span>
					<span></span>
					<span></span>
					<span></span>
					<span></span>
					<span></span>
				</div>
				<div>
					<span>가격대</span>
					<span><input type="checkbox">1만원 미만</span>
					<span><input type="checkbox">1만원대</span>
					<span><input type="checkbox">2만원대</span>
					<span><input type="checkbox">3만원대</span>
					<span><input type="checkbox">4만원대</span>
					<span><input type="checkbox">5만원대</span>
				</div>
			</div>
			
			<div class="dndud_main_category_search_detail">
				<div id="show_only_image">
					<input id="show_only_image_check" type="checkbox">
					<span>이미지만 볼래요</span>
				</div>
				<select>
					<option>인기순</option>
					<option>최신순 (NEW)</option>
					<option>낮은 가격순</option>
					<option>높은 가격순</option>
				</select>
			</div>
			
			<div class="dndud_main_category_contents">
			
			
				<c:forEach var="i" begin="0" end="70">
					<div class="dndud_main_category_content_box">
						<div class="content_img">
							<i id="${i}bookmark" class="fa fa-star fs"></i>
						</div>
						<div class="content_detail">
							<span class="content_detail_writer">그때커피</span>
							<span class="content_detail_title">한병더이벤트(1 + 1 + 1)더치커피 / 생일선물.디카페인</span>
							<span class="content_detail_price_decount"><a>40%</a><a> 12,000</a> 원</span>
							<span class="content_detail_price_orgin">20,000원</span>
							<span class="content_detail_other">
								<span>무료배송</span><span>안전식품</span>
							</span>
							<span class="content_detail_star">
								<i class="fa fa-star" style="color:gold"></i>
								<i class="fa fa-star" style="color:gold"></i>
								<i class="fa fa-star" style="color:gold"></i>
								<i class="fa fa-star" style="color:gold"></i>
								<i class="fa fa-star" style="color:gold"></i>
								<span>(<a>1252</a>)</span>
							</span>
						</div>
					</div>
				</c:forEach>
				
				
			</div>
			
		</div>
	
	</div>
	
	<%@ include file="../include/uFooter.jsp" %>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$(function(){
	$("#show_only_image").click(function(){ // 이미지만 볼래요 클릭시.
		if($("input:checkbox[id='show_only_image_check']").is(":checked")){
			$("input:checkbox[id='show_only_image_check']").prop("checked", false);
		}else{
			$("input:checkbox[id='show_only_image_check']").prop("checked", true);
		}
	});
	
	$(".fs").click(function(){
		
		var clickIcon = $(this).attr("id");
		
		if($("#"+clickIcon).css("color") == "rgb(128, 128, 128)"){
			$("#"+clickIcon).css("color", "#d64640");
		}else{
			$("#"+clickIcon).css("color", "gray");
		}
	});
});
</script>
</html>