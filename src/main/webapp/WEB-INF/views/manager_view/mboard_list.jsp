<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>������(������) | �Խ��� ���</title>

  <!-- Custom fonts for this template-->
  <link href="<c:url value='/resources/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

   <!-- Custom styles for this template -->
   <link href="<c:url value='/resources/css/sb-admin-2.min.css' />" rel="stylesheet">
 
   <!-- Custom styles for this page -->
   <link href="<c:url value='/resources/vendor/datatables/dataTables.bootstrap4.min.css' />" rel="stylesheet">

   <!--minwoo style-->
   <style>
    .minwoo_table_table_bordered_head tr th{
        text-align: center;
        vertical-align: middle;
    }

    .minwoo_table_table_bordered_body tr td{
        text-align: center;
        vertical-align: middle;
    }
    .minwoo_table_table_bordered_body tr td:nth-child(1){
        width:20%;
    }
    .minwoo_table_table_bordered_body tr td:nth-child(3){
    width:15%;
    }
    .minwoo_table_table_bordered_body tr td a{
        text-decoration: none;
        color:#858796;
    }
    .openUpdateModal{
    	cursor:pointer;
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
          <span>�Խ���</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="#">�Խ��� ���</a>
            <a class="collapse-item" href="#">�Խ��� ���</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#salseNcoupone" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>����</span>
        </a>
        <div id="salseNcoupone" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="#">�������</a>
          </div>
        </div>
      </li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#memberList" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>ȸ������</span>
        </a>
        <div id="memberList" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="#">�۰����</a>
            <a class="collapse-item" href="#">ȸ�����</a>
            <a class="collapse-item" href="#">�۰�ȸ�� �α� ������</a>
          </div>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#productManage" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>��ǰ����</span>
        </a>
        <div id="productManage" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="#">��ǰ</a>
            <a class="collapse-item" href="#">�ݼ�Ŭ����</a>
          </div>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>�Ű��� ����</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>�����ڰ��� �߰�</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item active">
        <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>Pages</span>
        </a>
        <div id="collapsePages" class="collapse show" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="login.html">�α���</a>
            <a class="collapse-item" href="register.html">����ϱ�</a>
            <a class="collapse-item" href="forgot-password.html">��й�ȣ ã��</a>
            <div class="collapse-divider"></div>
          </div>
        </div>
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
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">������ �̸�</span>
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  ������
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Ȱ���α׺���
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  �α׾ƿ�
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- �����߰��ϱ� -->

        <!--�ο� ���� �߰��� �κ� ����-->
         <!-- Begin Page Content -->
         <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-2 text-gray-800">�Խ���</h1>
            <p class="mb-4">ȸ�� / �۰����� ���� �ȳ� �Խ��� �Դϴ�.</p>
  
            <!-- DataTales Example -->
            <div class="card shadow mb-4">
              <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">�� ���</h6>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-bordered" id="dataTable">
                    <thead  class="minwoo_table_table_bordered_head">
                      <tr>
                        <th>�Խ��� �̸�</th>
                        <th>�� ����</th>
                        <th>��� ��¥</th>
                      </tr>
                    </thead>
                    <tbody class="minwoo_table_table_bordered_body">
                    <!-- .length �Ƚᵵ ����Ʈ �״�� �޾ƿ�.-->
                    <c:forEach var="i" items="${mboardList}" >
                      <tr>
                        <td>${i.admin_notice_category}</td>
                        <td data-toggle="modal" 
                            data-target="#staticBackdrop2" 
                            class="openUpdateModal">${i.admin_notice_title} </td>
                        <td>${i.admin_notice_date}</td>
                        <td style="display:none;">${i.admin_notice_seq}</td>
                        <td style="display:none;">${i.admin_notice_content}</td>
                        <td style="display:none;">${i.admin_notice_coupon}</td>
                      </tr>
                    </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
  
          </div>
          <!-- /.container-fluid -->
          <!--�ο� ���� �߰��� �κ� ����-->
       

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>������ &copy; 2020</span>
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
            <span aria-hidden="true">��</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>


  	<!-- detail content modal -->
       <div class="modal fade" id="staticBackdrop2" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
         <div class="modal-dialog modal-lg" role="document" style="max-width:1000px;">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title" id="modal-category"></h5>
                     <button type="button" class="close" data-dismiss="modal"aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                     </button>
               </div>
               <div  style="display:flex; border-bottom: 1px solid #d9d9d9; height: 50px; margin:12px 30px 6px 30px; align-items: center; " >
                  <div id="staticBackdropTitle" style="font-weight: bold; font-size: 18px; color:#4273df;"> ���� : <input type="text" id="modal-title" style="color: #858796;"></div>
               </div>
 
               <!-- body -->
                  
               <div id="staticBackdropContent" style="height: 400px; margin:20px 30px 12px 30px; ">
                 <div style="height: 350px; border: 1px solid #d9d9d9; overflow: scroll; overflow-x: hidden; padding: 1%;">
              			<textarea id="modal-content"></textarea>
                 </div>
               </div>
				<div style="display:none;">������</div> 
				<div style="display:none;" id="modal-coupon"></div>
               <div class="modal-footer" style="display: flex; flex-direction: column;">
                  <button style="font-size: 100%;"class="close" data-dismiss="modal"aria-label="Close">�ݱ�</button>
               </div>
            </div>
         </div>
       </div>
      <!-- modal end -->




  <!-- Bootstrap core JavaScript-->
  <script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

  <!-- Core plugin JavaScript-->
  <script src="<c:url value='/resources/vendor/jquery-easing/jquery.easing.min.js' /> "></script>

  <!-- Custom scripts for all pages-->
  <script src="<c:url value='/resources/js/sb-admin-2.min.js' /> "></script>

  <!-- Page level plugins -->
  <script src="<c:url value='/resources/vendor/datatables/jquery.dataTables.min.js' /> "></script>
  <script src="<c:url value='/resources/vendor/datatables/dataTables.bootstrap4.min.js' /> "></script>

  <!-- Page level custom scripts -->
  <script src="<c:url value='/resources/js/demo/datatables-demo.js' /> "></script>

	<script type="text/javascript">
		$(function(){
			$(".openUpdateModal").click(function(){
				var category = $.trim($(this).closest('tr').children('td').eq(0).text());
				var title = $.trim($(this).closest('tr').children('td').eq(1).text());
				var date = $.trim($(this).closest('tr').children('td').eq(2).text());
				var seq = $.trim($(this).closest('tr').children('td').eq(3).text());
				var content = $.trim($(this).closest('tr').children('td').eq(4).text());
				var coupon = $.trim($(this).closest('tr').children('td').eq(5).text());
				console.log(coupon);
				if(coupon == '--'){ // ���� �������
					$('#modal-category').text(category);
					$('#modal-title').val(title);
					$('#modal-content').text(content);
				}else{ // ���� �������
					$('#modal-category').text(category);
					$('#modal-title').val(title);
					$('#modal-content').text(content);
					
					var couponList = coupon.split('-')
					
					var couponName = couponList[0];
					var couponContent = couponList[1];
					var couponPrice = couponList[2];
					var coupondiv = document.getElementByID('modal-coupon').querySelector();
					
					var html = '';
					
					$('#').text(coupon);
				}
				
			});
		});
	</script>



</body>

</html>