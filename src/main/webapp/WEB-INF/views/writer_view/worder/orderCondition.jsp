<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 현황</title>
<link href="<c:url value='/resources/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="<c:url value='/resources//css/sb-admin-2.min.css'/>" rel="stylesheet">
</head>
<body id="page-top">
	<div id="wrapper">
		<!-- Header/Nav -->
		<%@ include file="../include/side.jsp" %>
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<%@ include file="../include/head.jsp" %>
				<!-- end Header/Nav -->

				<div style="margin-left: 2%; margin-right: 2%">
					<!-- 주문 완료 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<div class="m-0 font-weight-bold text-primary" style="display: inline-block">주문 완료</div>
							<span>1</span>
							<!-- 주문 완료 개수 들어갈 공간. -->
							<!-- </div> -->
							<hr class="sidebar-divider my-0">
							<!-- 주문 완료 박스 -->
							<div style="padding-right: 0rem; padding-left: 0rem; padding-top: 1rem; max-height: 530px; overflow: auto;">
							
								
								<div class="card border-bottom-primary shadow h-100 py-2"
									style="padding-top: 0rem !important; padding-bottom: 0rem !important; margin-bottom:10px;">
									<table style="width: 95%">
										<tr style="background-color: #C8FFFF">
											<th width="75px" align="center">
												<div style="font-size: .7rem; border-style: solid; border-color: #28E7FF; width: 100%; text-align: center; background-color: white; color: #28E7FF">
												주문 완료
												</div>
											</th>
											<th>P-2019042318123 ></th>
											<th>
												<div style="text-align: right">2019-04-23</div>
											</th>
										</tr>
										<tr>
											<td><img
												style="overflow: hidden; display: flex; align-items: center; justify-content: center;width: 75px; height: 75px"
												src="<c:url value='/resources//img/ddd.jpg'/>" /></td>
											<td>
												<div style="text-align: left">
													<a href="orderList.jsp" style="color: black; font-weight:bold; font-size:100%"><input
														type="checkbox" checked="checked" />[입점할인] 스터드키링_TEST</a> <br>0개남음<br>
													<label
														style="text-align: center; background-color: #5EC75E; width: auto; margin-bottom: 0rem; color: white; font-size:100%">
														<i class="fas fa-tags"></i>10%
													</label>
												</div>
											</td>
											<td>
												<div style="text-align: right">
													<br> <label
														style="text-decoration: line-through; margin-bottom: 0rem">10,000원</label>
													<br> <label
														style="margin-bottom: 0rem; color: #28E7FF">9,000원</label>
												</div>
											</td>
										</tr>
									</table>
								</div>
								
							</div>
						</div>
					</div>
					
					<!-- 환불 요청 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<div class="m-0 font-weight-bold text-primary"
								style="display: inline-block">환불 요청</div>
							<span>0</span>
							<hr class="sidebar-divider my-0">
							<!-- 환불 요청 박스 -->
							<div
								style="padding-right: 0rem; padding-left: 0rem; padding-top: 1rem">
								<div class="card border-bottom-primary shadow h-100 py-2"
									style="padding-top: 0rem !important; padding-bottom: 0rem !important">
									<div align="center" style="margin: 2rem 2rem 2rem 2rem">요청
										건이 없습니다.</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>





			<!-- footer -->
			<%@ include file="../include/footer.jsp" %>
			<!-- end footer -->
			<!-- Scroll to Top Button-->
			<a class="scroll-to-top rounded" href="#page-top"> <i class="fas fa-angle-up"></i>
			</a>

			<script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
			<script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

			<!-- Core plugin JavaScript-->
			<script src="<c:url value='/resources/vendor/jquery-easing/jquery.easing.min.js'/>"></script>

			<!-- Custom scripts for all pages-->
			<script src="<c:url value='/resources/js/sb-admin-2.min.js'/>"></script>



		</div>

	</div>
	
	
	<script>
	var result = new Array();
	
	<c:forEach var="i" items='${orderConditionList}'>
		var json = new Object();//객체로 배열에 담기
		json.orderCodeSeq = '${i.orderCodeSeq}';
		json.memberCodeSeq = '${i.memberCodeSeq}';
		json.orderDate = `${i.orderDate}`;
		json.orderReceiver = '${i.orderReceiver}';
		json.orderPhoneNum = `${i.orderPhoneNum}`;
		json.orderZipcode = '${i.orderZipcode}';
		json.orderAddressFirst = '${i.orderAddressFirst}';
		json.orderAddressSecond = '${i.orderAddressSecond}';
		json.orderPayPrice = '${i.orderPayPrice}';
		json.orderPointPrice = '${i.orderPointPrice}';
		json.couponCodeSeq = '${i.couponCodeSeq}';
		
		json.buyWriterCodeSeq = '${i.buyWriterCodeSeq}';
		json.writerCodeSeq = '${i.writerCodeSeq}';
		json.buyWriterSendPrice = '${i.buyWriterSendPrice}';
		json.buyWriterPlusSendPrice = '${i.buyWriterPlusSendPrice}';
		json.buyWriterOrderStatus = '${i.buyWriterOrderStatus}';
		json.buyWriterOrderRefundReason = '${i.buyWriterOrderRefundReason}';
		json.buyWriterOrderRefundDate = '${i.buyWriterOrderRefundDate}';
		json.buyRefundRequestDate = '${i.buyRefundRequestDate}';
		
		json.buyArtCodeSeq = '${i.buyArtCodeSeq}';
		json.artCodeSeq = '${i.artCodeSeq}';
		json.artName = '${i.artName}';
		json.buyArtRequest = '${i.buyArtRequest}';
		json.buyArtReviewStatus = '${i.buyArtReviewStatus}';
		json.buyArtReviewUpdate = '${i.buyArtReviewUpdate}';
		
		json.buyOptionCodeSeq = '${i.buyOptionCodeSeq}';
		json.artPrice = '${i.artPrice}';
		json.artOptionSeqList = '${i.artOptionSeqList}';
		json.artOptionName = '${i.artOptionName}';
		json.artOptionAmount = '${i.artOptionAmount}';
		json.buyDeliveryNum = '${i.buyDeliveryNum}';
		json.artAmount = '${i.artAmount}';
		json.artPhoto = '${i.artPhoto}';
		json.artDiscount = '${i.artDiscount}';
		
		result.push(json);
	</c:forEach>
	
	console.log(result);
	

	
	var renderTable = function(){
		// 주문 & 환불 쪽 데이터 넣어줄 div 변수 선언
		var orderDiv = '';
		var refundDiv = '';
		var artImg = '';
		var artDiscountCheck = '';
		var artDiscountPrice = '';
		var html = '';
		var memberProfilePhoto = '';
		
		//여기서 만들어진 html 을 innerhtml 해줄거임. 주문건일 때는 orderDiv에 환불건일때는 refundDiv 에 넣기
		for(var data : result){//
			
			artImg = data.artPhoto.split(',')[0];
			artDiscountCheck = '';
			artDiscountPrice = '';
			
	  		html += '<div class="card border-bottom-primary shadow h-100 py-2" style="padding-top: 0rem !important; padding-bottom: 0rem !important; margin-bottom:10px;">'
	  			+ '<table style="width: 95%">'
	  			+ '<tr style="background-color: #C8FFFF">'
	  			+ '<th width="75px" align="center">'
	  			+ '<div style="font-size: .7rem; border-style: solid; border-color: #28E7FF; width: 100%; text-align: center; background-color: white; color: #28E7FF">'
	  			+ data.buyWriterOrderStatus + '</div>'
	  			+ '</th>'
	  			+ '<th>' + '주문번호 > 화살표' + '</th>'
	  			+ '<th><div style="text-align: right">'
	  			+ data.orderDate + '</div></th>'
	  			+ '</tr>'
	  			+ '<tr><td><img style="overflow: hidden; display: flex; align-items: center; justify-content: center;width: 75px; height: 75px"'
	  			+ 'src="/bumulsum/upload/' + artImg + '" /></td>'
	  			+ '<td><div style="text-align: left"><a href="orderList.jsp" style="color: black; font-weight:bold; font-size:100%">'
	  			+ '<input type="checkbox" checked="checked" />' + data.artName + '</a><br>' + data.artAmount + ' 개남음<br>';
	  			
	  			if(data.artDiscount == null){
	  				artDiscountCheck = '할인 가격';
	  				html += '<label style="text-align: center; background-color: #5EC75E; width: auto; margin-bottom: 0rem; color: white; font-size:100%; border-radius:10px;">'
		  			+ '<i class="fas fa-tags"></i>' + 10% + '</label>'
	  			} else {
	  				artDiscountCheck = ''
	  			}
	  			+ '<label style="text-align: center; background-color: #5EC75E; width: auto; margin-bottom: 0rem; color: white; font-size:100%; border-radius:10px;">'
	  			+ '<i class="fas fa-tags"></i>' + 10% + '</label>'
	  			+ ''// 할인 될 때

	  			
				+ '</div></td>'					
										
									
								
							
							<td>
								<div style="text-align: right">
									<br> <label
										style="text-decoration: line-through; margin-bottom: 0rem">10,000원</label>
									<br> <label
										style="margin-bottom: 0rem; color: #28E7FF">9,000원</label>
								</div>
							</td>
						</tr>
					</table>
				</div>
	  			
		}
		testTable.innerHTML = html;
	};
	
	</script>
</body>
</html>