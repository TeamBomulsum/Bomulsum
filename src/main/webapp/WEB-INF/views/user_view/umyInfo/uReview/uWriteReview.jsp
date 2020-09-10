<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 구매후기 쓰기</title>
<script src="<c:url value='/resources/vendor/jquery/jquery.min.js' />"></script>

<style>

.content {
	width: 70%;
	margin-left: auto;
	margin-right: auto;
	padding-top: 36px;
	padding-bottom: 64px;
	display: flex;
}

body a:link, a:visited, a:hover, a:active {
	text-decoration: none;
	border: none;
}
#minwoo_reviewBorder{
	border-top:3px solid black; 
	border-right:3px solid black; 
	border-left:3px solid black;  
}
#minwoo_reviewBorderSub{
	border-top:1px solid black;
	border-right:1px solid black;
	border-bottom:3px solid black;
}
.minwoo_reviewA{
	font-size:15px;
	width:100%;
	height:100%;
	display:flex;
	justify-content:center;
	align-items:center;
	text-decoration:none;
	font-weight:bold;
}
#minwoo_uWriteReviewList{
	height:80%;
	width:100%;
	overflow:auto;
	display:flex;
	flex-direction:column;
}
#noReviewContent{
	margin-left:auto;
	margin-right:auto;
	margin-top:5%;
	display:flex;
	flex-direction:column;
	align-items:center;
}
.minwoo_uWriteReview_ListContent{
	margin-top:20px;
	margin-left:auto;
	margin-right:auto;
	width:99%;
	border-width:1px;
	border-style:solid;
	border-color:#BDBDBD;
}
.minwoo_uWriteReview_ListContent_body{
	margin-top:10px;
	margin-left:10px;
	margin-right:10px;
}
.minwoo_uWriteReview_ListContent_button{
	margin-top:10px;
	margin-bottom:10px;
	height:auto;
	width:95%;
	border-width:1px;
	border-style:solid;
	border-color:#BDBDBD;
	margin-left:auto;
	margin-right:auto;
	display:flex;
	color:#1C1C1C;
	background-color:#FFFFFF;
	display:flex;
	justify-content:center;
	align-items:center;
	padding-top:10px;
	padding-bottom:10px;
	font-size:15px;
}
.minwoo_uWriteReview_ListContent_button:active{
	margin-top:10px;
	margin-bottom:10px;
	height:auto;
	width:95%;
	border-width:1px;
	border-style:solid;
	border-color:#BDBDBD;
	margin-left:auto;
	margin-right:auto;
	display:flex;
	color:#1C1C1C;
	background-color:#FFFFFF;
	display:flex;
	justify-content:center;
	align-items:center;
	padding-top:10px;
	padding-bottom:10px;
	font-size:15px;
}
.minwoo_uWriteReview_ListContent_buttonA{
	width:100%;
	height:100%;
	margin-top:10px;
	margin-bottom:10px;
	display:flex;
	justify-content:center;
	align-items:center;
	text-decoration:none;
	font-size:15px;
	color:#1C1C1C;
	border:none;
}
.minwoo_uWriteReview_ListContent_buttonA:active{
	text-decoration:none;
	border:none;
}
.minwoo_uWriteReview_ListContent_body_head{
	padding-inline-start: 20px;
	display:flex;
	flex-direction:row;
}
.minwoo_uWriteReview_ListContent_body_head_photo{
	width:60px;
	height:60px;
}

.minwoo_contentOptionUl{
	 font-size:small;
	 color:#6E6E6E;
	 margin-top:10px;
}

.minwoo_modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 30px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* 모달 내부 영역 */
.minwoo_modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  padding-top: 5px;
  border: 1px solid #888;
  width: 620px;
  max-height: 660px;
}

/* 모달 닫기 버튼 */
.minwoo_close {
  color: #1f76bb;
}

.minwoo_close:hover,
.minwoo_close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

.minwoo_starRev{
	height:60%;
}

.minwoo_starR1{
    background: url('<c:url value='/resources/img/KMWico_review.png'/>') no-repeat -104px 0;
    background-size: auto 100%;
    width: 30px;
    height: 60px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.minwoo_starR2{
    background: url('<c:url value='/resources/img/KMWico_review.png'/>') no-repeat right 0;
    background-size: auto 100%;
    width: 30px;
    height: 60px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.minwoo_starR1.on{background-position:0 0;}
.minwoo_starR2.on{background-position:-30px 0;}



#imgs{
   margin-right:2%;
}
.imageContainer {
   width: 800px;
   margin: 10px;
}

.imageContainer img {
   max-width: 100px;
}

.reviewComment{
	max-height:110px; min-height:80px;
	border:none;
	outline: none;
	-ms-overflow-style: none; /* IE and Edge */
    scrollbar-width: none; /* Firefox */
    resize: none;
    font-size: 15px; padding: 2%;
}
/*스크롤바 안보이게 하기*/
.reviewComment::-webkit-scrollbar {
    display: none; /* Chrome, Safari, Opera*/
}


</style>
</head>
<body>
<div>
	<c:if test="${empty member}">
		<script>
			alert('로그인이 필요한 서비스입니다.');
			location.href='<c:url value="/user/login.do"/>';
		</script>
	</c:if>

	<!-- 헤더 -->
	<%@ include file="../../include/uHeader.jsp"  %>
	
	
	<!-- 콘텐트 div 시작 사이드 -->
	<div class="content" style="display:flex;">
	<!-- 사이드메뉴 -->
	<%@ include file="../../include/uside.jsp" %>
	<!-- 내용 여기다 넣으시오 -->
	
	<!-- main div 시작 -->
	<div style="margin-left:2%; width:80%;">
		<div>
			<h2>나의 구매 후기</h2>
		</div>
		
		
		
		
		<!-- 상단 구매후기 설명 -->
		<p style="background-color:#E6E6E6; font-size:13px; width:100%;">
			<br>
			&emsp;&emsp;여러분들이 작성해주시는 솔직한 구매후기는 핸드메이드 작품 선택을 고민하는 분들에게 선택의 도움을 줄 수 있답니다.
			<br>
			&emsp;&emsp;구매하신 작품마다 1회의 구매후기 작성과 1회의 수정이 가능합니다.
			<br>
			&emsp;&emsp;단, 작성하신 구매후기를 삭제하면 다시 작성할 수 없으니 신중히 평가해 주세요.
			<br>
			<br>
			&emsp;&emsp;해당 작품과 무관한 내용이나 비방, 욕설 등 부적합한 내용의 구매후기는 서비스 이용 약관이나 관련 법률에 의해 제재를 받을 수 있습니다.
			<br><br/>
		</p>
		<!-- 상단 구매후기 설명 종료 -->
		
		
		
		
		<!-- 구매 후기 탭 메뉴 -->
		<nav style="height:5%; width:100%; display:flex; flex-direction:row;">
			<div id="minwoo_reviewBorder" style="width:50%; height:100%;">
				<a href="#" class="minwoo_reviewA">구매후기 쓰기</a>
			</div>
			<div id="minwoo_reviewBorderSub" style="width:50%; height:100%;">
				<a href="<c:url value='/user/myInfo/reviewedList.do'/>" class="minwoo_reviewA" style="color:#BDBDBD;">내가 쓴 구매후기</a>
			</div>
		</nav>
		<!-- 구매 후기 탭 메뉴 종료 -->
		
		
		
		<!-- 구매후기 쓸 수 있는 작품 리스트 영역 / 구매한 내역이 없을 때 -->
		<!-- 구매리스트 많아지면 스크롤로 넘어가도록 오버플로우 오토 줬는데, 페이징 처리로 해야될지도.. -->
		<!-- 
		<div id="uWriteReviewList">
			<div id="noReviewContent">
				<img src="<c:url value='/resources/img/KMWnoReview.png'/>" style="width:240px;; height:240px;">
				<p style="font-weight:bold;color:#BDBDBD;">
				작성할 수 있는 구매후기가 없습니다.
				</p>
			</div>
		</div>
		 -->
		<!-- 구매후기 쓸 수 있는 작품 리스트 영역 끝 / 구매한 내역이 없을 때 -->
		
		 
		 
		 
		 
		 
		<!-- 구매후기 쓸 수 있는 작품 리스트 영역 / 구매한 내역이 있을 때 -->
		
		<div id="minwoo_uWriteReviewList" style="margin-top:10px;">
			<div class="minwoo_uWriteReview_ListContent">
			
				<div class="minwoo_uWriteReview_ListContent_body">
					<div class="minwoo_uWriteReview_ListContent_body_head">
						<div class="minwoo_uWriteReview_ListContent_body_head_photo">
							<img src="<c:url value='/resources/img/KMWcake.jpg'/>" style="width:100%; height:100%;">
						</div>
						<div style="margin-left:10px; margin-top:3px;">
							<div style="font-weight:bold;">
								<a href="#" style="text-decoration:none;">작품제목</a>
							</div>
							<div style="margin-top:3px;">
								<a href="#" style="text-decoration:none; font-weight:bold; font-size:smaller; color:#BDBDBD;">작가이름</a>
							</div>
						</div>
					</div>
					<ul class="minwoo_contentOptionUl">
						<li>옵션명1 : 내용</li>
						<li>옵션명2 : 내용</li>
						<li>옵션명3 : 내용</li>
						<li>옵션명4 : 내용</li>
					</ul>
				</div>
				<button id="btn" class="minwoo_uWriteReview_ListContent_button">구매후기 작성하기</button>
			</div>
			
		</div>
		<!-- 구매후기 쓸 수 있는 작품 리스트 영역 끝 / 구매한 내역이 있을 때 -->
		
		
		
		
		
		<!-- 구매후기 쓰기 모달 시작-->
				<div id="minwoo_myModal" class="minwoo_modal">

					<!-- 모달 속 영역 -->
					<div class="minwoo_modal-content">
						<!--모달 헤더 시작-->
						<div style="display: flex; width: 100%; height: 50px; justify-content: space-between; align-items: center;">
							<h2 style="color: #585858;">구매후기 작성</h2>
							<i class="minwoo_close fa fa-times fa-3x"></i>
						</div>
						<hr style="border: 0; height: 4px; background: #585858;">
						<!--모달 헤더 끝-->
						<!-- 불러올 구매한 작품 영역 시작-->
						<div style="display: flex; height: 70px; margin-top: 2%;">
							<div style="width: 70px; height: 70px;">
								<img style="width:70px; height:70px;" src='<c:url value='/resources/img/KMWcake.jpg'/>'>
							</div>
							<div style="flex-direction: column; width: 90%; margin-left: 2%;">
								<div style="height: 40%; font-size: 18px; font-weight: bold;">
								작품 제목 입력
								</div>
								<!--옵션 내용 영역 시작 - 동일한 작품의 옵션이 서로 다른 물품들을 구매한 경우 포문 돌면서 값 가져오기 -->
								<div style="display: flex; flex-direction: column; height: 60%; overflow: auto; font-size: 15px;">
									<!--여기서부터 옵션 이 다른 물품 하나씩의 값-->
										<div style="margin-top: 1px; display: flex; flex-direction: row;">
											<div style="width: 90%;">
												선택한 옵션
											</div>
											<div style="width: 10%;">00 개수</div>
										</div>
										<div style="margin-top: 1px; display: flex; flex-direction: row;">
											<div style="width: 90%;">
												선택한 옵션
											</div>
											<div style="width: 10%;">00 개수</div>
										</div>
										<div style="margin-top: 1px; display: flex; flex-direction: row;">
											<div style="width: 90%;">
												선택한 옵션
											</div>
											<div style="width: 10%;">00 개수</div>
										</div>
									<!--여기까지 돌리기-->
								</div>
								<!-- 옵션 내용 영역 끝-->
							</div>
						</div>
						<!-- 불러올 구매한 작품 영역 끝 -->

						<!--입력 부분 시작-->
						<form id="minwoo_modal_form" action="" method="post">
							<div style="border: 1px solid #D8D8D8; margin-top: 2%;">
								<!-- 별점 시작-->
								<div style="height: 120px; background-color: #F2F2F2; display: flex; flex-direction: column;">
									<div style="height: 70%; display:flex; justify-content:center; align-items:center;">
										<div class="minwoo_starRev">
											<span class="minwoo_starR1 on">별1_왼쪽</span> <span class="minwoo_starR2">별1_오른쪽</span>
											<span class="minwoo_starR1">별2_왼쪽</span> <span class="minwoo_starR2">별2_오른쪽</span>
											<span class="minwoo_starR1">별3_왼쪽</span> <span class="minwoo_starR2">별3_오른쪽</span>
											<span class="minwoo_starR1">별4_왼쪽</span> <span class="minwoo_starR2">별4_오른쪽</span>
											<span class="minwoo_starR1">별5_왼쪽</span> <span class="minwoo_starR2">별5_오른쪽</span>
										</div>
									</div>
									<div style="height: 30%; text-align: center; display: flex; justify-content: center; font-size: 13px;">
										별표를 클릭하여 평가하세요.
									</div>
								</div>
								<!--별점 끝-->
								<!-- 후기 입력 시작-->
								<div style="display:flex; flex-direction:column; height: 130px; padding: 10px">
									<textarea class="reviewComment" id="reviewComment"
										name="reviewComment" maxlength="1000" placeholder="후기를 입력해주세요."></textarea>
									<span id="counter" style="font-size:12px; text-align-last: right;">###</span>
								</div>
								<!-- 후기 입력 끝-->
								<!-- 사진 등록 시작 -->
								<div style="height: 130px; padding: 10px; border-top: 1px solid #D8D8D8;">
									<div id="minwoo_review_photo_line" style="height:70px; border:1px solid; display:flex; flex-direction:row; align-items:center;">
										<div name="minwoo_review_photo" class="fa fa-picture-o fa-5x" aria-hidden="true" style="margin-left:22px;">
											<input type="file" id="image" onchange="setThumbnail(event);" style="display:none;" accept="image/*" multiple />
										<!-- onclick="" onchange="setThumbnail(event);"  -->
										</div>
                        				<div class="imageContainer"></div>
									</div>
									<p>
										사진은 6개까지 등록가능합니다.<br>등록된 사진은 드래그하면 순서 변경이 되고, 클릭을 하면 삭제할
										수 있습니다.
									</p>
								</div>
								<!-- 사진 등록 끝 -->
							</div>
							<!-- 입력버튼 -->
							<div style="margin-top: 20px; display: flex; justify-content: center; height: 30px;">
								<input type="submit" value="등록" style="margin: auto; color: #1f76bb; font-size: 20px; font-weight: bold;">
							</div>
						</form>
						<!--입력 부분 끝-->
						<!--등록 버튼-->
					</div>
					<!-- 모달 속 영역 -->
				</div>
				<!-- 구매후기 쓰기 모달 끝 -->
	
	
	
	
	
	</div>
	<!-- end main div -->
	</div>
	<!-- end 콘텐트 div -->

	<!-- 푸터  -->
	<%@ include file="../../include/uFooter.jsp" %>
</div>

		<!--스크립트 -->
		<script>
		/* 모달 구동 스크립트 영역*/
		var minwoo_modal = document.getElementById("minwoo_myModal");
		var minwoo_btn = document.getElementById("btn");
		var minwoo_span = document.getElementsByClassName("minwoo_close")[0];
		// 버튼 클릭시 모달 띄우기
		minwoo_btn.onclick = function() {
		  minwoo_modal.style.display = "block";
		}
		// 모달 안에 닫기 버튼 이벤트
		minwoo_span.onclick = function() {
		  minwoo_modal.style.display = "none";
		}
		// 다른 영역 눌렀을 때도 모달 안닫아지게, 다른 영역 눌렀을 때 닫아지게 하려면 none 으로 바꿔주면 됨
		window.onclick = function(event) {
		  if (event.target == minwoo_modal) {
		    minwoo_modal.style.display = "block";
		  }
		}
		/* 모달 구동 스크립트 영역*/
		
		
		
		/* 별점 주기 스크립트 영역 - 나중에 값 넘겨주는거 추가해야 함*/
		$('.minwoo_starRev span').click(function(){
			  $(this).parent().children('span').removeClass('on');
			  $(this).addClass('on').prevAll('span').addClass('on');
			  return false;
			});
		/* 별점 주기 스크립트 영역*/
		
		$('.minwoo_starRev span').click(function(){
			var targetNum = $(this).index() + 1;
			console.log(targetNum);
		});
		
		$('#reviewComment').keyup(function(e) {
			var comment = $(this).val();
			$(this).height(((comment.split('\n').length + 1) * 1.5) + 'em');
			$('#counter').html(comment.length + '/1000');
		});
		$('#reviewComment').keyup();
		
		$('#reviewCommentRe').val('');
		
		/*작업 마무리 못함 추가 작업 필요..*/
		/*이미지 업로드(and 제거) 썸네일 생성 이벤트*/
		
		function removeImg(){
		   var id = document.getElementById('imgs');
		   id.removeChild(id);
		}
		
		$("div[name='minwoo_review_photo']").click(function(){
			function setThumbnail(event) { 
			   for (var image of event.target.files) { 
			      var reader = new FileReader(); 
			      reader.onload = function(event) { 
			         var img = document.createElement("img"); 
			         img.setAttribute("src", event.target.result); 
			         var divEle = document.createElement("a");
			         divEle.setAttribute("href","#");
			         divEle.setAttribute("onclick","removeImg();")
			         divEle.setAttribute("id","imgs")
			         divEle.appendChild(img);
			         document.querySelector("div.imageContainer").appendChild(divEle);
			      }; 
			      console.log(image); 
			      reader.readAsDataURL(image); 
			   }
			}
		});
		
		// 데이터 넣기
		var result = new Array();
		
		<c:forEach var="i" items='${reviewList}'>
			var json = new Object();//객체로 배열에 담기
			json.buyArtCodeSeq = '${i.buyArtCodeSeq}';
			json.bArtName = '${i.bArtName}';
			json.bWriterCodeSeq = '${i.bWriterCodeSeq}';
			json.bArtOptionCategory = `${i.bArtOptionCategory}`;
			json.bArtOptionName = '${i.bArtOptionName}';
			json.bArtOptionCount = `${i.bArtOptionCount}`;
			json.artPhoto = `${i.artPhoto}`;
			json.artDescription = `${i.artDescription}`;
			json.writerName = `${i.writerName}`;
			json.orderDate = `${i.orderDate}`;
			
			result.push(json);
		</c:forEach>
		
		</script>
		<!-- 스크립트 -->
</body>
</html>