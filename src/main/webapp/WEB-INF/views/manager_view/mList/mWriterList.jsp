<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>보물섬(관리자) | 작가목록</title>

  <!-- Custom fonts for this template-->
  <link href="<c:url value='/resources/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

   <!-- Custom fonts for this template -->
   <link href="<c:url value='/resources/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet" type="text/css">
   <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
 
   <!-- Custom styles for this template -->
   <link href="<c:url value='/resources/css/sb-admin-2.min.css'/>" rel="stylesheet">
 
   <!-- Custom styles for this page -->
   <link href="<c:url value='/resources/vendor/datatables/dataTables.bootstrap4.min.css'/>" rel="stylesheet">


<style>
#content {
	width: 100%;
}

.dain-td1 {
	width: 10%;
	text-align: center;
	vertical-align: middle !important;
}

.dain-td2 {
	vertical-align: middle !important;
}

.dain-td3 {
	vertical-align: middle !important;
}

.dain-td4 {
	vertical-align: middle !important;
}

.dain-td5 {
	text-align: center;
	vertical-align: middle !important;
}

</style>
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">
<%@ include file="../include/mSide.jsp" %>
      <!-- Main Content -->
      <div id="content">
		<%@ include file="../include/mheader.jsp" %>
 
     <!--여기에 내용 넣기-->
    <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">작가목록</h1>
          <p class="mb-4">현재 가입 되어있는 작가 목록입니다.</p>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">작가 목록</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>작가코드</th>
                      <th>작가명</th>
                      <th>브랜드명</th>
                      <th>이메일 </th>
                      <th>전화번호 </th>
                      <th>작가홈</th>
                      <th>보유 gem포인트</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach items='${writerList}' var="writer">
                    <tr>
                      <td>${writer.writer_code_seq}</td>
                      <td>${writer.writer_name}</td>
                      <td>${writer.writer_brand_name}</td>
                      <td>${writer.writer_email}</td>
                      <td>${writer.writer_phone}</td>
                      <td>${writer.writer_url}</td>
                      <td>${writer.gem_price}</td>
                    </tr>
                    </c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->


    </div>
    <%@ include file="../include/mfooter.jsp" %>
    <!-- End of Content Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  
 	<!-- Bootstrap core JavaScript-->
	<script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/> "></script>
	<script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/> "></script>

	<!-- Core plugin JavaScript-->
	<script src="<c:url value='/resources/vendor/jquery-easing/jquery.easing.min.js'/> "></script>

	<!-- Custom scripts for all pages-->
	<script src="<c:url value='/resources/js/sb-admin-2.min.js'/> "></script>

	<!-- Page level plugins -->
	<script src="<c:url value='/resources/vendor/chart.js/Chart.min.js'/> "></script>

	<!-- Page level custom scripts -->
	<script src="<c:url value='/resources/js/demo/chart-area-demo.js'/> "></script>
	<script src="<c:url value='/resources/js/demo/chart-pie-demo.js'/> "></script>

</body>

</html>