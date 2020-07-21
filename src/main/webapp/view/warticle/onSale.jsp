<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매중 작품</title>
<link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
   type="text/css">
<link
   href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
   rel="stylesheet">
<!-- Custom styles for this template-->
<link href="../css/sb-admin-2.min.css" rel="stylesheet">
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
            <%@ include file="/view/include/footer.jsp" %>
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
				<option value="saleprice">할인가격</option>
				<option value="bookmark">즐겨찾기</option>
				<option value="comment">댓글</option>
				<option value="numberofsales">판매수</option>
				<option value="review">구매후기</option>
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
			<tr>
				<td><input type="checkbox"></td>
				<td><img style="overflow: hidden; align-items: center; justify-content: center; width: 75px; height: 75px"
					src="earings.jpg" /></td>
				<td colspan="3">
					<div class="alignLeft" style="text-align: left">
						<a href="#" style="color: black; text-style: bold;">
						<input type="checkbox" checked="checked" />[입점할인] 스터드키링_TEST</a> <br>0개남음<br>
						<label style="text-align: center; background-color: #5EC75E; width: auto; margin-bottom: 0rem; color: white">
							<i class="fas fa-tags"></i>10%
						</label>
					</div>
					<div class="alignRight" style="text-align: right">
						<br> <label style="text-decoration: line-through; margin-bottom: 0rem">10,000원</label>
						<br> <label style="margin-bottom: 0rem; color: #28E7FF">9,000원</label>
					</div>
				</td>
				<td>1</td>
				<td>10000원</td>
				<td>9000원</td>
				<td>6</td>
				<td>1</td>
				<td>334</td>
				<td>10</td>
				<td>0</td>
				<td><button id="update" type="button" onclick="alert('수정')">수정</button></td>
			</tr>

		</table>
	</div>
	<!-- 테이블 끝 -->
	
	<!-- 아래 버튼 -->
	<div class="bottomLine">
	0개
	<button class="button" id="selectTotal" type="button"><input type="checkbox">전체선택</button>
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

            <%@ include file="/view/include/footer.jsp" %>
            <!-- end footer -->
        
            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top"> <i
               class="fas fa-angle-up"></i>
            </a>

            <script src="../vendor/jquery/jquery.min.js"></script>
            <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

            <!-- Core plugin JavaScript-->
            <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

            <!-- Custom scripts for all pages-->
            <script src="../js/sb-admin-2.min.js"></script>

            <!-- Page level plugins -->
            <script src="../vendor/chart.js/Chart.min.js"></script>

            <!-- Page level custom scripts -->
            <script src="../js/demo/chart-area-demo.js"></script>
            <script src="../js/demo/chart-pie-demo.js"></script>
         </div> <!-- end of content -->
      </div>
   </div>
</body>
</html>