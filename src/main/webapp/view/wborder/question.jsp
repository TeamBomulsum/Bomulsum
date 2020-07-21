<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>게시판 - 자주 묻는 질문</title>

  <!-- Custom fonts for this template -->
  <link href="<c:url value='/vendor/fontawesome-free/css/all.min.css' /> " rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="<c:url value='/css/sb-admin-2.min.css'/> " rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="<c:url value='/vendor/datatables/dataTables.bootstrap4.min.css' /> " rel="stylesheet">

</head>
<div style="float: left;">
		<%@ include file="/view/include/side.jsp" %>
	</div>
	<%@ include file="/view/include/head.jsp" %>
        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
         

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h3 class="m-0 font-weight-bold text-primary">자주 묻는 질문</h3>
            </div>
            <div class="card-body">
              <div class="table-responsive" style="scroll:no; overflow:hidden;">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr style="text-align:center">
                      <th style="width:80%">제목</th>
                      <th style="width:20%;">등록날짜</th>
                    </tr>
                  </thead>
               
                  <tbody>
                     <tr>
                      <td>제목입니다</td>
                      <td>2010/07/14</td>
                    </tr>
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
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

<%@ include file="/view/include/footer.jsp" %>

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

  <!-- Bootstrap core JavaScript-->
  <script src="<c:url value='/vendor/jquery/jquery.min.js'/> " ></script>
  <script src="<c:url value='/vendor/bootstrap/js/bootstrap.bundle.min.js'/> "></script>

  <!-- Core plugin JavaScript-->
  <script src="<c:url value='/vendor/jquery-easing/jquery.easing.min.js'/> "></script>

  <!-- Custom scripts for all pages-->
  <script src="<c:url value='/resources/js/sb-admin-2.min.js'/> "></script>

  <!-- Page level plugins -->
  <script src="<c:url value='/vendor/datatables/jquery.dataTables.min.js'/> "></script>
  <script src="<c:url value='/vendor/datatables/dataTables.bootstrap4.min.js'/> "></script>

  <!-- Page level custom scripts -->
  <script src="<c:url value='/resources/js/demo/datatables-demo.js' /> "></script>

</body>

</html>