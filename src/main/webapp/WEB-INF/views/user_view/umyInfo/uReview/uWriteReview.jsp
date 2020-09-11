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
   width: 580px;
   margin: 10px;
}

.imageContainer img {
   max-width: 65px;
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

.btn2{
    font-size: 12px;
    background-color: white;
    border: 1px solid #e7e7e7;
    height: 35px;
    width: 45px;
    outline: none;
    color: #666666;
    border-radius: 10px;
    text-align: center;
    padding: 5px;
    font-weight: bold;
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
		<div class="minwoo_uWriteReviewList">
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
		
		<div id="minwoo_uWriteReviewList" class="minwoo_uWriteReviewList" style="margin-top:10px;">
		</div>
		<!-- 구매후기 쓸 수 있는 작품 리스트 영역 끝 / 구매한 내역이 있을 때 -->
		
		<div id="pagination">
		</div>
		
		
		
		<!-- 구매후기 쓰기 모달 시작-->
				<div id="minwoo_myModal" class="minwoo_modal">

					<!-- 모달 속 영역 -->
					<div class="minwoo_modal-content">
						<!--모달 헤더 시작-->
						<div style="display: flex; width: 100%; height: 50px; justify-content: space-between; align-items: center;">
							<h2 style="color: #585858;">구매후기 작성</h2>
							<i class="minwoo_close fa fa-times fa-3x" onClick="modalClose()"></i>
						</div>
						<hr style="border: 0; height: 4px; background: #585858;">
						<!--모달 헤더 끝-->
						<!-- 불러올 구매한 작품 영역 시작-->
						<div style="display: flex; height: 70px; margin-top: 2%;">
							<div style="width: 70px; height: 70px;">
								<img id="modalArtImg" style="width:70px; height:70px;" src="">
							</div>
							<div style="flex-direction: column; width: 90%; margin-left: 2%;">
								<div style="height: 40%; font-size: 18px; font-weight: bold;" id="artName"></div>
								<!--옵션 내용 영역 시작 - 동일한 작품의 옵션이 서로 다른 물품들을 구매한 경우 포문 돌면서 값 가져오기 -->
								<div style="display: flex; flex-direction: column; height: 60%; overflow: auto; font-size: 15px;">
									<!--여기서부터 옵션 이 다른 물품 하나씩의 값-->
										<div style="margin-top: 1px; display: flex; flex-direction: row;">
											<div style="width: 85%;" id="modalOptionCategory"></div>
											<div style="width: 15%;" id="modalOptionCount"></div>
										</div>
										<!-- <div style="margin-top: 1px; display: flex; flex-direction: row;">
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
										</div> -->
									<!--여기까지 돌리기-->
								</div>
								<!-- 옵션 내용 영역 끝-->
							</div>
						</div>
						<!-- 불러올 구매한 작품 영역 끝 -->

						<!--입력 부분 시작-->
						<form id="minwoo_modal_form" action="<c:url value=''/> " method="post" enctype="multipart/form-data" name="formSubmit">
							<input type="hidden" id="writerCodeSeq" name="writerCodeSeq" />
							<input type="hidden" id="artCodeSeq" name="artCodeSeq" />
							<input type="hidden" id="buyArtCodeSeq" name="buyArtCodeSeq" />
							<div style="border: 1px solid #D8D8D8; margin-top: 2%;">
								<!-- 별점 시작-->
								<div style="height: 120px; background-color: #F2F2F2; display: flex; flex-direction: column;">
									<div style="height: 70%; display:flex; justify-content:center; align-items:center;">
										<div class="minwoo_starRev">
											<span class="minwoo_starR1 on">1</span> <span class="minwoo_starR2">2</span>
											<span class="minwoo_starR1">3</span> <span class="minwoo_starR2">4</span>
											<span class="minwoo_starR1">5</span> <span class="minwoo_starR2">6</span>
											<span class="minwoo_starR1">7</span> <span class="minwoo_starR2">8</span>
											<span class="minwoo_starR1">9</span> <span class="minwoo_starR2">10</span>
											<input type="hidden" id="starReview" name="starReview"/>
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
										<div id="minwoo_review_photo" onClick="fnUpload();" class="fa fa-picture-o fa-4x" aria-hidden="true"
											style="margin-left:22px;"></div>
										<input type="file" id="image" name="reviewPhoto" onchange="setThumbnail(event);" style="display:none;" accept="image/*" multiple />
                        				<div class="imageContainer"></div>
									</div>
									<p style="font-size:14px;">
										사진은 5개까지 등록가능하며, 여러장을 올리실 경우 한 번에 선택하여 주세요.<br>사진을 잘못 선택하신 경우 '다시선택'을 누르신 후 '취소'를 누르시면 삭제할 수 있습니다.
									</p>
								</div>
								<!-- 사진 등록 끝 -->
							</div>
							<!-- 입력버튼 -->
							<div style="margin-top: 20px; display: flex; justify-content: center; height: 30px;">
								<input type="button" value="등록" style="margin: auto; color: #1f76bb; font-size: 20px; font-weight: bold;" onclick="saveReview(event);">
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
		var memberCode = '<%= (String)session.getAttribute("member") %>';
	
		/*작업 마무리 못함 추가 작업 필요..*/
		/*이미지 업로드(and 제거) 썸네일 생성 이벤트*/
		function fnUpload(){
			$('#image').click();
		};
		
		var upCheck = false;
		function setThumbnail(event) {  
			$(".imageContainer").empty();
			upCheck = false;
			for (var image of event.target.files) {
				var reader = new FileReader(); 
				reader.onload = function(event) { 
				
					var img = document.createElement("img");
					img.setAttribute("src", event.target.result);
					
					// 파일 유효성 검사
					const fileEx = image.name.slice(image.name.lastIndexOf(".")+1).toLowerCase();
					if(fileEx != "jpg" && fileEx != "png" && fileEx != "gif" && fileEx != "bmp" && fileEx != "jpeg") {
					alert('파일은 이미지파일(jpg, jpeg, png, gif, bmp)만 가능합니다.');
					return false;
					}
					      
					var divEle = document.createElement("a");
					divEle.appendChild(img);
					divEle.setAttribute("class","reviewPhotoA");
					$('.reviewPhotoA').css("margin-left","22px");
					document.querySelector("div.imageContainer").appendChild(divEle);
				};
				console.log(image); 
				reader.readAsDataURL(image);
				upCheck = true;
			}
			console.log(upCheck);
			if(upCheck){
				/* $('#minwoo_review_photo').css("font-size", "12px");
				$('#minwoo_review_photo').css("text-align", "center");
				$('#minwoo_review_photo').css("width", "45px"); */
				$('#minwoo_review_photo').html("다시<br>선택");
				$('#minwoo_review_photo').removeClass("fa fa-picture-o fa-4x");
				$('#minwoo_review_photo').addClass("btn2");
				btn2
			} else {
				/* $('#minwoo_review_photo').css("font-size", "");
				$('#minwoo_review_photo').css("text-align", "");
				$('#minwoo_review_photo').css("width", ""); */
				$('#minwoo_review_photo').text("");
				$('#minwoo_review_photo').removeClass("btn2");
				$('#minwoo_review_photo').addClass("fa fa-picture-o fa-4x");
			}
			/* var divReset = document.createElement("button");
			divReset.setAttribute("class","resetPhoto");
			divReset.setAttribute("onClick","fnUpload()");
			document.querySelector("div.imageContainer").appendChild(divReset);
			$('.resetPhoto').css("margin-left","22px");
			$('.resetPhoto').text("다시 등록"); */
		};
		
		// 데이터 넣기
		var result = new Array();
		
		<c:forEach var="i" items='${reviewList}'>
			var json = new Object();//객체로 배열에 담기
			json.buyArtCodeSeq = '${i.buyArtCodeSeq}';
			json.bArtCodeSeq = '${i.bArtCodeSeq}';
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
		
		var page = 1;
		
		var pagingFunc = function(){
			
			var pageCount = 5;
			var totalPage = Math.ceil(result.length / pageCount);
			var pagination = document.getElementById('pagination');
			
			var htmldiv = '';
			var artImg = '';
			
			//테이블 그리는 함수
			var renderTable = function(page){
				var startNum = (pageCount * (page - 1)); 
				var endNum = ((pageCount * page) >= result.length) ? result.length : (pageCount * page);

				for(var index = startNum; index < endNum; index++){
					artImg = result[index].artPhoto.split(',')[0];
					
					htmldiv += '<div class=\"minwoo_uWriteReview_ListContent\">'
						+ '<input type=\"hidden\" value=\"' + result[index].buyArtCodeSeq +'\" />'
						+ '<input type=\"hidden\" value=\"' + result[index].bArtCodeSeq +'\" />'
						+ '<input type=\"hidden\" value=\"' + result[index].bArtName +'\" />'
						+ '<input type=\"hidden\" value=\"' + result[index].bWriterCodeSeq +'\" />'
						+ '<input type=\"hidden\" value=\"' + artImg +'\" />'
						+ '<input type=\"hidden\" value=\"' + result[index].bArtOptionCount +'\" />'
						+ '<div class=\"minwoo_uWriteReview_ListContent_body\">'
						+ '<div class=\"minwoo_uWriteReview_ListContent_body_head\">'
						+ '<div class=\"minwoo_uWriteReview_ListContent_body_head_photo\">'
                        + '<img src=\"/bomulsum/upload/' + artImg + '\" style=\"width:60px; height:60px\">'
						+ '</div>'
						+ '<div style=\"margin-left:10px; margin-top:3px;\">'
						+ '<div style=\"font-weight:bold;\">'
						+ '<a href=\"#\" style=\"text-decoration:none;\">' + result[index].bArtName + '</a>'
						+ '</div>'
						+ '<div style=\"margin-top:3px;\">'
						+ '<a href=\"#\" style=\"text-decoration:none; font-weight:bold; font-size:smaller; color:#BDBDBD;\">'
						+ result[index].writerName + '</a>'
						+ '</div>'
						+ '</div>'
						+ '</div>'
						+ '<ul class=\"minwoo_contentOptionUl\">'
						+ '<li>' + result[index].bArtOptionCategory + ' : ' + result[index].bArtOptionName + '</li>'
						+ '<li> 작품 설명 : ' + result[index].artDescription + '</li>'
						+ '<li> 구매 일자 : ' + result[index].orderDate + '</li>'
						+ '<li> 구매 수량 : ' + result[index].bArtOptionCount + '</li>'
						+ '</ul>'
						+ '</div>'
						+ '<button class=\"minwoo_uWriteReview_ListContent_button\" onClick=\"modalOpen()\">구매후기 작성하기</button>'
						+ '</div>';
				}
				htmldiv = htmldiv.replace(/%20/gi, ' ');
				$('.minwoo_uWriteReviewList').html(htmldiv);
				$(".minwoo_uWriteReview_ListContent_button").on('click',modal);
			}
			renderTable(page);
		};
		
		/* 모달 구동 스크립트 영역*/
		function modalOpen() {
			$('#minwoo_myModal').css('display', 'block');
		};
		function modalClose() {
			$('#minwoo_myModal').css('display', 'none');
		};
		
		//모달
		//모달 띄워줄때 해당 값 넣기
		var modalArtCode;
		var modalBuyArtCode;
		var modalArtPhoto;
		var modalWriterCode;
		var modalOptionCategory;
		var modalOptionName;
		var modalOptionCount;
		var modalArtName;
		
		//구매후기 인써트할 때 값
		var reviewStar;
		
		var modal = function(){
			/* 별점 주기 스크립트 영역 */
			$('.minwoo_starRev span').click(function(){
				  $(this).parent().children('span').removeClass('on');
				  $(this).addClass('on').prevAll('span').addClass('on');
				  reviewStar = $(this).val();
				  console.log(reviewStar);
				  return false;
				});
			// 별점 값 저장
			$('.minwoo_starRev span').click(function(){
				var targetNum = $(this).index() + 1;
				console.log(targetNum);
			});
			$('#starReview').val(reviewStar);
			/* 별점 주기 스크립트 영역*/
			
			//글자수 제한
			$('#reviewComment').keyup(function(e) {
				var comment = $(this).val();
				$(this).height(((comment.split('\n').length + 1) * 1.5) + 'em');
				$('#counter').html(comment.length + '/1000');
			});
			$('#reviewComment').keyup();
			
			//사진 업로드 영역 초기화
			/* $('#minwoo_review_photo').css("display", "block");
			$('#minwoo_review_photo').css("font-size", "");
			$('#minwoo_review_photo').css("text-align", "");
			$('#minwoo_review_photo').css("width", ""); */
			$('#minwoo_review_photo').text("");
			$('#minwoo_review_photo').removeClass("btn2");
			$('#minwoo_review_photo').addClass("fa fa-picture-o fa-4x");
			$(".imageContainer").empty();
			
			
			//모달에 값 입력해주기
			modalBuyArtCode = $.trim($(this).closest('div').children('input').eq(0).val());
			modalArtCode = $.trim($(this).closest('div').children('input').eq(1).val());
			modalArtName = $.trim($(this).closest('div').children('input').eq(2).val());
			modalWriterCode = $.trim($(this).closest('div').children('input').eq(3).val());
			modalArtPhoto = $.trim($(this).closest('div').children('input').eq(4).val());
			modalOptionCategory = $.trim($(this).closest('div').children('div').children('ul').children('li').eq(0).text());
			modalOptionCount = $.trim($(this).closest('div').children('input').eq(5).val());
			console.log("모달에 뜨워준 구매작품 코드 : " + modalBuyArtCode);
			console.log("모달에 뜨워준 작품 코드 : " + modalArtCode);
			console.log("모달에 띄워준 작품 이름 : " + modalArtName);
			console.log("모달에 띄워준 작가 이름 : " + modalWriterCode);
			console.log("모달에 띄워준 작품 경로 : " + modalArtPhoto);
			console.log("모달에 띄워준 옵션 카테고리 : " + modalOptionCategory);
			console.log("모달에 띄워준 옵션 이름 : " + modalOptionName);
			console.log("모달에 띄워준 옵션 수량 : " + modalOptionCount);


			//모달에 띄워주는변수들
			$('#artName').text(modalArtName);
			$('#reviewComment').val(''); // 수정으로 들어갔을때 값이 남아있지 않게 초기화 시켜주고, 다시 불러오기
			$("#modalArtImg").attr("src", "/bomulsum/upload/" + modalArtPhoto);
			$('#modalOptionCategory').text(modalOptionCategory);
			$('#modalOptionCount').text("수량 : " + modalOptionCount + "개");
			
			//모달에서 폼 으로 데이터 넘길 때 물고가야 할 것들
			$('#buyArtCodeSeq').val(modalBuyArtCode);
			$('#artCodeSeq').val(modalArtCode);
			$('#writerCodeSeq').val(modalWriterCode);
	
		};
		//모달 부분 종료
		$(document).ready(function(){
			pagingFunc();
		});
		
		function saveReview(event){
			event.preventDefault();
			
			let reviewComment = document.getElementById('reviewComment');
			
			if(reviewComment.value == ''){
				alert('후기 내용을 입력해 주세요.');
				reviewComment.focus();
				return false;
			}
			
			formSubmit.submit();	
		}
		
		</script>
		<!-- 스크립트 -->
</body>
</html>