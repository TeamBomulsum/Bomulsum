<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매 후기</title>
<link href="<c:url value='/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="<c:url value='/resources/css/sb-admin-2.min.css'/>" rel="stylesheet">
<!-- CSS 영역 -->
<style>
.reviewContainer {
	width: 90%;
	margin-left: 2%;
}

.topLine {
	height: 40px;
}

.button {
	background-color: white;
	color: black;
	border: 1px solid #008CBA;
	text-align: center;
	padding: 2%, 2%;
}

.registerButton {
	float: right;
}

.textTitle {
	float: left;
}

.reviewTitle {
	float: center;
}

.table {
	margin-top: 10px;
	text-align: center;
	vertical-align: middle;
	text-valign: middle;
	width: 100%;
	table-layout: fixed;
}

.table td {
	margin-top: 10px;
	text-align: center;
	vertical-align: middle;
	text-valign: middle;
	font-size: 13px
}

.alignLeft {
	float: left;
}

.alignRight {
	float: right;
}

.formAction {
	float: right;
}

form {
	display: inline;
}

.paging {
	margin-top: 20px;
	text-align: center;
	margin-bottom: 100px;
}

.paging a {
	display: inline-block;
	margin: 0 3px;
	text-decoration: none;
	padding: 5px 10px;
	border: 1px solid #ccc;
	color: #999999;
	background-color: #fff;
}

.arrow prev {
	border: 0px;
}

.arrow next {
	border: 0px;
}

.modal-body-top {
	display: inline-block;
	height: 15%;
	width: 90%;
	margin: 5% auto;
}

.textwrap {
	height: auto;
	position: relative;
	display: inline-block;
}

.textwrap textarea {
	height: auto;
	width: 100%;
	resize: none;
	min-height: 4.5em;
	line-height: 1.6em;
	max-height: 9em;
}

.textwrap span {
	position: absolute;
	bottom: 5px;
	right: 5px;
}

#counter {
	background: rgba(255, 0, 0, 0.5);
	border-radius: 0.5em;
	padding: 0 .5em 0 .5em;
	font-size: 0.75em;
}
</style>
</head>
<!-- body 시작 -->
<body id="page-top">
	<div id="wrapper">
		<!-- Header/Nav -->
		<%@ include file="/view/include/side.jsp"%>
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<%@ include file="/view/include/head.jsp"%>
				<!-- end Header/Nav -->
				<!-- 구매 후기 영역 -->
				<div class="reviewContainer">
					<!-- topLine -->
					<div class="topLine">
						<div class="textTitle">
							<h4>구매 후기</h4>
						</div>
					</div>
					<!-- end of topLine -->
					<hr>
					<div class="middleLine">
						<!-- <form class="search" action="#"> -->
						<input type="text" placeholder="작품명을 입력하세요" name="search"
							id="search">
						<!-- <button class="button" type="submit">검색</button> -->
						<!-- </form> -->

						<div class="formAction">
							<select name="rowPerPage" id="rowPerPage">
								<option value="10">10개씩 보기</option>
								<option value="30">30개씩 보기</option>
								<option value="50">50개씩 보기</option>
							</select>
						</div>
					</div>

					<!-- middleLine -->
					<!-- 테이블 시작 -->
					<div class="table">
						<table id="reviewTable" style="width: 100%;">
							<thead>
								<tr>
									<th style="width: 10%;">작성일자</th>
									<th style="width: 20%;">작품명</th>
									<th style="width: 10%;">작성자</th>
									<th style="width: 10%;">별점</th>
									<th style="width: 15%;">사진</th>
									<th style="width: 35%;">내용</th>
								</tr>
							</thead>
							<tbody id="reviewBody"
								style="font-size: 13px; vertical-align: middle;">
								<!-- 구매후기 DB 불러오기 -->
								<tr>
									<td>2020-07-16</td>
									<td>"쌍코피 빵터지는"소주병 케이크</td>
									<td>참이슬</td>
									<td>★☆☆☆☆</td>
									<td><img
										style="overflow: hidden; align-items: center; justify-content: center; width: 75px; height: 75px"
										src="<c:url value='/resources/img/cake.jpg'/>" /></td>
									<!-- 댓글 내용 눌렀을 때 모달 띄워주는 부분 -->
									<td>
										<!-- 후기 내용 -->
										<div type="button" data-toggle="modal"
											data-target="#staticBackdrop">소주병을 시켰는데 쵸코케잌이 왔네요? 당장
											환불해주세요. 초코 알레르기 있는 사람입니다. 기쁜 마음으로 받았다가 응급실 실려갈 뻔 했어요. 사람 잡는
											케잌이네요. 그래서 쌍코피 빵 터지는 소주병 케잌인가요?</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- 테이블 끝 -->

					<!-- 페이징 처리 -->
					<div class="paging" id="pagination">
						<!-- <a class="arrow prev" href="#">이전</a><a href="#">1</a><a class="arrow next" href="#">다음</a> -->
					</div>
				</div>

				<!-- 모달 내용 부분 -->
				<!-- 정적 모달 내용 -->
				<div class="modal fade" id="staticBackdrop" data-backdrop="static"
					tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"
					aria-hidden="true">
					<div class="modal-dialog" role="document" style="">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="staticBackdropLabel">후기 - 댓글 작성</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body" style="height: 260px">
								<div style="margin-left: 15%; margin-right: 15%;">
									<div
										style="width: 100%; height: 50px; display: flex; flex-direction: row;">
										<div
											style="width: 50%; display: flex; flex-direction: column;">
											<div style="font-size: 13px; margin-bottom: 1%;">참이슬</div>
											<div style="font-size: 13px;">2020-07-16</div>
										</div>
										<div style="float: right; width: 50%">
											<div style="float: right;">
												<a href="#"><div class="button" style="font-size: 13px;">메시지</div></a>
											</div>
										</div>
									</div>
									<div
										style="width: 100%; height: 50px; display: flex; flex-direction: row; border: 1px solid;">
										<div style="margin-top: 2%; margin-bottom: 2%; width: 15%;">
											<img style="overflow: hidden; align-items: center; 
											justify-content: center; width: 40px; height: 40px"
												src="<c:url value='/resources/img/cake.jpg'/>" />
										</div>
										<div style="dispaly: flex; flex-direction: column;">
											<div style="font-size: 15px;">"쌍코피 빵터지는"소주병 케이크</div>
											<div style="font-size: 10px; margin-top: 3%;">옵션 없음 0</div>
										</div>
									</div>
									<div style="margin-top: 5%;">
										<div
											style="margin-left: auto; margin-right: auto; display: flex; flex-direction: column;">
											<div style="font-size: 13px;">★☆☆☆☆</div>
											<div
												style="margin-top: 5%; margin-left: auto; margin-right: auto; font-size: 13px;">
												소주병을 시켰는데 쵸코케잌이 왔네요? 당장 환불해주세요. 초코 알레르기 있는 사람입니다. 기쁜 마음으로
												받았다가 응급실 실려갈 뻔 했어요. 사람 잡는 케잌이네요. 그래서 쌍코피 빵 터지는 소주병 케잌인가요?</div>
										</div>
									</div>
								</div>
							</div>
							<div class="modal-footer"
								style="display: flex; flex-direction: column;">
								<!-- 글자수 채워지는거 기능 추가 해야 함 -->
								<div style="display: flex; flex-direction: row; width: 100%;">
									<form style="display: flex; flex-direction: row; width: 100%;">
										<div class="textwrap" style="display: flex; width: 85%;">
											<textarea id="comment" placeholder="댓글을 남겨 주세요."
												maxlength="1000"
												style="width: 100%; resize: none; font-size: 13px"></textarea>
											<span id="counter" style="display: flex; position: absolute;">###</span>
										</div>
										<div style="display: flex; width: 10%; margin: 2%">
											<input type="submit" class="btn btn-primary" value="등록">
										</div>
									</form>
								</div>
								<div>
									<label
										style="font-size: 13px; margin-top: auto; margin-bottom: 3%; margin-left: auto; margin-right: auto;">댓글을
										작성하면 작성자에게 푸시로 알려드립니다.</label>
								</div>
							</div>
						</div>
						<!-- end for modal content -->
					</div>
					<!-- end for modal dialog -->
				</div>
				<!-- end for modal fade-->


				<!-- end of Container -->
				<%@ include file="/view/include/footer.jsp"%>
				<!-- end footer -->

				<!-- Scroll to Top Button-->
				<a class="scroll-to-top rounded" href="#page-top"> <i
					class="fas fa-angle-up"></i>
				</a>

				<script src="<c:url value='/vendor/jquery/jquery.min.js'/>"></script>
				<script src="<c:url value='/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

				<!-- Core plugin JavaScript-->
				<script src="<c:url value='/vendor/jquery-easing/jquery.easing.min.js'/>"></script>

				<!-- Custom scripts for all pages-->
				<script src="<c:url value='/resources/js/sb-admin-2.min.js'/>"></script>
				<script>
					$(function() {
						$('#comment').keyup(function(e) {
						var comment = $(this).val();
						$(this).height(((comment.split('\n').length + 1) * 1.5) + 'em');
						$('#counter').html(comment.length + '/1000');
						});
						$('#comment').keyup();
					});
					
					//테이블 데이터 넣어주기 
					var vlist =[];
					for (var i = 0; i<100; i++){
						vlist.push({onetd:'2020-07-01',twotd:'삼장법사도 먹는 슈퍼 딸기 케이크\t'+i,threetd:'손오공',fourtd:'★★☆☆☆',fivetd:'<img style="overflow: hidden; align-items: center; justify-content: center; width: 75px; height: 75px" src="<c:url value='/resources/img/cake.jpg'/>"/>',sixtd:'<div type="button" data-toggle="modal" data-target="#staticBackdrop"> 소주병을 시켰는데 쵸코케잌이 왔네요? 당장 환불해주세요. 초코 알레르기 있는 사람입니다. 기쁜 마음으로 받았다가 응급실 실려갈 뻔 했어요. 사람 잡는 케잌이네요. 그래서 쌍코피 빵 터지는 소주병 케잌인가요? </div>'});
					}
					
					// 초기 테이블 보여줄 행 카운트값 설정
					var pageCount = 10;
					
					//페이징 처리 함수..
					var pagingFunc = function(){
						pageCount = $("#rowPerPage").val();
						var table = document.getElementById("reviewTable");
	              		//var pageCount = document.getElementById("rowPerPage").value;
		                var blockCount = 3;
		                
		                var totalPage = Math.ceil(vlist.length / pageCount); // 총 행수에서 목록 보기 선택한 값으로 몇개씩 볼지 ~
		                var totalBlock = Math.ceil(totalPage / blockCount); // 페이지
		                
		                var pagination = document.getElementById('pagination');
		                var commentsTable = document.getElementById('reviewTable').querySelector('tbody');
		                
		                var renderTableAndPagination = function(page = 1){
		                   renderTable(page);
		                   renderPagination(page);
		                };
		                
		                var renderTable = function(page){
		                   var startNum = (pageCount * (page - 1));
		                   var endNum = ((pageCount * page) >= vlist.length) ? vlist.length : (pageCount * page);
		                   
		                   var html = '';
		                   
		                   for(var index = startNum; index < endNum; index++){
		                	   html += '<tr><td>' + vlist[index].onetd + '</td><td name>' + vlist[index].twotd 
		                	   + '</td><td>' + vlist[index].threetd + '</td><td>' + vlist[index].fourtd 
		                	   + '</td><td>' + vlist[index].fivetd + '</td><td>' + vlist[index].sixtd 
		                	   + '</td></tr>';
		                   }
		                   commentsTable.innerHTML = html;
		                };

		                var renderPagination = function(page){
		                   var block = Math.floor((page-1)/blockCount)+1;
		                   var startPage = ((block-1)*blockCount)+1;
		                   var endPage = ((startPage + blockCount - 1) > totalPage) ? totalPage : (startPage + blockCount - 1);
		                  
		                   var paginationHTML = '';
		                  
		                   if(page !== 1) paginationHTML += "<a style='cursor:pointer' class='first_page'>처음</a>";
		                   if(block !== 1) paginationHTML += "<a style='cursor:pointer' class='back_page'>이전</a>";
		                  
		                   for(var index = startPage; index <= endPage; index++){
		                      paginationHTML += (parseInt(page) === parseInt(index)) ? "| <a style='color:#ff8400'>" + index + "</a> |" :"| <a style='cursor:pointer' class='go_page' data-value='" + index + "'>" + index + "</a> |";
		                   }
		                  
		                   if(block < totalBlock) paginationHTML += "<a style='cursor:pointer' class='next_page'>다음</a>";
		                   if(page < totalPage) paginationHTML += "<a style='cursor:pointer' class='last_page'>끝</a>";
		               
		                   pagination.innerHTML = paginationHTML;
		                   addEventPagination(startPage, endPage);
		                };
		               
		                var addEventPagination = function(startPage, endPage){
		                  if(!!document.querySelector(".first_page")){
		                     document.querySelector(".first_page").addEventListener('click', ()=>{
		                        renderTableAndPagination(1);
		                     });
		                  }
		                  if(!!document.querySelector(".back_page")){
		                     document.querySelector(".back_page").addEventListener('click', ()=>{
		                        renderTableAndPagination(startPage-1);
		                     });
		                  }
		                  document.querySelectorAll(".go_page").forEach(goPage => {
		                     goPage.addEventListener('click', e => {
		                        renderTableAndPagination(parseInt(e.target.getAttribute('data-value')));
		                     });
		                  });
		                  if(!!document.querySelector(".next_page")){
		                     document.querySelector(".next_page").addEventListener('click', ()=>{
		                        renderTableAndPagination(endPage+1);
		                     });
		                  }
		                  if(!!document.querySelector(".last_page")){
		                     document.querySelector(".last_page").addEventListener('click', ()=>{
		                        renderTableAndPagination(totalPage);
		                     });
		                  }
		               };
		               renderTableAndPagination();
					}
					
					//페이지 세팅을 위한 페이징 처리 함수 호출
					$(document).ready(function(){
						pagingFunc();
						$("#rowPerPage").change(function(){
							pagingFunc();
						});
			            $("#search").keyup(function() {
			                var k = $(this).val();
			                $("#reviewtable > tbody > tr").hide();
			                var temp = $("#reviewtable > tbody > tr > td:nth-child(5n+2):contains('" + k + "')");

			                $(temp).parent().show();
			            })
					});
					
				</script>
			</div>
			<!-- end of content -->
		</div>
	</div>
</body>
</html>