<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>젬 포인트</title>
<link href="<c:url value='/resources/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="<c:url value='/resources/css/sb-admin-2.min.css'/>" rel="stylesheet">
<!-- myInformation _ CSS -->
<style>
.subcontent {
	margin-left: 2%;
}


.flexContainer{
	width: 90%;
	display: flex;
	align-items: flex-end;
	justify-content: space-between;
	margin-bottom: 20px;
}

.bold{
	font-weight: bold;
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

.subcontent table {
	/*font-family: arial, sans-serif;*/
	border-collapse: collapse;
	width: 90%;
	margin-bottom: 50px;
}


.daintdth {
	border-top: 1px solid #dddddd;
	border-bottom: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}


.subcontent th {
	background-color: #f2f2f2;
}

.subcontent h4, h5 {
	font-weight: bold;
}

footer span{
	margin-right: 10%;
}

.dainGempointBtn{
	 margin-left: 30px; 
	 background-color: white;
	 border: 1px solid #d9d9d9;
	 border-radius: 3px;
	 color: #999999;
	 padding: 3px 10px;
}
.dainGempointBtn:focus{
	outline: none;
}

.chargeMoneyChoice{
	 margin: 0px 10px;
	 border:1px solid #cfdae0; 
	 border-radius: 10px; 
	 background-color: #edf4fa; 
	 padding: 10px 0px;
	 font-size: 12px;
	 color: #666666;
}

.chargeMoneyChoice img{
	border:1px solid #cfdae0;
	border-radius: 10px;
}
.dainChargeBtn{
	margin-top:15px;
	margin-bottom:15px;
	border-radius: 3px;
	font-size: 15px;
}

.dainChargeBtn:hover{
	background-color: #1f76bb;
	color:white;

}
</style>

</head>

<body id="page-top">
	<div id="wrapper">
		<!-- Header/Nav -->
			<%@ include file="../include/side.jsp" %>
		<div id="content-wrapper" class="d-flex flex-column">

			<div class="content">
					<%@ include file="../include/head.jsp" %>
				<!-- end Header/Nav -->

				<div class="subcontent">
					<h4>젬 포인트</h4>
					<hr>
					<br />
					<!-- 젬 포인트 테이블 -->
					<p>
						젬 포인트는 작가님들의 작품 홍보를 위해 제공되는 가상 포인트 제도입니다. <br> 이 곳에서 포인트를 충전할 수 있고, 
						충전된 포인트를 작가님 추천에 사용할 수 있습니다.
					</p>
					<table>
						<tr>
							<th class="daintdth" style="width: 20%">보유 포인트 </th>
							<!-- 보유포인트 -->
							<td class="daintdth" id="gemPoint" class="bold"
								style="color: #36a7b3; display:flex; align-items: center;"><fmt:formatNumber value="${gemsum.GEMSUM}" pattern="#,###"/>P <div>
								<button class="dainGempointBtn" data-toggle="modal"  data-target="#chargePointModal" >충전하기</button></div></td>
						</tr>
					</table>


					<div class="flexContainer">
						<h5 style="margin: 0; font-weight: bold">이용 내역</h5>
						<!-- 몇개씩 보는지 선택옵션 -->
						<select name="pointViewOption">
							<option value="view10">10개씩 보기</option>
							<option value="view20">20개씩 보기</option>
							<option value="view30">30개씩 보기</option>
						</select>
					</div>
					<!-- 이용 내역 테이블 -->
					<table>
						<!-- 테이블 제목 -->
						<tr>
							<th class="daintdth" style="width: 18%; text-align: center;">일자</th>
							<th class="daintdth" style="width: 46%; text-align: center;">내역</th>
							<th class="daintdth" style="width: 18%; text-align: center;">포인트</th>
						</tr>
						<!-- 테이블 내용 -->
						
						<c:forEach var="gemforeach" items="${article}">
						<tr>
							<!-- 일자 -->
							<td class="daintdth" style="text-align: center">${gemforeach.gemDate}</td>
							<!-- 내역 -->
							<td class="daintdth">${gemforeach.gemLog}</td>
							<!-- 포인트 사용 -->
							<c:if test="${gemforeach.gemUsage eq 'Y'}">
								<td class="daintdth bold" style="text-align: center; color: #e35852;">
								<fmt:formatNumber value="${gemforeach.gemPrice}" pattern="#,###"/>P
								</td>
							</c:if>
							<!-- 포인트 충전 -->
							<c:if test="${gemforeach.gemUsage eq 'N'}">
								<td class="daintdth bold" style="text-align: center; color: #36a7b3;">
	    						+<fmt:formatNumber value="${gemforeach.gemPrice}" pattern="#,###"/>P
								</td>
							</c:if>
							
						</tr>
						</c:forEach>

					</table>

					<!-- 페이징 처리 -->
					<div class="paging" style="width: 90%;">
						<a class="arrow prev" href="#">이전</a> <a href="#">1</a> <a
							class="arrow next" href="#">다음</a>
					</div>
					
					
			<!-- modal -->
	          <div class="modal fade" id="chargePointModal" data-backdrop="static" tabindex="-1" 
	          role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	         <div class="modal-dialog modal-lg" role="document" style="max-width:570px; ">
	            <div class="modal-content">
	               <div class="modal-header">
	                   <h5 class="modal-title" >젬 포인트 충전하기</h5> 
	                     <button type="button" class="close" data-dismiss="modal"aria-label="Close">
	                        <span aria-hidden="true">&times;</span>
	                     </button>
	               </div>
	               <div  style="display:flex;  margin:12px 30px 6px 30px; align-items: center;" >
	                  <div id="staticBackdropTitle" style="font-weight: bold; font-size: 18px; color:#1f76bb;">
	                  	<div style="margin: 3% 0 2% 2%; font-size: 14px;">충전할 포인트 선택</div>
	                  	<div>
		                  	<form action="<c:url value='/writer/gempoint/charge.wdo'/>" method="get">
		                  	<div style="display:flex; flex-wrap: wrap;">
		                  	 <label for="chargeMoney1">
		                  	 <div class="chargeMoneyChoice" align="center">
							  <img alt="10000p" width="60%" src="<c:url value='/resources/img/10000point.png'/>">
							  <br>가격: 10,000원<br>
							  <input type="radio" id="chargeMoney1" name="chargeMoney" value=10000>
							  </div></label>
							  
							  <label for="chargeMoney2">
							  <div class="chargeMoneyChoice" align="center">
							  <img alt="20000p" width="60%" src="<c:url value='/resources/img/20000point.png'/>">
							  <br>가격: 20,000원<br>
							  <input type="radio" id="chargeMoney2" name="chargeMoney" value=20000>
							  </div></label>
							  
							  
							  <label for="chargeMoney3">
							  <div class="chargeMoneyChoice" align="center">
							  <img alt="30000p" width="60%" src="<c:url value='/resources/img/30000point.png'/>">
							  <br>가격: 30,000원<br>
							  <input type="radio" id="chargeMoney3" name="chargeMoney" value=30000>
							  </div></label>
							  
							  <label for="chargeMoney4">
							  <div class="chargeMoneyChoice" align="center">
							  <img alt="40000p" width="60%" src="<c:url value='/resources/img/40000point.png'/>">
							 <br>가격: 40,000원<br>
							 <input type="radio" id="chargeMoney4" name="chargeMoney" value=40000>
							 </div></label>
							 </div>
							 
							 <div align="center">
							 <button class="dainGempointBtn dainChargeBtn">충전하기</button>
							 </div>
							 </form>
						 </div>
	                  </div>
	               </div>
	              
	 
	               <!-- body -->
	                  
	               

	            </div>
	         </div>
	         </div>
	      <!-- modal end -->
      
				</div><!-- end subcontent -->


				<!-- 푸터영역 -->
				<%@ include file="../include/footer.jsp" %>
				<!-- end footer -->
			</div>

			<!-- Scroll to Top Button-->
			<a class="scroll-to-top rounded" href="#page-top"> <i
				class="fas fa-angle-up"></i>
			</a>

			<script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
			<script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

			<!-- Core plugin JavaScript-->
			<script src="<c:url value='/resources/vendor/jquery-easing/jquery.easing.min.js'/>"></script>

			<!-- Custom scripts for all pages-->
			<script src="<c:url value='/resources/js/sb-admin-2.min.js'/>"></script>

			<!-- Page level plugins -->
			<script src="<c:url value='/resources/vendor/chart.js/Chart.min.js'/>"></script>

		

		</div>
	</div>
</body>
</html>