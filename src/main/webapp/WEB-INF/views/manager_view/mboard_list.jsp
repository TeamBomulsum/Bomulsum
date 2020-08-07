<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>보물섬(관리자) | 게시판 목록</title>

<link
	href="<c:url value='/resources/css/summernote/summernote-lite.css'/>"
	rel="stylesheet" type="text/css">
<!-- Custom fonts for this template-->
<link
	href="<c:url value='/resources/vendor/fontawesome-free/css/all.min.css'/>"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="<c:url value='/resources/css/sb-admin-2.min.css' />"
	rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="<c:url value='/resources/vendor/datatables/dataTables.bootstrap4.min.css' />"
	rel="stylesheet">

<!--minwoo style-->
<style>
.minwoo_table_table_bordered_head tr th {
	text-align: center;
	vertical-align: middle;
}

.minwoo_table_table_bordered_body tr td {
	text-align: center;
	vertical-align: middle;
}

.minwoo_table_table_bordered_body tr td:nth-child(1) {
	width: 20%;
}

.minwoo_table_table_bordered_body tr td:nth-child(3) {
	width: 15%;
}

.openUpdateModal {
	cursor: pointer;
}

.paging{
	text-align: center;
	font-size: 18px;
}

.minwoo_tableBottomLine{
	margin-top: 20px;
	text-align: center;
	margin-bottom: 20px;
	font-size: 18px;
	display:flex;
	justify-content: space-between;
}
</style>




</head>

<body id="page-top">

	<c:if test="${param.check eq 1}">
		<script type="text/javascript">
			alert("글이 수정 되었습니다.");
			location.href = "/bomulsum/mboard/list.mdo";
		</script>
	</c:if>

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">
					Admin <sup>2</sup>
				</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Interface</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-cog"></i> <span>게시판</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="#">게시판 목록</a> <a
							class="collapse-item" href="#">게시판 등록</a>
					</div>
				</div></li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#salseNcoupone"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-wrench"></i> <span>매출</span>
			</a>
				<div id="salseNcoupone" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="#">매출통계</a>
					</div>
				</div></li>

			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#memberList"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-wrench"></i> <span>회원관리</span>
			</a>
				<div id="memberList" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="#">작가목록</a> <a
							class="collapse-item" href="#">회원목록</a> <a class="collapse-item"
							href="#">작가회원 로그 페이지</a>
					</div>
				</div></li>
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#productManage"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-wrench"></i> <span>상품관리</span>
			</a>
				<div id="productManage" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="#">작품</a> <a class="collapse-item"
							href="#">금손클래스</a>
					</div>
				</div></li>
			<li class="nav-item"><a class="nav-link" href="#"> <i
					class="fas fa-fw fa-chart-area"></i> <span>신고내용 관리</span></a></li>
			<li class="nav-item"><a class="nav-link" href="#"> <i
					class="fas fa-fw fa-chart-area"></i> <span>관리자계정 추가</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">



			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item active"><a class="nav-link" href="#"
				data-toggle="collapse" data-target="#collapsePages"
				aria-expanded="true" aria-controls="collapsePages"> <i
					class="fas fa-fw fa-folder"></i> <span>Pages</span>
			</a>
				<div id="collapsePages" class="collapse show"
					aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="login.html">로그인</a> <a
							class="collapse-item" href="register.html">등록하기</a> <a
							class="collapse-item" href="forgot-password.html">비밀번호 찾기</a>
						<div class="collapse-divider"></div>
					</div>
				</div></li>



			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages --></li>

						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">관리자
									이름</span>
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> 프로필
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> 활동로그보기
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> 로그아웃
								</a>
							</div></li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- 내용추가하기 -->

				<!--민우 내용 추가한 부분 시작-->
				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">게시판</h1>
					<p class="mb-4">회원 / 작가들을 위한 안내 게시판 입니다.</p>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">글 목록</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable">
									<thead class="minwoo_table_table_bordered_head">
										<tr>
											<th>게시판 이름</th>
											<th>글 제목</th>
											<th>등록 날짜</th>
										</tr>
									</thead>
									<tbody class="minwoo_table_table_bordered_body">
										<%-- <c:forEach var="i" items="${mboardList}">
											<tr>
												<td>${i.admin_notice_category}</td>
												<td data-toggle="modal" data-target="#staticBackdrop2" class="openUpdateModal">${i.admin_notice_title}</td>
												<td>${i.admin_notice_date}
													<div style="display:none;">${i.admin_notice_seq}</div>
													<div style="display:none;">${i.admin_notice_content}</div>
													<div style="display:none;">${i.admin_notice_coupon}</div>
												</td>
											</tr>
										</c:forEach> --%>
									</tbody>
								</table>
							</div>
							<div id="pagination"></div>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
				<!--민우 내용 추가한 부분 종료-->


				<!-- Footer -->
				<footer class="sticky-footer bg-white">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>보물섬 &copy; 2020</span>
						</div>
					</div>
				</footer>
				<!-- End of Footer -->

			</div>
			<!-- end main content -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>


	<!-- detail content modal -->
	<div class="modal fade" id="staticBackdrop2" data-backdrop="static"
		tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"
		aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document"
			style="max-width: 1000px;">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal-category"></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div
					style="display: flex; border-bottom: 1px solid #d9d9d9; height: 50px; margin: 12px 30px 6px 30px; align-items: center;">
					<div id="staticBackdropTitle"
						style="font-weight: bold; font-size: 18px; color: #4273df;">
						제목 : <input type="text" id="modal-title" style="color: #858796;"
							readonly="readonly">
					</div>
				</div>

				<!-- body -->
				<div id="staticBackdropContent"
					style="height: 400px; margin: 20px 30px 12px 30px;">
					<div
						style="height: 350px; border: 1px solid #d9d9d9; overflow: scroll; overflow-x: hidden; padding: 1%;">
						<div id="modal-content"></div>
					</div>
				</div>
				<div style="display: none;" id="modal-date"></div>
				<div style="display: none;" id="modal-coupon"></div>
				<div class="modal-footer"
					style="display: flex; justify-content: center;">
					<!-- 여기서 글 수정 버튼 누르면 rewrite.jsp로 해당 시퀀스 값 갖고 넘어갈거임-->
					<form action="<c:url value='/mboard/rewrite.mdo'/>" method="post">
						<input type="hidden" id="adminNoticeSeq" name="adminNoticeSeq" />
						<input type="submit" style="font-size: 50%; margin: 10px;"
							class="btn btn-primary" value="수정">
						<button style="font-size: 50%; margin: 10px;"
							class="btn btn-primary" data-dismiss="modal" aria-label="Close">닫기</button>
						<button type="button"
							style="font-size: 50%; margin: 10px; background-color: #dd3333; color: #ffffff;"
							class="btn btn-primary" id="delete_btn">삭제</button>
					</form>
				</div>
			</div>


		</div>
	</div>
	<!-- detail content  modal end -->


	<!-- Bootstrap core JavaScript-->
	<script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
	<script
		src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="<c:url value='/resources/vendor/jquery-easing/jquery.easing.min.js' /> "></script>

	<!-- Custom scripts for all pages-->
	<script src="<c:url value='/resources/js/sb-admin-2.min.js' /> "></script>

	<!-- Page level plugins -->
	<script
		src="<c:url value='/resources/vendor/datatables/jquery.dataTables.min.js' /> "></script>
	<script
		src="<c:url value='/resources/vendor/datatables/dataTables.bootstrap4.min.js' /> "></script>

	<!-- Page level custom scripts -->
	<script src="<c:url value='/resources/js/demo/datatables-demo.js' /> "></script>

	<!-- 썸머노트 -->
	<script
		src="<c:url value='/resources/js/summernote/lang/summernote-ko-KR.js'/>"></script>
	<script
		src="<c:url value='/resources/js/summernote/summernote-lite.js'/>"></script>


	<script>
	/* $(function(){
		
		$('.openUpdateModal').click(function() {
			const param = $.trim($(this).closest('tr').children('td').children('div').eq(0).text());
			console.log('param : ', param);

			
			$.ajax({
				url: "${pageContext.request.contextPath}"+"/writer/announcementArticle.wdo", //클라이언트가 HTTP 요청을 보낼 서버의 URL 주소
				data:   {"admin_notice_seq" : param}, //HTTP 요청과 함꼐 서버로 보낼 데이터
				method: "GET", // HTTP 요청 메소드 (GET , POST 등)
				dataType: "json",
				success: function(data){
					const jsData = data;
					console.log(data);
					console.log(jsData);
					
					function getFormatDate(date){
					    var year = date.getFullYear() + " 년 ";              //yyyy
					    var month = (1 + date.getMonth());          //M
					    month = month >= 10 ? month : '0' + month + " 월 ";  //month 두자리로 저장
					    var day = date.getDate();                   //d
					    day = day >= 10 ? day : '0' + day + " 일";          //day 두자리로 저장
					    return  year + '' + month + '' + day;       //'-' 추가하여 yyyy-mm-dd 형태 생성 가능
					}
					
					
					var timestamp = jsData.admin_notice_date;
					var date = new Date(timestamp);
					
					date = getFormatDate(date);
					
					
					$('#staticBackdropTitle').text(jsData.admin_notice_title);
					$('#staticBackdropCategory').text(jsData.admin_notice_category);
					$('#staticBackdropContent').text(jsData.admin_notice_content);
					$('#staticBackdropRegDate').text(date);
					$('#staticBackdropCopoun').text(jsData.admin_notice_coupon);
				}
			});
		});
	}); */
	
	var mboardResult = new Array();
    
    <c:forEach var="i" items='${mboardList}'>
       var json = new Object();
       json.admin_notice_seq = '${i.admin_notice_seq}';
       json.admin_notice_date = '${i.admin_notice_date}';
       json.admin_notice_category = '${i.admin_notice_category}';
       json.admin_notice_title = '${i.admin_notice_title}';
       json.admin_notice_content = `${i.admin_notice_content}`;
       json.admin_notice_coupon = '${i.admin_notice_coupon}';
       mboardResult.push(json);
    </c:forEach>
		
	var pageCount = 10;
	var blockCount = 5; // 페이지 몇개를 하나의 그룹(?)으로 묶은  정의하는 블럭 개수
	var totalPage = Math.ceil(mboardResult.length / pageCount); // 총 페이지가 몇개 나올지 - 총 입력된 데이터의 개수에서 한페이지에 보여줄 글 목록 개수로 나눴다.
	var totalBlock = Math.ceil(totalPage / blockCount); // 총 블럭 개수가 몇개 나올지
	var pagination = document.getElementById('pagination');//페이징 기능 들어갈 영역(테이블 영역 아래)
	var testTable = document.getElementById('dataTable').querySelector("tbody");//데이터 들어있는 테이블
	//var originTable = document.getEmentByID
	var category;
	var title;
	var date;
	var seq;
	var content;
	var coupon;
	
	var renderTableAndPagination = function(page = 1){
	   renderTable(page);//테이블 그리는 함수
	   renderPagination(page);//페이징 처리 함수
	};
	
	/* var searchHtml = '';
		for(var i = 0; i<mboardResult.length; i++){
			searchHtml += '<tr><td>' + mboardResult[i].admin_notice_category 
	   			+ '</td><td data-toggle=\"modal\" data-target=\"#staticBackdrop2\" class=\"openUpdateModal\">'
	   			+ mboardResult[i].admin_notice_title + '</td><td>'
	   			+ mboardResult[i].admin_notice_date + '</td><td style="\display:none;\">'
	   			+ mboardResult[i].admin_notice_seq + '</td><td style=\"display:none;\">'
	   			+ mboardResult[i].admin_notice_content + '</td><td style=\"display:none;\">'
	   			+ mboardResult[i].admin_notice_coupon + '</td>'
		};
		originTable.innerHTML = searchHtml;	 */
	
	//테이블 그리는 함수
	var renderTable = function(page){
	   var startNum = (pageCount * (page - 1)); 
	   var endNum = ((pageCount * page) >= mboardResult.length) ? mboardResult.length : (pageCount * page);
	   
	   var html = '';
	   //여기서 만들어진 html 을 테이블 tbody 영역에 innerhtml 해줄거임.
	   for(var index = startNum; index < endNum; index++){
	   		html += '<tr><td>' + mboardResult[index].admin_notice_category 
	   			+ '</td><td data-toggle=\"modal\" data-target=\"#staticBackdrop2\" class=\"openUpdateModal\">'
	   			+ mboardResult[index].admin_notice_title + '</td><td>'
	   			+ mboardResult[index].admin_notice_date + '</td><td style="\display:none;\">'
	   			+ mboardResult[index].admin_notice_seq + '</td><td style=\"display:none;\">'
	   			+ mboardResult[index].admin_notice_content + '</td><td style=\"display:none;\">'
	   			+ mboardResult[index].admin_notice_coupon + '</td>'
		}
		testTable.innerHTML = html;
	};
          
    //pagination 그리는 함수
	var renderPagination = function(page){
		var block = Math.floor((page-1)/blockCount)+1;
		var startPage = ((block-1)*blockCount)+1;
		var endPage = ((startPage + blockCount - 1) > totalPage) ? totalPage : (startPage + blockCount - 1);
		            
		var paginationHTML = '';
		            
		if(page !== 1) paginationHTML += "<a style='cursor:pointer' class='first_page'>처음&nbsp;&nbsp;</a>";
		if(block !== 1) paginationHTML += "<a style='cursor:pointer' class='back_page'>이전...&nbsp;&nbsp;</a>";
		            
		for(var index = startPage; index <= endPage; index++){
			paginationHTML += (parseInt(page) === parseInt(index)) ? "| <a style='color:#ff8400'>" + index + "</a> |" :"| <a style='cursor:pointer' class='go_page' data-value='" + index + "'>" + index + "</a> |";
		}
		            
		if(block < totalBlock) paginationHTML += "<a style='cursor:pointer' class='next_page'>&nbsp;&nbsp;...다음</a>";
		if(page < totalPage) paginationHTML += "<a style='cursor:pointer' class='last_page'>&nbsp;&nbsp;끝</a>";
		       
		pagination.innerHTML = paginationHTML;
		addEventPagination(startPage, endPage);
	};
          
	//클릭이벤트, 클릭할 때마다 테이블을 새로 그려주는 거임
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
    
	
	
	 $(".openUpdateModal").on('click', function(){
		 console.log($(this).closest('tr').children('td').eq(3).text());
         category = $.trim($(this).closest('tr').children('td').eq(0).text());
         title = $.trim($(this).closest('tr').children('td').eq(1).text());
         date = $.trim($(this).closest('tr').children('td').eq(2).text());
         seq = $.trim($(this).closest('tr').children('td').eq(3).text());
         content = $.trim($(this).closest('tr').children('td').eq(4).text());
         coupon = $.trim($(this).closest('tr').children('td').eq(5).text());
        /*  var seq = $.trim($(this).closest('tr').children('td').children('div').eq(0).text());
         var content = $.trim($(this).closest('tr').children('td').children('div').eq(1).html());
         var  coupon = $.trim($(this).closest('tr').children('td').children('div').eq(2).text());*/
         console.log(coupon);
         console.log(seq);
         
         /*모달에 있는 삭제 버튼 누를 경우 시퀀스 값 가지고 delete.mdo?seq=~ url로 넘어간다. 컨트롤러에서 처리해주기.*/
         $("#delete_btn").click(function(){
            var chk = confirm("정말 삭제하시겠습니까?");
            if(chk){
               location.href='delete.mdo?adminNoticeSeq='+seq;
            }
         });
         
         if(coupon == '--'){ // 쿠폰 없을경우
            $('#modal-category').text(category);
            $('#modal-title').val(title);
            $('#modal-content').html(content);
            $('#modal-date').val(date);
            
            //여기서부턴 수정을 위한 인풋 히든 값 세팅
            $('#adminNoticeSeq').val(seq);
            $('#adminNoticeCoupon').val(coupon);
            $('#modal-coupon').css('display', 'none');
            
         }else{ // 쿠폰 잇을경우
            $('#modal-category').text(category);
            $('#modal-title').val(title);
            $('#modal-content').html(content);
            $('#modal-date').val(date);
            
            //여기서부턴 수정을 위한 인풋 히든 값 세팅
            $('#adminNoticeSeq').val(seq);
            $('#adminNoticeCoupon').val(coupon);
            
            //쿠폰 보기좋게 이름, 내용, 가격 으로 나눠주기
            var couponList = coupon.split('-');
            var couponName = couponList[0];
            var couponContent = couponList[1];
            var couponPrice = couponList[2];
            
            //모달에 display:none; 해놨던 쿠폰 영역 다시 오픈
            $('#modal-coupon').css('display', 'block');
            var html = "<span style='font-size:20px; font-weight:bold;'>&nbsp;쿠폰&nbsp;&nbsp;</span><br><span>&nbsp;쿠폰이름 :&nbsp;&nbsp;"+ couponName
                     + "&nbsp;&nbsp;</span><br>" + "<span>&nbsp;쿠폰내용 :&nbsp;&nbsp;"+couponContent + "&nbsp;&nbsp;</span>"
                     + "<br><span>&nbsp;쿠폰가격 :&nbsp;&nbsp;"+ couponPrice +"</span>";
            $('#modal-coupon').html(html);
   
         }   
      });
      //모달 끝

	
	</script>


</body>

</html>