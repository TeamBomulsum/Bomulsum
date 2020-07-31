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

  <title>보물섬(관리자) | 작품관리</title>

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

    .dain-td1 {
        width: 10%;
        text-align: center;
        vertical-align: middle !important; 
    }
    .dain-td2{
        width: 30%;
        vertical-align: middle !important; 
        
    }
    .dain-td3{
        width: 30%;
        vertical-align: middle !important; 
    
    }
    .dain-td4{
        width: 20%;
        vertical-align: middle !important; 
    
    }
    .dain-td5{
        width: 10%;
        text-align: center;
        vertical-align: middle !important; 
    
    }
    
    .dain-table-img{
        width: 50px;
        height: 50px;
    
    }
    
    </style>
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Admin <sup>2</sup></div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Interface
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>게시판</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="#">게시판 목록</a>
            <a class="collapse-item" href="#">게시판 등록</a>
            <a class="collapse-item" href="#">알림 등록</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#salseNcoupone" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>매출</span>
        </a>
        <div id="salseNcoupone" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="#">매출통계</a>
          </div>
        </div>
      </li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#memberList" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>회원관리</span>
        </a>
        <div id="memberList" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="#">작가목록</a>
            <a class="collapse-item" href="#">회원목록</a>
            <a class="collapse-item" href="#">작가회원 로그 페이지</a>
          </div>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#productManage" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>상품관리</span>
        </a>
        <div id="productManage" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="#">작품</a>
            <a class="collapse-item" href="#">금손클래스</a>
          </div>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>신고내용 관리</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>관리자계정 추가</span></a>
      </li>

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
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">관리자 이름</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  프로필
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  활동로그보기
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  로그아웃
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

     <!--여기에 내용 넣기-->

       <!-- Begin Page Content -->
       <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">작품관리</h1>
        <p class="mb-4">작가가 등록한 작품을 관리할 수 있습니다. </p>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">작품 관리</h6>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th class="dain-th1">작품사진</th>
                    <th class="dain-th2">작품명 </th>
                    <th class="dain-th3">작가명 </th>
                    <th class="dain-th4">카테고리</th>
                    <th class="dain-th5">작품삭제</th>
                  </tr>
                </thead> 
                <tfoot>
                  <tr>
                    <th>작품사진</th>
                    <th>작품명</th>
                    <th>작가명</th>
                    <th>카테고리</th>
                    <th>작품삭제</th>
                  </tr>
                </tfoot>
                <tbody>
                
                  <tr>
                    <td class="dain-td1"><img class="dain-table-img" src="<c:url value='/resources/img/dog.jpg'/>"></td>
                    <td class="dain-td2">강아지 목줄</td>
                    <td class="dain-td3">핫도그씨</td>
                    <td class="dain-td4">악세서리</td>
                    <td class="dain-td5"><button class="btn btn-primary" >삭제</button></td>
                  </tr>
                  <tr>
                    <td class="dain-td1"><img class="dain-table-img" src="<c:url value='/resources/img/dog.jpg'/>"></td>
                    <td class="dain-td2">강아지 목줄</td>
                    <td class="dain-td3">핫도그씨</td>
                    <td class="dain-td4">악세서리</td>
                    <td class="dain-td5"><button class="btn btn-primary" >삭제</button></td>
                  </tr>
                  <tr>
                    <td class="dain-td1"><img class="dain-table-img" src="<c:url value='/resources/img/dog.jpg'/>"></td>
                    <td class="dain-td2">강아지 목줄</td>
                    <td class="dain-td3">핫도그씨</td>
                    <td class="dain-td4">악세서리</td>
                    <td class="dain-td5"><button class="btn btn-primary" >삭제</button></td>
                  </tr>
                  <tr>
                    <td class="dain-td1"><img class="dain-table-img" src="<c:url value='/resources/img/dog.jpg'/>"></td>
                    <td class="dain-td2">강아지 목줄</td>
                    <td class="dain-td3">핫도그씨</td>
                    <td class="dain-td4">악세서리</td>
                    <td class="dain-td5"><button class="btn btn-primary" >삭제</button></td>
                  </tr>
                  <tr>
                    <td class="dain-td1"><img class="dain-table-img" src="<c:url value='/resources/img/dog.jpg'/>"></td>
                    <td class="dain-td2">강아지 목줄</td>
                    <td class="dain-td3">핫도그씨</td>
                    <td class="dain-td4">악세서리</td>
                    <td class="dain-td5"><button class="btn btn-primary" >삭제</button></td>
                  </tr>
                  <tr>
                    <td class="dain-td1"><img class="dain-table-img" src="<c:url value='/resources/img/dog.jpg'/>"></td>
                    <td class="dain-td2">강아지 목줄</td>
                    <td class="dain-td3">핫도그씨</td>
                    <td class="dain-td4">악세서리</td>
                    <td class="dain-td5"><button class="btn btn-primary" >삭제</button></td>
                  </tr>
                  <tr>
                    <td class="dain-td1"><img class="dain-table-img" src="<c:url value='/resources/img/dog.jpg'/>"></td>
                    <td class="dain-td2">강아지 목줄</td>
                    <td class="dain-td3">핫도그씨</td>
                    <td class="dain-td4">악세서리</td>
                    <td class="dain-td5"><button class="btn btn-primary" >삭제</button></td>
                  </tr>
                  <tr>
                    <td class="dain-td1"><img class="dain-table-img" src="<c:url value='/resources/img/dog.jpg'/>"></td>
                    <td class="dain-td2">강아지 목줄</td>
                    <td class="dain-td3">핫도그씨</td>
                    <td class="dain-td4">악세서리</td>
                    <td class="dain-td5"><button class="btn btn-primary" >삭제</button></td>
                  </tr>
                  <tr>
                    <td class="dain-td1"><img class="dain-table-img" src="<c:url value='/resources/img/dog.jpg'/>"></td>
                    <td class="dain-td2">강아지 목줄</td>
                    <td class="dain-td3">핫도그씨</td>
                    <td class="dain-td4">악세서리</td>
                    <td class="dain-td5"><button class="btn btn-primary" >삭제</button></td>
                  </tr>
                  <tr>
                    <td class="dain-td1"><img class="dain-table-img" src="<c:url value='/resources/img/dog.jpg'/>"></td>
                    <td class="dain-td2">강아지 목줄</td>
                    <td class="dain-td3">핫도그씨</td>
                    <td class="dain-td4">악세서리</td>
                    <td class="dain-td5"><button class="btn btn-primary" >삭제</button></td>
                  </tr>
                  <tr>
                    <td class="dain-td1"><img class="dain-table-img" src="<c:url value='/resources/img/dog.jpg'/>"></td>
                    <td class="dain-td2">강아지 목줄</td>
                    <td class="dain-td3">핫도그씨</td>
                    <td class="dain-td4">악세서리</td>
                    <td class="dain-td5"><button class="btn btn-primary" >삭제</button></td>
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



     
      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; bomulsum 2020</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">로그아웃 하시겠습니까?</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

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