<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의정보</title>
<link href="<c:url value='/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet"
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
<!-- body 시작 -->
<body id="page-top">
   <div id="wrapper">
      <!-- Header/Nav -->
      <%@ include file="/view/include/side.jsp" %>
      <div id="content-wrapper" class="d-flex flex-column">
         <div id="content">
            <%@ include file="/view/include/head.jsp" %>
            <!-- end Header/Nav -->
     <!-- 판매중 작품 영역 -->
	<div class="onSaleContainer">
		<!-- topLine -->
		<div class="topLine">           
			<div class="textTitle">
				<h4>강의정보</h4>
			</div>
			<div class="registerButton">
				<button class="button"id="register" type="button" onclick="alert('작품 등록')">작품등록</button>
			</div>
		</div> 	<!-- end of topLine -->
	<hr>
	<div class="middleLine">
	<form class="search" action="#" >
		<input type="text" placeholder="강의명을 입력하세요" name="search2">
		<button class="button" type="submit">검색</button>
	</form>

	<div class="formAction">
		<form action="#" class="menu_search">
			<select name="menu" id="menu_id">
				<option value="registerdate">등록일</option>
				<option value="workname">강의명</option>
				<option value="price">정상가격</option>
				<option value="saleprice">할인가격</option>
				<option value="bookmark">즐겨찾기</option>
				<option value="comment">댓글</option>
				<option value="numberofsales">수강인원</option>
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
				<th style="width:4%"><input type="checkbox"></th>
				<th colspan="4" style="width:40%">강의명</th>
				<th style="width:7%">정상가</th>
				<th style="width:7%">할인가</th>
				<th style="width:7%">즐겨찾기</th>
				<th style="width:5%">댓글</th>
				<th>조회수</th>
				<th>수강인원</th>
				<th>수정</th>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
				<td><img style="overflow: hidden; align-items: center; justify-content: center; width: 75px; height: 75px"
					src="<c:url value='/resources/img/earings.jpg'/>" /></td>
				<td colspan="3">
					<div class="alignLeft" style="text-align: left">
						<a href="#" style="color: black; text-style: bold;" data-toggle="modal"
						data-target="#staticBackdrop2">
						[입점할인] 스터드키링_TEST</a><br>
						<label style="text-align: center; background-color: #5EC75E; width: auto; margin-bottom: 0rem; color: white">
							<i class="fas fa-tags"></i>10%
						</label>
					</div>
					<div class="alignRight" style="text-align: right">
						<br> <label style="text-decoration: line-through; margin-bottom: 0rem">10,000원</label>
						<br> <label style="margin-bottom: 0rem; color: #28E7FF">9,000원</label>
					</div>
				</td>
				<td>19000원</td>
				<td>10000원</td>
				<td>1</td>
				<td>6</td>
				<td>1</td>
				<td>334</td>
				<td><button id="update" type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#staticBackdrop">수정</button></td>
			</tr>

		</table>
	</div>
					<!-- 테이블 끝 -->
<div class="modal fade" id="staticBackdrop" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document" style="max-width:1000px;">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="staticBackdropLabel">강의수정</h5>
					<button type="button" class="close" data-dismiss="modal"aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
									<!-- 강의 정보 -->
			</div>
			<table class="basicInfoTable"style="padding: 1%; margin: 1%;">
				<tr style="border-bottom: 1px solid #ABABAB; padding: 1%; margin: 1%;">
					<td style="border-right: 1px solid #ABABAB;">사진등록</td>
					<td><input type="file" id="image" accept="image/*"onchange="setThumbnail(event);" multiple />
						<div class="imageContainer"></div>
					</td>
				</tr>
				<tr style="border-bottom: 1px solid #ABABAB; padding: 1%;margin: 1%;">
					<td style="border-right: 1px solid #ABABAB;">강의명</td>
					<td>
						<div>
							<input type="text" id="workName" maxlength="20"autocomplete="off"> 
							<span id="nameCounter"></span>
						</div>
					</td>
				</tr>
				<tr style="border-bottom: 1px solid #ABABAB; padding: 1%;margin: 1%;">
					<td  style="border-right: 1px solid #ABABAB;">가격</td>
					<td><input type="text" id="workPrice" autocomplete="off">원</td>
				</tr>
				<tr style="border-bottom: 1px solid #ABABAB; padding: 1%;">
					<td  style="border-right: 1px solid #ABABAB;">할인</td>
					<td><input type="checkbox"> 할인 후 가격
						<input type="text" id="salePrice" autocomplete="off"> 원
					</td>
				</tr>
				<tr style="border-bottom: 1px solid #ABABAB; padding: 1%;margin: 1%;">
					<td  style="border-right: 1px solid #ABABAB;">최대인원</td>
					<td>
						<button id="wonMinusButton"onclick="wonMinusButton()" style="border: 1px solid #ddd;">
							<span style="border-color: #ABABAB;">-</span>
						</button> 
						<input id="wonAuctionAmount"style="width: 10%; text-align: center;" value="1" readonly>
						<button id="wonPlusButton" onclick="wonPlusButton()" style="border: 1px solid #ddd;">
							<span style="border-color: #ABABAB;">+</span>
						</button> 명</td>
				</tr>
				<tr style="border-bottom: 1px solid #ABABAB; padding: 1%;margin: 1%;">
					<td style="border-right: 1px solid #ABABAB;">날짜</td>
					<td><input type="date" id="num"> &nbsp;~&nbsp; 
					<input type="date" id="num"></td>
				</tr>
				<tr style="border-bottom: 1px solid #ABABAB; padding: 1%;margin: 1%;">
					<td style="border-right: 1px solid #ABABAB;">요일</td>
					<td>
						<input type="checkbox" value="mon">월&nbsp; 
						<input type="checkbox" value="tue">화&nbsp; 
						<input type="checkbox" value="wed">수&nbsp; 
						<input type="checkbox" value="thu">목&nbsp; 
						<input type="checkbox" value="fri">금&nbsp; 
						<input type="checkbox" value="sat">토&nbsp; 
						<input type="checkbox" value="son">일</td>
				</tr>
				<tr style="border-bottom: 1px solid #ABABAB; padding: 1%;margin: 1%;">
					<td style="border-right: 1px solid #ABABAB;">시간</td>
					<td>
						<input type="time" id="num">&nbsp;~&nbsp;
						<input type="time">
					</td>
				</tr>
				<tr style="border-bottom: 1px solid #ABABAB; padding: 1%; margin: 1%;">
					<td style="border-right: 1px solid #ABABAB;">강의설명</td>
					<td style="padding: 1%;margin: 1%;"><textarea rows="4" cols="80" style="overflow-y: scroll;" placeholder="작품 설명을 적어주세요."></textarea></td>
				</tr>
				<tr style="padding: 1%; margin: 1%;">
					<td style="border-right: 1px solid #ABABAB;">카테고리</td>
					<td>
						<form action="#" class="category_search">
							<select name="category" id="category_id">
								<option value="crafts">공예</option>
									<option value="cook">요리</option>
									<option value="art">미술</option>
									<option value="flower">플라워</option>
									<option value="beauty">뷰티</option>
									<option value="exp">체험 및 기타</option>
							</select>
						</form>
					</td>
				</tr>
			</table>
				<div class="modal-footer" style="display: flex; flex-direction: column;">
						<button class="close" data-dismiss="modal"aria-label="Close">수정완료</button>
				</div>
		</div>
	</div>
</div>
<!-- end of 수정 modal -->

<!-- 강의정보 modalList -->
<div class="modal fade" id="staticBackdrop2" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document" style="max-width:1000px;">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="staticBackdropLabel">강의정보</h5>
					<button type="button" class="close" data-dismiss="modal"aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
									<!-- 강의 정보 -->
			</div>
			<!-- header -->
			<!-- body -->
			
			<!-- end body -->
				<div class="modal-footer" style="display: flex; flex-direction: column;">
						<button data-dismiss="modal"aria-label="Close">닫음</button>
				</div>
		</div>
	</div>
</div>
<!-- listModal end -->
					<!-- 아래 버튼 -->
	<div class="bottomLine">
	<button class="button" id="selectTotal" type="button"><input type="checkbox">전체선택</button>
	<button class="button" id="pauseSales" type="button">강의 중지</button>
	<button class="button" id="deleteWork" type="button">강의 삭제</button>
	</div>
	<!-- 아래 버튼 끝 -->
	<!-- 페이징 처리 -->
	 <div class="paging">
	   <a class="arrow prev" href="#">이전</a>
        <a href="#">1</a>
       <a class="arrow next" href="#">다음</a>
    </div>

            <%@ include file="/view/include/footer.jsp" %>
            <!-- end footer -->
        
            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top"> <i
               class="fas fa-angle-up"></i>
            </a>

            <script src="<c:url value='/vendor/jquery/jquery.min.js'/>"></script>
            <script src="<c:url value='/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

            <!-- Core plugin JavaScript-->
            <script src="<c:url value='/vendor/jquery-easing/jquery.easing.min.js'/>"></script>

 

         </div> <!-- end of content -->
      </div>
   </div>
</body>
</html>