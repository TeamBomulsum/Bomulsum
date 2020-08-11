<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매중 작품</title>
<link href="<c:url value='/resources/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet"
   type="text/css">
<link
   href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
   rel="stylesheet">
<!-- Custom styles for this template-->
<link href="<c:url value='/resources/css/sb-admin-2.min.css'/>" rel="stylesheet">
<!-- CSS 영역 -->
<style>
.onSaleContainer{
	width:90%;
	margin-left:2%;
}
.topLine{
	height:40px;
}
.button {
	background-color: white;
	color: black;
	border: 1px solid #008CBA;
	text-align: center;
	padding:2%,2%;
}

.registerButton {
	float: right;
}

.textTitle {
	float: left;
}

.onSaleTitle {
	float: center;
}

.ttable {
	margin-top:10px;
	text-align:center;
}

.bottomLine{
	margin:1%;
}

#ordertable{
	width:100%;
	table-layout:fixed;
	border-top: 1px solid #ddd;
	border-left: 0px;
	border-right: 0px;
	border-bottom: 1px solid #ddd;
}

.alignLeft{
	float:left;
}

.alignRight{
	float:right;
}
.formAction {
	float: right;
}

form {
	display: inline;
}

.paging {
 	margin-top:20px;
    text-align: center;
    margin-bottom:100px;
}

 .paging a {
    display: inline-block;
    margin:0 3px;
    text-decoration: none;
    padding: 5px 10px;
    border:1px solid #ccc;
    color:#999999;
    background-color:#fff;
 }
 .arrow prev{
 	border:0px;
 }
.arrow next{
	border:0px;
}

</style>
</head>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script>

$("#pauseSales").click(function() {
    
    const checkArray = new Array();
    const useynArray = new Array();
    $(".selectCheckBox:checked").each(function() {
       const useyn = $(this).data('Y') == 1 ? 0 : 1;
       checkArray.push($(this).data('N'));
       useynArray.push(useyn);
    });
    $.ajax({
       url: "${pageContext.request.contextPath}"+"writer/updateSalesArt.wdo",
       method: 'post',
       data: {
          checkList:checkArray,
          useList:useynArray
       },
       success: function() {
          location.reload(true);
       },
       error: function(err) {
          alert('변경에 실패하셧습니다.');
       }
    }) ;

 });

$(document).ready(function(){
    //최상단 체크박스 클릭
    $("#selectAll").click(function(){
        //클릭되었으면
        if($("#selectAll").prop("checked")){
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[name=selectCheck]").prop("checked",true);
            //클릭이 안되있으면
        }else{
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[name=selectCheck]").prop("checked",false);
        }
    })
})


</script>
<!-- body 시작 -->
<body id="page-top">
   <div id="wrapper">
      <!-- Header/Nav -->
      <%@ include file="../include/side.jsp" %>
      <div id="content-wrapper" class="d-flex flex-column">
         <div id="content">
            <%@ include file="../include/head.jsp" %>
            <!-- end Header/Nav -->
     <!-- 판매중 작품 영역 -->
	<div class="onSaleContainer">
		<!-- topLine -->
		<div class="topLine">           
			<div class="textTitle">
				<h4>판매중 작품</h4>
			</div>
			<div class="registerButton">
				<button class="button"id="register" type="button" onclick="alert('작품 등록')">작품등록</button>
			</div>
		</div> 	<!-- end of topLine -->
	<hr>
	<div class="middleLine">
	<form class="search" action="#" >
		<input type="text" placeholder="작품명을 입력하세요" name="search2">
		<button class="button" type="submit">검색</button>
	</form>

	<div class="formAction">
		<form action="#" class="menu_search">
			<select name="menu" id="menu_id">
				<option value="registerdate">등록일</option>
				<option value="workname">작품명</option>
				<option value="price">정상가격</option>
				<option value="bookmark">즐겨찾기</option>
				<option value="numberofsales">판매수</option>
			</select>
		</form>
		<form action="#" class="show_number">
			<select name="show" id="show_id">
				<option value="showten">10개씩 보기</option>
				<option value="showthirty">30개씩 보기</option>
				<option value="showfifty">50개씩 보기</option>
			</select>
		</form>
		</div>
	</div>	<!-- middleLine -->
	<!-- 테이블 시작 -->
	<div class="ttable">
		<table border="1" id="ordertable">
			<tr>
				<th style="width:4%"><input type="checkbox" id="selectAll"></th>
				<th colspan="4" style="width:40%">작품명</th>
				<th style="width:5%">수량</th>
				<th style="width:7%">정상가</th>
				<th style="width:7%">할인가</th>
				<th style="width:7%">즐겨찾기</th>
				<th style="width:5%">댓글</th>
				<th>조회수</th>
				<th>판매수</th>
				<th style="width:5%">후기</th>
				<th>수정</th>
			</tr>
			<c:forEach var="onSaleArt" items="${onSaleList}">
			<tr>
		
				<td><input type="checkbox" class="selectCheckBox" value="Y" name="selectCheck"></td>
				<td><img style="overflow: hidden; align-items: center; justify-content: center; width: 75px; height: 75px"
					src="<c:url value='/upload/${photo[0]}'/>" /></td>
				<td colspan="3">
					<div class="alignLeft" style="text-align: left">
						<a href="#" style="color: black; text-style: bold;">
						${onSaleArt.artName} </a> 
						<label style="text-align: center; background-color: #5EC75E; width: auto; margin-bottom: 0rem; color: white">
							<i class="fas fa-tags"></i>
						</label>
					</div>
					<div class="alignRight" style="text-align: right">
						<br> <label style="text-decoration: line-through; margin-bottom: 0rem"> ${onSaleArt.artPrice}원</label>
						<br> <label style="margin-bottom: 0rem; color: #28E7FF">${onSaleArt.artDiscount}원 </label>
					</div>
				</td>
				<td>${onSaleArt.artAmount}</td>
				<td>${onSaleArt.artPrice}원</td>
				<td>${onSaleArt.artDiscount}원</td>
				<td>6</td>
				<td>1</td>
				<td>${onSaleArt.artViewCount}</td>
				<td>${onSaleArt.artSaleCount}</td>
				<td>0</td>
				<td><button id="update" type="button" onclick="alert('수정')">수정</button></td>
			</tr>
			</c:forEach>
		</table>
	</div>
	
	<!-- 테이블 끝 -->
	
	<!-- 아래 버튼 -->
	<div class="bottomLine">
	0개
	<button class="button" id="pauseSales" type="button">판매 일시 중지</button>
	<button class="button" id="deleteWork" type="button">작품 삭제</button>
	</div>
	<!-- 아래 버튼 끝 -->
    </div><!-- end of Container -->	
	<!-- 페이징 처리 -->
	 <div class="paging">
	   <a class="arrow prev" href="#">이전</a>
        <a href="#">1</a>
       <a class="arrow next" href="#">다음</a>
    </div>

            <%@ include file="../include/footer.jsp" %>
            <!-- end footer -->
        
            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top"> <i
               class="fas fa-angle-up"></i>
            </a>

            <script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
            <script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

            <!-- Core plugin JavaScript-->
            <script src="<c:url value='/resources/vendor/jquery-easing/jquery.easing.min.js'/>"></script>

 

         </div> <!-- end of content -->
      </div>
   </div>
</body>
</html>