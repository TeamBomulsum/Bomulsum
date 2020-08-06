<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sidebar</title>
<link href="<c:url value='/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="<c:url value='/css/sb-admin-2.min.css'/>" rel="stylesheet">
</head>
<body>
		<!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- 왼쪽 메뉴바 -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="../home.jsp">
        <div>
          <!-- 보물섬 아이콘 -->
          <i><img src="<c:url value='/resources/img/text.png'/>" width="70" height="70"></i>
        </div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">
      <!-- Nav Item - Dashboard 
      <li class="nav-item active">
        <a class="nav-link" href="index.html">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>주문</span></a>
      </li>
      -->

      <div align="center">
        <!-- 작가 프로필 사진 -->
        <a href="#"><img src="<c:url value='/resources/img/MainLogo_white.png'/>" width="100" height="100"></a><br>
        <a style="color:aliceblue; font-size: 15pt; font-weight: bold;">작가명</a>
        <div style="margin-top:2%;margin-bottom:2%;">
        	<table style="color: white; width:80%">
        		<tr>
        			<th style="text-align:left; width:60%">
        				<i class="fas fa-gem" style="color:gold"></i>&nbsp;젬포인트
        			</th>	
        			<th style="text-align:right; width:40%">
        				<a>30,000</a>P
        			</th>	
        		</tr>
        	</table>
        </div>
      </div>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading 
      <div class="sidebar-heading">
        작품
      </div>
      -->

      <!-- 주문 -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true"
          aria-controls="collapseOne">
          <!--<i class="fas fa-fw fa-cog"></i>-->
          <span>주문</span>
        </a>
        <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <!--<h6 class="collapse-header">Custom Components:</h6>-->
            <a class="collapse-item" href="<c:url value='/view/worder/orderCondition.jsp'/>">현황</a>
            <a class="collapse-item" href="<c:url value='/view/worder/orderList.jsp'/>">주문 리스트</a>
            <a class="collapse-item" href="<c:url value='/view/worder/registerOfShip.jsp'/>">발송 정보 일괄 등록</a>
          </div>
        </div>
      </li>

      <!-- 작품 -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true"
          aria-controls="collapseTwo">
          <!--<i class="fas fa-fw fa-cog"></i>-->
          <span>작품</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <!--<h6 class="collapse-header">Custom Components:</h6>-->
            <a class="collapse-item" href="<c:url value='/view/warticle/onSale.jsp'/>">판매중</a>
            <a class="collapse-item" href="<c:url value='/view/warticle/pauseOnSales.jsp'/>">판매 일시중지</a>
            <a class="collapse-item" href="<c:url value='/view/warticle/workRegister.jsp'/>">작품등록</a>
            <a class="collapse-item" href="<c:url value='/writer/midasRegister.wdo'/>">금손작품등록</a>
            <a class="collapse-item" href="<c:url value='/view/warticle/classInfo.jsp'/>">강의정보</a>
          </div>
        </div>
      </li>

      <!-- 메시지 -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true"
          aria-controls="collapseThree">
          <!--<i class="fas fa-fw fa-cog"></i>-->
          <span>메시지</span>
        </a>
        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <!--<h6 class="collapse-header">Custom Components:</h6>-->
            <a class="collapse-item" href="<c:url value='/view/wmessage/messageList.jsp'/>">메시지 리스트</a>
          </div>
        </div>
      </li>

      <!-- 활동 -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFour" aria-expanded="true"
          aria-controls="collapseFour">
          <!--<i class="fas fa-fw fa-wrench"></i>-->
          <span>활동</span>
        </a>
        <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <!--<h6 class="collapse-header">Custom Utilities:</h6>
            <a class="collapse-item" href="utilities-color.html">Colors</a>-->
            <a class="collapse-item" href="<c:url value='/view/wactivity/alarm.jsp'/>">알림</a>
            <a class="collapse-item" href="<c:url value='/view/wactivity/review.jsp'/>">구매후기</a>
            <a class="collapse-item" href="<c:url value='/view/wactivity/comments.jsp'/>">댓글</a>
          </div>
        </div>
      </li>

      <!-- Divider  메뉴 선
      <hr class="sidebar-divider">
      -->

      <!-- 스토리 
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFive" aria-expanded="true"
          aria-controls="collapseFive">
          <!--<i class="fas fa-fw fa-folder"></i>--
          <span>스토리</span>
        </a>
        <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <!--
            <h6 class="collapse-header">Login Screens:</h6>
            <a class="collapse-item" href="login.html">Login</a>
            <a class="collapse-item" href="register.html">Register</a>
            <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Other Pages:</h6>
            <a class="collapse-item" href="404.html">404 Page</a>
            <a class="collapse-item" href="blank.html">Blank Page</a>
            --
            <a class="collapse-item" href="storyManage.jsp">스토리 관리</a>
            <a class="collapse-item" href="storyRegister.jsp">스토리 등록</a>
          </div>
        </div>
      </li>
      -->

      <!-- 작품 소문내기 -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSix" aria-expanded="true"
          aria-controls="collapseSix">
          <!--<i class="fas fa-fw fa-folder"></i>-->
          <span>작품 소문내기</span>
        </a>

        <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordionSidebar">

          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="<c:url value='/view/wrecommend/recommendWriter.jsp'/>">작가님 추천</a>
            <!--
            <h6 class="collapse-header">Login Screens:</h6>
            <a class="collapse-item" href="login.html">Login</a>
            <a class="collapse-item" href="register.html">Register</a>
            <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Other Pages:</h6>
            <a class="collapse-item" href="404.html">404 Page</a>
            <a class="collapse-item" href="blank.html">Blank Page</a>
            -->
          </div>

        </div>
      </li>

      <!-- 쿠폰 --
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="true"
          aria-controls="collapseSeven">
          <!--<i class="fas fa-fw fa-folder"></i>--
          <span>쿠폰</span>
        </a>
        <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <!--
            <h6 class="collapse-header">Login Screens:</h6>
            <a class="collapse-item" href="login.html">Login</a>
            <a class="collapse-item" href="register.html">Register</a>
            <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Other Pages:</h6>
            <a class="collapse-item" href="404.html">404 Page</a>
            <a class="collapse-item" href="blank.html">Blank Page</a>
            --
            <a class="collapse-item" href="couponManage.jsp">쿠폰 관리</a>
            <a class="collapse-item" href="couponMake.jsp">일반 쿠폰 만들기</a>
          </div>
        </div>
      </li>
		-->
      <!-- 통계 및 정산 -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseEight" aria-expanded="true"
          aria-controls="collapseEight">
          <!--<i class="fas fa-fw fa-folder"></i>-->
          <span>통계 및 정산</span>
        </a>
        <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordionSidebar">

          <div class="bg-white py-2 collapse-inner rounded">
            <!--
            <h6 class="collapse-header">Login Screens:</h6>
            <a class="collapse-item" href="login.html">Login</a>
            <a class="collapse-item" href="register.html">Register</a>
            <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Other Pages:</h6>
            <a class="collapse-item" href="404.html">404 Page</a>
            <a class="collapse-item" href="blank.html">Blank Page</a>
            -->
            <a class="collapse-item" href="<c:url value='/view/wstats/sales.jsp'/>">매출</a>
          </div>


        </div>
      </li>

      <!-- 계정정보 -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseNine" aria-expanded="true"
          aria-controls="collapseNine">
          <!--<i class="fas fa-fw fa-folder"></i>-->
          <span>계정정보</span>
        </a>
        <div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-parent="#accordionSidebar">

          <div class="bg-white py-2 collapse-inner rounded">
            <!--
            <h6 class="collapse-header">Login Screens:</h6>
            <a class="collapse-item" href="login.html">Login</a>
            <a class="collapse-item" href="register.html">Register</a>
            <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Other Pages:</h6>
            <a class="collapse-item" href="404.html">404 Page</a>
            <a class="collapse-item" href="blank.html">Blank Page</a>
            -->
            <a class="collapse-item" href="<c:url value='/view/waccount/myInformation.jsp'/>">내정보</a>
            <a class="collapse-item" href="<c:url value='/view/waccount/salsePolicy.jsp'/>">판매정책</a>
            <a class="collapse-item" href="<c:url value='/view/waccount/writerProfile.jsp'/>">작가 프로필</a>
            <a class="collapse-item" href="<c:url value='/view/waccount/gemPoint.jsp'/>">금손 포인트</a>
          </div>
        </div>
      </li>

      <!-- 게시판 -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTen" aria-expanded="true"
          aria-controls="collapseTen">
          <!--<i class="fas fa-fw fa-folder"></i>-->
          <span>게시판</span>
        </a>
        <div id="collapseTen" class="collapse" aria-labelledby="headingTen" data-parent="#accordionSidebar">

          <div class="bg-white py-2 collapse-inner rounded">
            <!--
            <h6 class="collapse-header">Login Screens:</h6>
            <a class="collapse-item" href="login.html">Login</a>
            <a class="collapse-item" href="register.html">Register</a>
            <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Other Pages:</h6>
            <a class="collapse-item" href="404.html">404 Page</a>
            <a class="collapse-item" href="blank.html">Blank Page</a>
            -->
            <a class="collapse-item" href="<c:url value='/writer/announcement.wdo'/>">공지사항</a>
            <a class="collapse-item" href="<c:url value='/writer/policyguide.wdo'/>">정책/등록 가이드</a>
            <a class="collapse-item" href="<c:url value='/writer/question.wdo'/>">자주 묻는 질문</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Charts 
      <li class="nav-item">
        <a class="nav-link" href="charts.html">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>기획전 신청</span></a>
      </li>
      -->

      <!-- Nav Item - Tables 
      <li class="nav-item">
        <a class="nav-link" href="tables.html">
          <i class="fas fa-fw fa-table"></i>
          <span>쿠폰</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="tables.html">
          <i class="fas fa-fw fa-table"></i>
          <span>통계 및 정산</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="tables.html">
          <i class="fas fa-fw fa-table"></i>
          <span>계정정보</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="tables.html">
          <i class="fas fa-fw fa-table"></i>
          <span>게시판</span></a>
      </li>
      -->

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
</body>

</html>