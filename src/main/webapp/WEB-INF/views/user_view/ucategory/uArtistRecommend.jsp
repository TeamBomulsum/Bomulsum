<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 작가님 추천</title>
</head>
<style>
.dain_main_category{
	width:70%;
	margin-left: auto;
	margin-right: auto;
}

.dain_main_category_title{
	margin-top:5%;
}

.dain_main_category_title .title{
	font-size:23px;
	font-weight:bold;
}

.dain_main_category_search_detail div{
	border:solid 1px #d9d9d9;
	border-radius: 2px;
	cursor:pointer;
	color:#666666;
	font-size: 13px;
	padding:0.5%;
}

.dain_main_category_search_detail select{
	width:10%;
}

.dain_main_category_search_detail select:focus{
	outline:none;
}

.dain_main_category_contents{
	margin-top: 3%;
	display:flex;
	width:100%;
	flex-wrap: wrap;
}

.dain_main_category_content_box{
	width:19%;
	margin-right:1%; 
	margin-bottom:2%; 
	height:450px;
	cursor:pointer;
}

.dain_main_category_content_box:hover{
	box-shadow: 0 2px 8px 0 rgba(0, 0, 0, 0.2);
	transition: .5s;
}

.content_img{
	width: 100%;
	height: 50%;
	background-image: URL('../../resources/img/dog.jpg');
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

dain_main_category_title span:nth-child(2){

}
</style>
<body>
<div>
	<%@ include file="../include/uHeader.jsp"  %>
	
	<div class="dain_main_category">
	
		<div class="dain_main_category_title">
			<span class="title">작가님 추천</span>
			<span style="font-size: 10px; font-weight:bold; margin-left:5px; color: #d9d9d9;">Sponsored</span>
			
			<div class="dain_main_category_contents">
			
				<c:forEach var="i" begin="0" end="70">
					<div class="dain_main_category_content_box">
						<div class="content_img">
							<i id="${i}bookmark" class="fa fa-star fs"></i>
						</div>
						<div class="content_detail">
							<span class="content_detail_writer">메종드미우</span>
							<span class="content_detail_title">Square Pearl Collar_Rose Pink</span>
							<span class="content_detail_price_decount"><a></a><a> 38,000</a> 원</span>
							<span class="content_detail_price_orgin"></span>
							<span class="content_detail_other">
								<span>무료배송</span>
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