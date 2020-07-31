<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>������(������) | �Խ��� �� ���</title>

<!-- Custom fonts for this template-->
<link
	href="<c:url value='/resources/vendor/fontawesome-free/css/all.min.css'/>"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value='/resources/css/sb-admin-2.min.css'/>"
	rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="<c:url value='/resources/vendor/datatables/dataTables.bootstrap4.min.css'/>"
	rel="stylesheet">

<!--�� �ۼ� �����͸� ���� ��Ʈ��Ʈ���� JQuery-->
<!--minwoo_write_form_api-->

<style>
.minwoo_mboard_btn {
	height: 40px;
	width: 50px;
	background-color: #5179f9;
	color: white;
	border: 1px solid #5179f9;
	font-size: 15px;
	font-weight: bold;
	border-radius: 5px;
}
</style>


</head>

<body id="page-top">

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
					class="fas fa-fw fa-cog"></i> <span>�Խ���</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="#">�Խ��� ���</a> <a
							class="collapse-item" href="#">�Խ��� ���</a> <a
							class="collapse-item" href="#">�˸� ���</a>
					</div>
				</div></li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#salseNcoupone"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-wrench"></i> <span>����/����</span>
			</a>
				<div id="salseNcoupone" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="#">�������</a> <a
							class="collapse-item" href="#">����</a>
					</div>
				</div></li>

			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#memberList"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-wrench"></i> <span>ȸ������</span>
			</a>
				<div id="memberList" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="#">�۰����</a> <a
							class="collapse-item" href="#">ȸ�����</a> <a class="collapse-item"
							href="#">�۰�ȸ�� �α� ������</a>
					</div>
				</div></li>
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#productManage"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-wrench"></i> <span>��ǰ����</span>
			</a>
				<div id="productManage" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="#">��ǰ</a> <a class="collapse-item"
							href="#">�ݼ�Ŭ����</a>
					</div>
				</div></li>
			<li class="nav-item"><a class="nav-link" href="#"> <i
					class="fas fa-fw fa-chart-area"></i> <span>�Ű��� ����</span></a></li>
			<li class="nav-item"><a class="nav-link" href="#"> <i
					class="fas fa-fw fa-chart-area"></i> <span>�����ڰ��� �߰�</span></a></li>

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
						<a class="collapse-item" href="login.html">�α���</a> <a
							class="collapse-item" href="register.html">����ϱ�</a> <a
							class="collapse-item" href="forgot-password.html">��й�ȣ ã��</a>
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
								class="mr-2 d-none d-lg-inline text-gray-600 small">������
									�̸�</span>
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> ������
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> Ȱ���α׺���
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> �α׾ƿ�
								</a>
							</div></li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- �����߰��ϱ� -->

				<!--�ο� ���� �߰��� �κ� ����-->
				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">�Խ��� �� ���</h1>
					<p class="mb-4">ȸ�� / �۰����� ���� �ȳ��� ����ϴ� ������ �Դϴ�.</p>

					<!-- �� �ۼ� ������ -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">�� ���</h6>
						</div>
						<div class="card-body">
							<!--��¥���� �������� ���� �־���� �մϴ�-->
							<form>
								<div>
									<div>
										<span>ȸ�� ����&nbsp;&nbsp;:&nbsp;&nbsp;</span> <span> <select
											name="man_type">
												<option value="user">ȸ��</option>
												<option value="writer">�۰�</option>
										</select>
										</span>
									</div>
									<br>
									<div>
										<span>�� ī�װ�&nbsp;&nbsp;:&nbsp;&nbsp;</span> <span> <select
											name="board_type">
												<option value="notice">��������</option>
												<option value="question">���� ���� ����</option>
												<option value="guide">�̺�Ʈ</option>
												<option value="guide">�Ǹ� / ��å ���̵�(�۰���)</option>
										</select>
										</span>
									</div>
									<br>
									<div>
										<span>�� ����&nbsp;&nbsp;:&nbsp;&nbsp;</span> <span><input
											type="text" style="width: 800px;" id=""></span>
									</div>
									<br>
									<div>
										<textarea id="" name="" rows="20"
											style="resize: none; width: 900px;"></textarea>
									</div>
									<br>
									<div>
										<input type="submit" value="���" class="minwoo_mboard_btn">
									</div>
								</div>
							</form>
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
			<!-- main content -->
			
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
						<h5 class="modal-title" id="exampleModalLabel">Ready to
							Leave?</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">��</span>
						</button>
					</div>
					<div class="modal-body">Select "Logout" below if you are
						ready to end your current session.</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button"
							data-dismiss="modal">Cancel</button>
						<a class="btn btn-primary" href="login.html">Logout</a>
					</div>
				</div>
			</div>
		</div>


		<script> </script>




		<!-- Bootstrap core JavaScript-->
		<script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
		<script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

		<!-- Core plugin JavaScript-->
		<script src="<c:url value='/resources/vendor/jquery-easing/jquery.easing.min.js'/>"></script>

		<!-- Custom scripts for all pages-->
		<script src="<c:url value='/resources/js/sb-admin-2.min.js'/>"></script>

		<!-- Page level plugins -->
		<script src="<c:url value='/resources/vendor/datatables/jquery.dataTables.min.js'/>"></script>
		<script src="<c:url value='/resources/vendor/datatables/dataTables.bootstrap4.min.js'/>"></script>

		<!-- Page level custom scripts -->
		<script src="<c:url value='/resources/js/demo/datatables-demo.js'/>"></script>
</body>

</html>