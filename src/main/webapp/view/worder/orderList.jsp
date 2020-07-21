<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 리스트</title>
<link href="<c:url value='/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->

<link href="<c:url value='/css/sb-admin-2.min.css'/>" rel="stylesheet">

<link href="<c:url value='/resources/css/sb-admin-2.min.css'/>" rel="stylesheet">

<style type="text/css">

#aboutSend tr th table {
	background-color: white;
}



#aboutSend tr th#asdfasdf{
	padding:0.3%;
	text-align:center;
	border: 1px solid black;
	background-color: #dcdcdc;
}

#aboutSend tr{
	border: 1px solid black;
	height: 38px;
}

#aboutSend td{
	padding:0.3%;
	font-size:13px;
	text-align:center;
	border: 1px solid black;
	background-color: #28E7FF;
}

#thCss{
	padding: 1rem;
	border: 2px solid white;
	cursor: pointer;
}

#thCss:hover {
	background-color: #FF5050;
}

#popupDiv { /* 팝업창 css */
	top: 0px;
	position: absolute;
	background: #dcdcdc;
	width: 500px;
	height: 250px;
	display: none;
	border: 1px solid gray;
}


#popupCustomer { /* 팝업창 css */
	top: 0px;
	position: absolute;
	background: #dcdcdc;
	width: 500px;
	height: 250px;
	display: none;
	border: 1px solid gray;
}

#sendModal { /* 팝업창 css */
	top: 0px;
	position: absolute;
	background: white;
	width: 1400px;
	height: 500px;
	display: none;
	border: 1px solid gray;
}

#popup_mask { /* 팝업 배경 css */
	position: fixed;
	width: 100%;
	height: 1000px;
	top: 0px;
	left: 0px;
	display: none;
	background-color: #000;
	opacity: 0.8;
}
</style>
</head>
<body id="page-top">
	<div id="wrapper">
		<!-- Header/Nav -->
		<%@ include file="/view/include/side.jsp" %>
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<%@ include file="/view/include/head.jsp" %>
				<!-- end Header/Nav -->

				<div style="margin-left: 2%; margin-right: 2%;">
					<h2 style="text-style: bold; margin-bottom: 0rem;">주문</h2>
					<hr
						style="margin-top: 0rem; border: 0; background: #ccc; height: 0.2rem;">

					<div>
						<select style="font-size: 1rem; width: 8%; height: 1.8rem">
							<option>주문일자</option>
						</select> <input id="beforeDate" type="date" value="2019-09-22"
							max="2020-07-14"> ~ <input id="afterDate" type="date"
							value="2019-09-22" max="2020-07-14"> <input id="today"
							type="radio" name="date" value="오늘" checked> <label
							for="오늘">오늘</label> <input id="lastWeek" type="radio" name="date"
							value="지난주"> <label for="지난주">지난주</label> <input
							id="lastYear" type="radio" name="date" value="지난달"> <label
							for="지난달">지난달</label>
					</div>

					<div>
						<select style="font-size: 1rem; width: 8%; height: 1.8rem">
							<option>주문자</option>
							<option>작품명</option>
							<option>주문번호</option>
						</select> <input name="searchFor" type="text" placeholder="검색어 입력"
							size="40rem">
						<button
							style="color: #dcdcdc; border: 0; background-color: white; outline-style: none; font-weight: bold">검색</button>

						<select
							style="font-size: 12px; width: 100px; height: 30px; align: right">
							<option>10개씩 보기</option>
							<option>20개씩 보기</option>
							<option>30개씩 보기</option>
						</select>

					</div>

					<table style="width: 100%; margin-top: 1rem;">
						<tr align="center"
							style="background-color: #c8c8c8; color: black;">
							<th id="thCss">주문 완료<br>1
							</th>
							<th id="thCss">배송 완료<br>0
							</th>
							
							<th id="thCss">환불 요청<br>0
							</th>
							<th id="thCss">환불 완료<br>0
							</th>
							<th id="thCss">환불 거부<br>0
							</th>
							
						</tr>
					</table>

					<div
						style="border: 1px solid gray; width: 100%; height: 50%; margin-top: 1rem">
						<div style="background-color: #dcdcdc;">
							<input type="checkbox" style="margin: 1rem" /> <a
								style="font-size: 1rem; border-style: solid; border-color: #28E7FF; width: 100%; text-align: center; background-color: white; color: #28E7FF">
								주문 완료 </a> <a style="margin-left: 1rem; width: 80%">
								P-2019042318123 > </a>
							<div style="float: right; margin-top: .75rem">2019-04-23</div>
						</div>

						<div style="float: right; width: 60%; margin: 1rem">
							<h5>배송 정보</h5>
							<div style="display: inline-block">
								<img
									style="align-items: center; justify-content: center; width: 50px; height: 50px"
									src="<c:url value='/resources/img/ddd.jpg'/>" /> &nbsp;<a
									style="font-weight: bold; color: black">리무</a>
								<!-- 사용자 이름 -->
								&nbsp;&nbsp; <a
									style="border: 1px solid red; color: red; padding: .3rem">후원함</a><br>
							</div>
							<div style="margin-top: 1rem">
								<a style="text-decoration:none; border: 1px solid gray; color: #28E7FF; padding: 1%; font-weight: bold" href="#">
									<i class="fas fa-comments"></i>&nbsp;메세지 보내기
								</a>
							</div>
							<table style="margin-top: 3%">
								<tr>
									<td style="width:40%; color:black; font-weight:bold">받는 분</td>
									<td>김</td>
								</tr>
								<tr>
									<td style="color:black; font-weight:bold">전화</td>
									<td>050-4825-4630</td>
								</tr>
								<tr>
									<td style="color:black; font-weight:bold">주소</td>
									<td>05315&nbsp;서울특별시</td>
								</tr>
							</table>
							
							<br>
							
							<h5>결제 정보</h5>
							<table style="border:0.5px solid gray;border-collapse:collapse; text-align:center;color:black; width:80%; height:8rem">
								<tr style="height:55%; background-color:#dcdcdc">
									<td style="width:33.33%;border: 1px solid gray;">
										결제 수단
									</td>
									<td style="width:33.33%;border: 1px solid gray;">
										작품
									</td>
									<td style="width:33.33%;border: 1px solid gray;">
										배송비<br>
										(도서 산간 포함)
									</td>
								</tr>
								<tr style="height:45%">
									<td style="border: 1px solid gray;">
										신용카드<br>
									</td>
									<td style="border: 1px solid gray;">
										9,000원
									</td>
									<td style="border: 1px solid gray;">
										3,000원
									</td>
								</tr>
							</table>
							
							<div style="margin-top:3%">
								<button id="aboutSendButton" style="text-decoration:none; background-color: white;border: 1px solid gray; color: #28E7FF; padding: 1%; font-weight: bold">
									배송정보 입력
								</button>
							</div>

						</div>


						<div
							style="text-align: left; margin: 1rem; border: 1px solid gray; width: 35%">
							<table style="width: 100%">
								<tr>
									<td><img
										style="overflow: hidden; display: flex; align-items: center; justify-content: center; width: 75px; height: 75px"
										src="<c:url value='/resources/img/ddd.jpg'/>" /></td>
									<td>
										<div style="text-align: left">
											<a href="#" style="color: black; text-style: bold;"><input
												type="checkbox" checked="checked" />[입점할인] 스터드키링_TEST</a> <br>0개남음<br>
											<label
												style="text-align: center; background-color: #5EC75E; width: auto; margin-bottom: 0rem; color: white">
												<i class="fas fa-tags"></i>10%
											</label>
										</div>
									</td>
									<td>
										<div style="text-align: right">
											<br> <label
												style="text-decoration: line-through; margin-bottom: 0rem">10,000원</label>
											<br> <label style="margin-bottom: 0rem; color: #28E7FF">9,000원</label>
										</div>
									</td>
								</tr>
							</table>

						</div>
						<div style="text-align: left; margin-left: 1rem; width: 35%">

							<h5>주문 사항</h5>
							<div
								style="margin-bottom: 1rem; padding: 1rem; width: 100%; background-color: #dcdcdc">
								<div style="display: inline-block">
									<a>색상선택 : 레드 | 선물포장 : 1.선택없음(포장안함)</a>
								</div>
								<div style="text-align: left; align: left; float: right">
									<a>1 개</a>
								</div>
							</div>

							<h5>주문시 요청사항</h5>
							<div
								style="margin-bottom: 1rem; padding: 1rem; width: 100%; background-color: #dcdcdc">
								<div style="display: inline-block">
									<a>-</a>
								</div>
								<div style="text-align: left; align: left; float: right">
									<a></a>
								</div>
							</div>

							<div id="root">
							<h5>
								주문 메모 <input type="button" id="popOpenBtn"
									style="font-size: 1rem; border-style: solid; border-color: gray; text-align: center; background-color: white; color: #28E7FF"
									value="수정">
							</h5>
							</div>
							<div
								style="margin-bottom: 1rem; padding: 1rem; width: 100%; background-color: #dcdcdc; overflow-x:auto">
								<div style="display: inline-block">
									<a id="orderMemo" style="word-break:keep-all;white-space:pre;">-</a>
								</div>
								<div style="text-align: left; align: left; float: right">
									<a></a>
								</div>
							</div>

							<h5>
								회원 메모 <input type="button" id="popCustomOpenBtn"
									style="font-size: 1rem; border-style: solid; border-color: gray; text-align: center; background-color: white; color: #28E7FF"
									value="수정">
							</h5>
							<div
								style="margin-bottom: 1rem; padding: 1rem; width: 100%; background-color: #dcdcdc;overflow:auto;">
								<div id="customText" style="display: inline-block; word-break:keep-all;white-space:pre;">-</div>
							</div>

						</div>





					</div>


					<div style="margin-top: 1rem">
						<div
							style="border: 1px solid gray; display: inline-block; padding: 0.2rem">
							<input type="checkbox">전체 선택
						</div>
						<input type="button" value="엑셀 저장"> <input type="button"
							value="다중배송정보 입력">
					</div>


					
					<!-- 주문 메모 수정 버튼 모달 창 -->
					<div id="popupDiv" class="orderMemoUpdateModal">
						<!-- 팝업창 -->
						<div style="width:100%; height:40px; background-color:white; padding:1%">
							<a style="font-weight:bold">주문 메모</a>
							<button id="popCloseBtn"><i class="fas fa-undo-alt"></i>취소</button>
							<button id="popCompleteBtn"><i class="fas fa-check"></i>완료</button>
						</div>
						<div style="height:7px"></div>
						<div style="width:100%; height:173px;background-color:white; padding:1%">
							<textarea id="orderText" maxlength="1000" 
								style="overflow-x:hidden; overflow-y:auto; min-width:100%;
									min-height:100%; max-height:100%; border:0; resize:none;" placeholder="쿠폰 발행해 드렸던 주문"></textarea>
						</div>
						<div style="width:100%; height:30px">
							<a id="orderCount"></a>
						</div>
					</div>
					
					<!-- 회원 메모 수정 버튼 모달 창 -->
					<div id="popupCustomer">
						<!-- 팝업창 -->
						<div style="width:100%; height:40px; background-color:white; padding:1%">
							<a style="font-weight:bold">회원 메모</a>
							<button id="popCustomCloseBtn"><i class="fas fa-undo-alt"></i>취소</button>
							<button id="popCustomCompleteBtn"><i class="fas fa-check"></i>완료</button>
						</div>
						<div style="height:7px"></div>
						<div style="width:100%; height:173px; background-color:white; padding:1%">
							<textarea id="customerText" maxlength="1000" 
								style="overflow-x:hidden; overflow-y:auto; min-width:100%; 
									min-height:100%; max-height:100%; border:0; resize:none;" placeholder="회원 정보 관련 입력"></textarea>
						</div>
						<div style="width:100%; height:30px">
							<a id="customerCount"></a>
						</div>
					</div>
					
					<!-- 배송정보 입력 버튼 모달 창 -->
					<div id="sendModal">
						<!-- 팝업창 -->
						<div style="float:right;">
							<button id="sendCloseModal" style="background-color:white;border:0"><i class="fas fa-times"></i></button>
						</div>
						
						<div style="width:100%;background-color:#dcdcdc; padding:1%">
							<h6 style="font-weight:bold; margin-bottom:0">발송 정보</h6>
							<a style="font-size:70%">선택된 항목만 처리합니다</a>
						</div>
						
						<div style="margin-top:1%; margin-left:1%; margin-right:1%; 
							height:370px; background-color:white; border:1px solid gray">
							<table id="aboutSend" style="width:100%; border:1px solid black">
								<tr style="padding:3%">
									<th id="asdfasdf"><input type="checkbox" checked="checked"/></th>
									<th id="asdfasdf" width="190px">주문번호</th>
									<th id="asdfasdf">주문상태</th>
									<th id="asdfasdf">받는사람</th>
									<th id="asdfasdf">전화번호</th>
									<th id="asdfasdf" width="310px">주소</th>
									<th width="160px" style="background-color:#dcdcdc">
										<table style="width:150px; height:30px; margin-left:2%; background-color:white">
											<tr style="width:150px; height:30px" >
												<th style="border:1px solid gray; text-align:left; padding-right:2%">
													<a style="text-align:left">&nbsp;배송일 선택</a>
												</th>
												<th style="text-align:center">
													<i class="far fa-calendar" style=" margin-left:2%"></i>
												</th>
											</tr>
										</table>
									</th>
									<th id="asdfasdf" width="160px">
										<select style="width:150px; height:30px"><option>택배사 선택</option></select>
									</th>
									<th id="asdfasdf" width="170px">
										<input type="text" value="운송장 번호" size="10" readonly/>
										<input type="button" value="확인" style="background-color:red; color:white" readonly />
									</th>
								</tr>
								<tr>
									<td><input type="checkbox" checked="checked"/></td>
									<td>P_201904231810412010</td>
									<td>주문 완료</td>
									<td>김혜림</td>
									<td>05042468579</td>
									<td>경기도 부천시 원미구 역곡2동 동부센트레빌 아파트 2단지 202-1004</td>
									<td><input id="beforeDate" type="date" value="2020-07-15" max="2030-01-01" style="width:150px; height:30px"></td>
									<td>
										<select style="width:150px; height:30px">
											<option>CJ대한 통운</option>
										<option>우체국 택배</option>
										<option>우체국 등기</option>
										<option>한진 택배</option>
										<option>롯데 택배</option>
										<option>로젠 택배</option>
										</select>
									</td>
									<td>
										<input id="number" type="text" size="18" onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode) )) return false;"/>
									</td>
								</tr>
							</table>
						</div>
						
						<div style="float:right; margin-top:0.5%; margin-right:1%">
							<button id="sendCloseModala" style="width:70px"> 취소 </button>
							<button style="width:70px; background-color:red"> 확인 </button>							
						</div>
						
					</div>

				</div>

				<!-- footer -->
				<%@ include file="/view/include/footer.jsp" %>
				<!-- end footer -->
			</div>
		</div>
	</div>

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

	<!-- Page level plugins -->
	<script src="<c:url value='/vendor/chart.js/Chart.min.js'/>"></script>

	<!-- Page level custom scripts -->
<<<<<<< HEAD

=======
	<script src="<c:url value='/resources/js/demo/chart-area-demo.js'/>"></script>
	<script src="<c:url value='/resources//js/demo/chart-pie-demo.js'/>"></script>
>>>>>>> 536e9f97cbc75e05726f984de5f02f7ca521cbb2

	<script>		
		document.getElementById('beforeDate').value = new Date().toISOString()
				.substring(0, 10);
		document.getElementById('afterDate').value = new Date().toISOString()
				.substring(0, 10);
	</script>
	
	<script>
		$(document).ready(function(){
			// 주문 메모 수정 버튼 클릭시..
	        $("#popOpenBtn").click(function(event){  //팝업 Open 버튼 클릭 시 
	        
	        	const xButton = event.pageX;
	            const yButton = event.pageY;
	            
	             $("#popupDiv").css({
	            	"top": yButton + "px",
	            	"left": xButton + "px"
	                //"top": (($(window).height()-$("#popupDiv").outerHeight())/2+$(window).scrollTop())+"px",
	                //"left": (($(window).width()-$("#popupDiv").outerWidth())/2+$(window).scrollLeft())+"px"
	                //팝업창을 가운데로 띄우기 위해 현재 화면의 가운데 값과 스크롤 값을 계산하여 팝업창 CSS 설정
	             }); 
	            $("#orderText").val($("#orderMemo").text());
	            $("#popup_mask").css("display","block"); //팝업 뒷배경 display block
	            $("#popupDiv").css("display","block"); //팝업창 display block
	            $("#orderText").focus();
	       			
	        });
			
	   		// 주문메모 모달창 완료 버튼 클릭시
			$("#popCompleteBtn").click(function(event){
				const text = $("#orderText").val();
	        	console.log(text);
	        	$("#orderMemo").text(text);
	        	$("#orderText").val('');
	        	
				$("#popup_mask").css("display","none"); //팝업창 뒷배경 display none
	            $("#popupDiv").css("display","none"); //팝업창 display none
	            $("body").css("overflow","auto");//body 스크롤바 생성
			});
	     
			// 주문메모 모달창 취소 버튼 클릭시
	        $("#popCloseBtn").click(function(event){
	            $("#popup_mask").css("display","none"); //팝업창 뒷배경 display none
	            $("#popupDiv").css("display","none"); //팝업창 display none
	            $("body").css("overflow","auto");//body 스크롤바 생성
	            $("#orderText").val('');
	        });
			
			
		
	        
	        // 회원 메모 수정 버튼 클릭시.
	        $("#popCustomOpenBtn").click(function(event){  //팝업 Open 버튼 클릭 시 
	        	
	        	const xButton = event.pageX;
	            const yButton = event.pageY;
	            
	             $("#popupCustomer").css({
            	 	"top": yButton + "px",
	            	"left": xButton + "px"
	                //"top": (($(window).height()-$("#popupCustomer").outerHeight())/2+$(window).scrollTop())+"px",
	                //"left": (($(window).width()-$("#popupCustomer").outerWidth())/2+$(window).scrollLeft())+"px"
	                //팝업창을 가운데로 띄우기 위해 현재 화면의 가운데 값과 스크롤 값을 계산하여 팝업창 CSS 설정
	             }); 
	            $("#customerText").val($("#customText").text());
	            $("#popup_mask").css("display","block"); //팝업 뒷배경 display block
	            $("#popupCustomer").css("display","block"); //팝업창 display block
	            $("#customerText").focus();
	            
	        });
	        
	    	// 회원 메모 수정 모달 완료 버튼 클릭시.
	   	    $("#popCustomCompleteBtn").click(function(event){
	        	const text = $("#customerText").val();
	        	console.log(text);
	        	$("#customText").text(text);
	        	$("#customerText").val('');
	        	$("#popup_mask").css("display","none");
	        	$("#popupCustomer").css("display","none");
	        	$("body").css("overflow","auto");
	        });
	     
	   		// 회원 메모 수정 모달 취소 버튼 클릭시.
	        $("#popCustomCloseBtn").click(function(event){
	            $("#popup_mask").css("display","none"); //팝업창 뒷배경 display none
	            $("#popupCustomer").css("display","none"); //팝업창 display none
	            $("body").css("overflow","auto");//body 스크롤바 생성
	            $("#customerText").val('');
	        });
	        
	   		
	   		
	   		
	        
	        // 배송정보 입력 버튼
	        $("#aboutSendButton").click(function(event){  //팝업 Open 버튼 클릭 시 	
	        	
	             $("#sendModal").css({
	                "top": (($(window).height()-$("#sendModal").outerHeight())/2+$(window).scrollTop())+"px",
	                "left": (($(window).width()-$("#sendModal").outerWidth())/2+$(window).scrollLeft())+"px"
	                //팝업창을 가운데로 띄우기 위해 현재 화면의 가운데 값과 스크롤 값을 계산하여 팝업창 CSS 설정
	             }); 
	            $("#popup_mask").css("display","block"); //팝업 뒷배경 display block
	            $("#sendModal").css("display","block"); //팝업창 display block
	            $("#number").focus();
	            //$("body").css("overflow","hidden");//body 스크롤바 없애기
	            
	            $("#sendCloseModal").click(function(event){
		            $("#popup_mask").css("display","none"); //팝업창 뒷배경 display none
		            $("#sendModal").css("display","none"); //팝업창 display none
		            $("body").css("overflow","auto");//body 스크롤바 생성
		        });
		        $("#sendCloseModala").click(function(event){
		            $("#popup_mask").css("display","none"); //팝업창 뒷배경 display none
		            $("#sendModal").css("display","none"); //팝업창 display none
		            $("body").css("overflow","auto");//body 스크롤바 생성
		        });
	            
	        });
	        
		});
		
		
		$(function() {
		      $('#customerText').keyup(function (e){
		          var content = $(this).val();
		          $(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
		          $('#customerCount').html(content.length + '/1000');
		      });
		      $('#customerText').keyup();
		});
		
		$(function() {
		      $('#orderText').keyup(function (e){
		          var content = $(this).val();
		          $(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
		          $('#orderCount').html(content.length + '/1000');
		      });
		      $('#orderText').keyup();
		});
		
		/*
		$(function(){
			$("#wrapper").click(function (e){
            	var x = e.pageX;
            	var y = e.pageY;
            	var xButton = $("#popupCustomer").css("top").replace("px","");
            	var yButton = $("#popupCustomer").css("left").replace("px","");
            	console.log(xButton);
            	console.log(yButton);
            	console.log(x >= xButton);
            	console.log(x <= (xButton + 500));
            	console.log(y >= yButton);
            	console.log(y <= (yButton + 250));
            	console.log($("#popupCustomer").css("display"));
            	if($("#popupCustomer").css("display") == "block"){
	            	if(!(x >= xButton && x <= (xButton + 500) && y >= yButton && y <= (yButton + 250))){
	            		$("#popup_mask").css("display","none");
			        	$("#popupCustomer").css("display","none");
			        	$("body").css("overflow","auto");
	            	}
	            }
            });
		});
		*/
		
	</script>

</body>
</html>