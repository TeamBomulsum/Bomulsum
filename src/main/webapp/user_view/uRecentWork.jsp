<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 최근 본 작품</title>
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
#wonBookButton{
   cursor: pointer;
   text-decoration: none;
}
#wonBookContent{
   cursor: pointer;
   
}
#wonBookContent:hover {
   box-shadow: 1px 1px gray;
}





</style>
</head>
<body>
<div>
   <!-- 헤더 -->
   <%@ include file="include/uHeader.jsp"  %>
   
   
   
   <div class="content">
   <!-- 사이드메뉴 -->
   <%@ include file="include/uside.jsp" %>
   <!-- 내용 여기다 넣으시오 -->
   
   <div style="margin-left:2%; width: 100%;">
      <div>
         <h2 style="margin: 1%;">최근 본 작품</h2>
      </div>
      <div>
            <div style="display: flex; flex-direction: row;">
               <div id="wonBookContent" style="width: 25%; text-decoration: none; margin:1%;">
               <!-- 내용물 -->
                  <a style="margin:1%;">
                  <!-- 이미지 위에 즐겨찾기 버튼 기능 구현하기 -->
                  	 <span style="position: relative;">
                  	 	<span style="position:absolute; right:0; margin-right:5%; font-size:30px; color:yellow;">
                  	 	★
                  	 	</span>
                     	<img style="width:100%;" src="<c:url value='/resources/img/test.png'/>" >
                     </span>
                  <!-- 이미지 위에 즐겨찾기 버튼 기능 구현하기 -->
                     <span style="color: #ABABAB; font-size: 80%;">판매자 계정</span><br>
                     <span>상품설명</span><br>
                     <span style="color: red;">할인율</span>&nbsp;<span>가격</span><br>
                     <span style="text-decoration: line-through; color: #ABABAB; font-size: 70%;">원가</span><br>
                     <span>별점</span><br>
                     <span style="background-color:#EAEAEA; border:1px solid #EAEAEA; border-radius: 5px; font-size: 60%; color: #ABABAB;">후기</span>
                     &nbsp;<span style="color: #ABABAB; font-size: 60%;">후기내용</span>
                  </a>
               </div>
               <div id="wonBookContent" style="width: 25%; text-decoration: none; margin:1%;">
               <!-- 내용물 -->
                  <a style="margin:1%;">
                     <img style="width: 100%;" src="<c:url value='/resources/img/test.png'/>" >
                     <span style="color: #ABABAB; font-size: 80%;">판매자 계정</span><br>
                     <span>상품설명</span><br>
                     <span style="color: red;">할인율</span>&nbsp;<span>가격</span><br>
                     <span style="text-decoration: line-through; color: #ABABAB; font-size: 70%;">원가</span><br>
                     <span>별점</span><br>
                     <span style="background-color:#EAEAEA; border:1px solid #EAEAEA; border-radius: 5px; font-size: 60%; color: #ABABAB;">후기</span>
                     &nbsp;<span style="color: #ABABAB; font-size: 60%;">후기내용</span>
                  </a>
               </div>
               <div id="wonBookContent" style="width: 25%; text-decoration: none; margin:1%;">
               <!-- 내용물 -->
                  <a style="margin:1%;">
                     <img style="width: 100%;" src="<c:url value='/resources/img/test.png'/>" >
                     <span style="color: #ABABAB; font-size: 80%;">판매자 계정</span><br>
                     <span>상품설명</span><br>
                     <span style="color: red;">할인율</span>&nbsp;<span>가격</span><br>
                     <span style="text-decoration: line-through; color: #ABABAB; font-size: 70%;">원가</span><br>
                     <span>별점</span><br>
                     <span style="background-color:#EAEAEA; border:1px solid #EAEAEA; border-radius: 5px; font-size: 60%; color: #ABABAB;">후기</span>
                     &nbsp;<span style="color: #ABABAB; font-size: 60%;">후기내용</span>
                  </a>
               </div>
               <div id="wonBookContent" style="width: 25%; text-decoration: none; margin:1%;">
               <!-- 내용물 -->
                  <a style="margin:1%;">
                     <img style="width: 100%;" src="<c:url value='/resources/img/test.png'/>" >
                     <span style="color: #ABABAB; font-size: 80%;">판매자 계정</span><br>
                     <span>상품설명</span><br>
                     <span style="color: red;">할인율</span>&nbsp;<span>가격</span><br>
                     <span style="text-decoration: line-through; color: #ABABAB; font-size: 70%;">원가</span><br>
                     <span>별점</span><br>
                     <span style="background-color:#EAEAEA; border:1px solid #EAEAEA; border-radius: 5px; font-size: 60%; color: #ABABAB;">후기</span>
                     &nbsp;<span style="color: #ABABAB; font-size: 60%;">후기내용</span>
                  </a>
               </div>
               <div id="wonBookContent" style="width: 25%; text-decoration: none; margin:1%;">
               <!-- 내용물 -->
                  <a style="margin:1%;">
                     <img style="width: 100%;" src="<c:url value='/resources/img/test.png'/>" >
                     <span style="color: #ABABAB; font-size: 80%;">판매자 계정</span><br>
                     <span>상품설명</span><br>
                     <span style="color: red;">할인율</span>&nbsp;<span>가격</span><br>
                     <span style="text-decoration: line-through; color: #ABABAB; font-size: 70%;">원가</span><br>
                     <span>별점</span><br>
                     <span style="background-color:#EAEAEA; border:1px solid #EAEAEA; border-radius: 5px; font-size: 60%; color: #ABABAB;">후기</span>
                     &nbsp;<span style="color: #ABABAB; font-size: 60%;">후기내용</span>
                  </a>
               </div>
                  
         </div>
      </div>
   </div>
   
   
   
   
   </div>
   <!-- 푸터  -->
   <%@ include file="include/uFooter.jsp" %>
</div>
</body>
</html>