<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 인기 작품</title>
<style>
.dndud_title_img{
	display:flex;
	width:100%;
	height:210px;
	background-image: url("<c:url value='/resources/img/articles_head.png'/> ");
	background-repeat: no-repeat;
	background-size:100%;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}

.dndud_title_img h1{
	color:white;
}

.dndud_title_img div{
	height:2px;
	width:64px;
	margin-top:15px;
	margin-bottom:15px;
	background-color:white;
}

.dndud_title_img p{
	display:flex;
	justify-content:center;
	font-size:14px;
	color:white;
	width:100%;
}

.dndud_content{
	width:100%;
	display:flex;
	flex-direction:column;
	align-items: center;
}

.articles{
	display:flex;
	flex-wrap:wrap;
	align-items:center;
	width:1073px;
	margin-top: 16px;
	margin-bottom:50px;
}

.article{
	margin-top: 16px;
	margin-left: 8px;
	margin-right: 8px;
	width:196px;
	border: 1px solid #d9d9d9;
	border-radius:4px;
	background-color:#f8f9fb;
}

.article_img{
	display:flex;
	flex-direction: row;
	justify-content: space-between;
	background-image: url("<c:url value='/resources/img/recommendedWork_img.PNG'/> ");
	width:196px;
	height:196px;
	background-size: 196px;
	border-radius:4px;
	background-repeat: no-repeat;
}

.article_img i{
    font-size: 20px;
    margin: 5%;
    color: gray;
    -webkit-text-stroke-width: 1px;
    -webkit-text-stroke-color: white;
}

.article_detail{
	padding: 8px 10px;
	height:96px;
	justify-content: flex-start;
	display:flex;
	flex-direction: column;
	border-bottom:1px solid #d9d9d9;
	font-size:12px;
}

.article_detail a{
	hegith:15px;
	font-size:12px;
	color:#999;
	margin-bottom:4px;
}

.article_detail span{
	font-size:14px;
	height:42px
}

.article_grade{
	font-size:12px;
	display:flex;
	flex-direction: row;
	padding:8px 10px;
	justify-content: flex-start;
	align-items: center;
}

.article_grade span{
	color:#999;
	margin-left:10px;
}

.article_img img{
	margin:5%;
	display:flex;
	width:30px;
	height:30px;
}
</style>
</head>
<body>
<div>
	<%@ include file="../include/uHeader.jsp"  %>
	<div class="dndud_content">
		<div class="dndud_title_img">
			<h1>인기작품</h1>
			<div></div>
			<p>보물섬에서 가장 인기있는 작품들이에요.</p>
		</div>
		
		<div class="articles">
			<c:forEach var="i" begin="1" end="30">
				<div class="article">
					<div class="article_img">
						<c:choose>
							<c:when test="${i == 1}">
								<img src="<c:url value='/resources/img/uFirst.png'/> ">
							</c:when>
							<c:when test="${i == 2}">
								<img src="<c:url value='/resources/img/uSecond.png'/> ">
							</c:when>
							<c:otherwise>
								<img src="<c:url value='/resources/img/uThird.png'/> ">
							</c:otherwise>
						</c:choose>
						<i class="fa fa-star"></i>
					</div>
					<div class="article_detail">
						<a>CONVEY.G</a>
						<span>[3일할인][인기]차량용 우드불 디퓨저</span>
					</div>
					<div class="article_grade">
						<i class="fa fa-star" style="color:gold"></i>
						<i class="fa fa-star" style="color:gold"></i>
						<i class="fa fa-star" style="color:gold"></i>
						<i class="fa fa-star" style="color:gold"></i>
						<i class="fa fa-star" style="color:gold"></i>
						<span>(<a>3</a>)</span>
					</div>
				</div>
			</c:forEach>
		</div>
	
	</div>
	<%@ include file="../include/uFooter.jsp" %>
</div>
</body>
</html>