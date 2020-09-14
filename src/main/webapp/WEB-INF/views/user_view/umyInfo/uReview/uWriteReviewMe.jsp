<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 내가 쓴 구매후기</title>
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
	border-left:1px solid black;
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
#minwoo_uWriteReviewMeList{
	width:100%;
	display:flex;
	flex-wrap:wrap;
}

#noReviewContent{
	margin-left:auto;
	margin-right:auto;
	margin-top:5%;
	display:flex;
	flex-direction:column;
	align-items:center;
}
.minwoo_uWriteReviewMe_ListContent{
	margin-top:20px;
	margin-left:10px;
	width:48%;
	height:200px;
	border-width:1px;
	border-style:solid;
	border-color:#BDBDBD;
}
.minwoo_uWriteReviewMe_ListContent_body{
	margin-top:10px;
	margin-left:10px;
	margin-right:10px;
}

.minwoo_uWriteReviewMe_ListContent_body_head{
	display:flex;
	flex-direction:row;
	align-items:center;
	width:100%;
}
.minwoo_uWriteReviewMe_ListContent_body_head_photo{
	width:60px;
	height:60px;
}

/*별점 표현하기*/
.minwoo_starRev{
/* 	width:100%;
	height:30px;
	margin-left: 5px;
    margin-right: 5px;
    margin-top:7px;
    margin-bottom: 7px; */
    display: inline-flex;
}

.minwoo_starR1{
    background: url('<c:url value='/resources/img/KMWico_review.png'/>') no-repeat -38px 0;
    background-size: auto 100%;
    width: 11px;
    height: 22px;
    float:left;
    text-indent: -9999px;
}
.minwoo_starR2{
    background: url('<c:url value='/resources/img/KMWico_review.png'/>') no-repeat right 0;
    background-size: auto 100%;
    width: 11px;
    height: 22px;
    float:left;
    text-indent: -9999px;
}
.minwoo_starR1.on{background-position:0 0;}
.minwoo_starR2.on{background-position:-11px 0;}

.minwoo_reviewComment_div{
	margin-top:5px;
	overflow: auto;
	height: 50px;
	font-size: 14.5px;
}
.minwoo_reviewComment_div::-webkit-scrollbar {
    width: 10px;
  }
  
.minwoo_reviewComment_div::-webkit-scrollbar-thumb {
    background-color: white;
    border-radius: 10px;
    background-clip: padding-box;
    border: 2px solid transparent;
  }
.minwoo_reviewComment_div::-webkit-scrollbar-track {
    background-color: #d9d9d9;
    border-radius: 10px;
    box-shadow: inset 0px 0px 5px white;
 }

</style>
</head>
<body>
	<c:if test="${empty member}">
		<script>
			alert('로그인이 필요한 서비스입니다.');
			location.href='<c:url value="/user/login.do"/>';
		</script>
	</c:if>
	<c:if test="${param.checkReg eq 1}">
		<script type="text/javascript">
			alert("글이 수정 되었습니다.");
			location.href="/bomulsum/user/myInfo/reviewedList.do";
		</script>
	</c:if>
<div>
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
		<nav style="height:50px; width:100%; display:flex; flex-direction:row;">
			<div id="minwoo_reviewBorderSub" style="width:50%; height:100%;">
				<a href="<c:url value='/user/myInfo/review.do'/>" class="minwoo_reviewA">구매후기 쓰기</a>
			</div>
			<div id="minwoo_reviewBorder" style="width:50%; height:100%;">
				<a href="<c:url value='/user/myInfo/reviewedList.do'/>" class="minwoo_reviewA" style="color:#BDBDBD;">내가 쓴 구매후기</a>
			</div>
		</nav>
		<!-- 구매 후기 탭 메뉴 종료 -->
		
		
		
		
		
		<!-- 구매후기 쓸 수 있는 작품 리스트 영역 / 구매한 내역이 없을 때 -->
		<!-- 구매리스트 많아지면 스크롤로 넘어가도록 오버플로우 오토 줬는데, 페이징 처리로 해야될지도.. -->
		<!-- 
		<div id="uWriteReviewList">
			<div id="noReviewContent">
				<img src="<c:url value='/resources/img/KMWnoReviewMe.png'/>" style="width:240px;; height:240px;">
				<p style="font-weight:bold;color:#BDBDBD; text-align:center;">
				구매후기를 남겨주시면 작가님이<br>함박 웃음을 지으며 기뻐하신답니다!
				</p>
			</div>
		</div>
		 -->
		<!-- 구매후기 쓸 수 있는 작품 리스트 영역 끝 / 구매한 내역이 없을 때 -->
	
	
	
	
		<!-- DB에서 값 불러오기 -->
		<!-- 구매후기 리스트 영역 시작 -->
		
			<div id="minwoo_uWriteReviewMeList" class="minwoo_uWriteReviewMeList">
			
				<%-- <c:forEach var="i" begin="1" end="10">
				<div class="minwoo_uWriteReviewMe_ListContent">
					<div class="minwoo_uWriteReviewMe_ListContent_body">
						<div class="minwoo_uWriteReviewMe_ListContent_body_head">
							<div class="minwoo_uWriteReviewMe_ListContent_body_head_photo">
								<img src="<c:url value='/resources/img/KMWcake.jpg'/>" style="width:100%; height:100%;">
							</div>
							<div style=" margin-left:10px; margin-top:3px; width:65%; font-weight:bold;">
								<a href="#" style="text-decoration:none;">작품제목<c:out value="${i}"/></a>
							</div>
							<div style="font-size:15px; color:blue; width:20%; text-align:center; font-weight:bold;">
								★★★★★
							</div>
						</div>
						<hr>
						<div style="height:50px; display:flex; flex-direction:row; align-items:center;">
							<div style="height:30px; width:30px; border:1px solid black; border-radius:100%;">
								<img src="<c:url value='/resources/img/Logo_blue.png'/>" style="width:100%;height:100%;">
							</div>
							
							<div style="height:50px; width:80%; margin-left:10px; font-size:15px; font-weight:bold; display:flex; flex-direction:column;justify-content:center;">
								<div>귀염둥이</div>
								<div style="color:#BDBDBD;">2020년 07월 21일</div>
							</div>	
						</div>
						<!-- 남긴 댓글 부분 -->
						<div style="margin-top:5px;">
							부모님이 좋아하세요!!
						</div>
						<!-- 남긴 댓글 부분 -->
					</div>
				</div>
				</c:forEach> --%>
				
			</div>
			
			<!-- 구매후기 리스트 영역 끝 -->
	
	
	
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
		
		/* // 데이터 넣기
		var result = new Array();
		
		<c:forEach var="i" items='${reviewedList}'>
			var json = new Object();//객체로 배열에 담기
			json.reviewCodeSeq = '${i.reviewCodeSeq}';
			json.reviewDate = '${i.reviewDate}';
			json.reviewStar = '${i.reviewStar}';
			json.reviewComment = `${i.reviewComment}`;
			json.artPhoto = `${i.artPhoto}`;
			json.artName = '${i.artName}';
			json.writerCodeSeq = '${i.writerCodeSeq}';
			json.memberName = '${i.memberName}';
			json.memberProfile = `${i.memberProfile}`;
			json.bArtReviewStatus = '${i.bArtReviewStatus}';
			json.bArtReview = '${i.bArtReview}';

			result.push(json);
		</c:forEach> */
		
		var page = 1;
		var reviewedCheck = 2; //구매 작품 리스트인지, 구매후기 리스트인지 구분용
		
		$(document).ready(function(){  //페이지가 로드되면 데이터를 가져오고 page를 증가시킨다.
			getList(page);
		    page++;
		});
		
		$(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
		     if(Math.round($(window).scrollTop()) >= $(document).height() - $(window).height()){
		          getList(page);
		           page++;   
		     } 
		});
		
		function getList(page){
			$.ajax({
				type : 'POST',
				dataType : 'json',
				data : {
					'reviewedCheck' : reviewedCheck,
					'page':page,
					'member':memberCode
				},
				url : '/bomulsum/user/myInfo/reviewInfo.do',
				success : function(returnData){
					var htmldiv = '';
					var artImg = '';
					var memberImg = '';
					var data = returnData.data;
					
					console.log(returnData);
					
					if(page == 1){
						$('#minwoo_uWriteReviewList').html('');
					}
					if(returnData.startNum <= returnData.totalCnt){
						if(data.length > 0){
							for(var i = 0; i < data.length; i++){
								artImg = data[i].artPhoto.split(',')[0];
								
								htmldiv += '<div class="minwoo_uWriteReviewMe_ListContent">'
								+ '<div class="minwoo_uWriteReviewMe_ListContent_body">'
								+ '<div class="minwoo_uWriteReviewMe_ListContent_body_head">'
								+ '<div class="minwoo_uWriteReviewMe_ListContent_body_head_photo">'
								+ '<img src=\"/bomulsum/upload/' + artImg + '\" style=\"width:100%; height:100%\">'
								+ '</div>'
								+ '<div style=" margin-left:10px; margin-top:3px; width:65%; font-weight:bold;">'
								+ '<a href="#" style="text-decoration:none;">' + data[i].artName + '</a>'
								+ '</div>'
								+ '<div class=\"minwoo_starRev\" data-rate=\"' + data[i].reviewStar + '\">'
								+ '<span class=\"minwoo_starR1\"></span> <span class=\"minwoo_starR2\"></span>'
								+ '<span class=\"minwoo_starR1\"></span> <span class=\"minwoo_starR2\"></span>'
								+ '<span class=\"minwoo_starR1\"></span> <span class=\"minwoo_starR2\"></span>'
								+ '<span class=\"minwoo_starR1\"></span> <span class=\"minwoo_starR2\"></span>'
								+ '<span class=\"minwoo_starR1\"></span> <span class=\"minwoo_starR2\"></span>'
								+ '</div>'
								+ '</div>'
								+ '<hr>'
								+ '<div style="height:50px; display:flex; flex-direction:row; align-items:center;">'
								+ '<div style="height:30px; width:30px; border:1px solid black; border-radius:100%;">'
								+ '<img src="/bomulsum/upload/' + data[i].memberProfile + '" style="width:100%;height:100%;">'
								+ '</div>'
								+ '<div style="height:50px; width:80%; margin-left:10px; font-size:15px; font-weight:bold; display:flex; flex-direction:column;justify-content:center;">'
								+ '<div>' + data[i].memberName + '</div>'
								+ '<div style="color:#BDBDBD;">' + data[i].reviewDate + '</div>'
								+ '</div>'	
								+ '</div>'
								+ '<div class="minwoo_reviewComment_div">' + data[i].reviewComment + '</div>'
								+ '</div>'
								+ '</div>';
							} // end for
						} else { // 데이터가 없을 때
							htmldiv += '<div id="noReviewContent">'
								+ `<img src="<c:url value='/resources/img/KMWnoReviewMe.png'/>"`
								+ 'style="width:240px;; height:240px;">'
								+ '<p style="font-weight:bold;color:#BDBDBD; text-align:center;">'
								+ '구매후기를 남겨주시면 작가님이<br>함박 웃음을 지으며 기뻐하신답니다!'
								+ '</p>'
								+ '</div>';
						}//end if
					}
					
					htmldiv = htmldiv.replace(/%20/gi, ' ');
					if(page == 1){
						$('#minwoo_uWriteReviewMeList').html(htmldiv);
					} else{
						$('#minwoo_uWriteReviewMeList').append(htmldiv);
					}
					var starRevPoint = $('.minwoo_starRev');
						starRevPoint.each(function(){
							var targetScore = $(this).attr('data-rate');
							console.log(targetScore);
							$(this).find('span:nth-child(-n+'+ targetScore +')').parent().children('span').removeClass('on');
							$(this).find('span:nth-child(-n+'+ targetScore +')').addClass('on').prevAll('span').addClass('on');
						});
				}, //end for success
				error:function(e){
					if(e.status == 300){
						alert('데이터를 가져오는데 실패했습니다.');
					};
				}
			});
		};
		
		/* var pagingFunc = function(){
			
			//var pageCount = 5;
			//var totalPage = Math.ceil(result.length / pageCount);
			//var pagination = document.getElementById('pagination');
			
			var htmldiv = '';
			var artImg = '';
			var memberImg = '';
			
			//테이블 그리는 함수
			var renderTable = function(page){
				//var startNum = (pageCount * (page - 1)); 
				//var endNum = ((pageCount * page) >= result.length) ? result.length : (pageCount * page);
				
				if(Array.isArray(result) && result.length) {
					for(var index = 0; index < result.length; index++){
						artImg = result[index].artPhoto.split(',')[0];
						
						htmldiv += '<div class="minwoo_uWriteReviewMe_ListContent">'
							+ '<input type=\"hidden\" value=\"' + result[index].buyArtCodeSeq +'\" />'
							+ '<input type=\"hidden\" value=\"' + result[index].bArtCodeSeq +'\" />'
							+ '<input type=\"hidden\" value=\"' + result[index].bArtName +'\" />'
							+ '<input type=\"hidden\" value=\"' + result[index].bWriterCodeSeq +'\" />'
							+ '<input type=\"hidden\" value=\"' + artImg +'\" />'
							+ '<input type=\"hidden\" value=\"' + result[index].bArtOptionCount +'\" />'
							+ '<input type=\"hidden\" value=\"' + result[index].reviewStar +'\" />'
							+ '<div class="minwoo_uWriteReviewMe_ListContent_body">'
							+ '<div class="minwoo_uWriteReviewMe_ListContent_body_head">'
							+ '<div class="minwoo_uWriteReviewMe_ListContent_body_head_photo">'
							+ '<img src=\"/bomulsum/upload/' + artImg + '\" style=\"width:100%; height:100%\">'
							+ '</div>'
							+ '<div style=" margin-left:10px; margin-top:3px; width:65%; font-weight:bold;">'
							+ '<a href="#" style="text-decoration:none;">' + result[index].artName + '</a>'
							+ '</div>'
							+ '<div class=\"minwoo_starRev\" data-rate=\"' + result[index].reviewStar + '\">'
							+ '<span class=\"minwoo_starR1\"></span> <span class=\"minwoo_starR2\"></span>'
							+ '<span class=\"minwoo_starR1\"></span> <span class=\"minwoo_starR2\"></span>'
							+ '<span class=\"minwoo_starR1\"></span> <span class=\"minwoo_starR2\"></span>'
							+ '<span class=\"minwoo_starR1\"></span> <span class=\"minwoo_starR2\"></span>'
							+ '<span class=\"minwoo_starR1\"></span> <span class=\"minwoo_starR2\"></span>'
							+ '</div>'
							+ '</div>'
							+ '<hr>'
							+ '<div style="height:50px; display:flex; flex-direction:row; align-items:center;">'
							+ '<div style="height:30px; width:30px; border:1px solid black; border-radius:100%;">'
							+ '<img src="/bomulsum/upload/' + result[index].memberProfile + '" style="width:100%;height:100%;">'
							+ '</div>'
							+ '<div style="height:50px; width:80%; margin-left:10px; font-size:15px; font-weight:bold; display:flex; flex-direction:column;justify-content:center;">'
							+ '<div>' + result[index].memberName + '</div>'
							+ '<div style="color:#BDBDBD;">' + result[index].reviewDate + '</div>'
							+ '</div>'	
							+ '</div>'
							+ '<div class="minwoo_reviewComment_div">' + result[index].reviewComment + '</div>'
							+ '</div>'
							+ '</div>';
					}
				} else {
					htmldiv += '<div id="noReviewContent">'
					+ `<img src="<c:url value='/resources/img/KMWnoReviewMe.png'/>"`
					+ 'style="width:240px;; height:240px;">'
					+ '<p style="font-weight:bold;color:#BDBDBD; text-align:center;">'
					+ '구매후기를 남겨주시면 작가님이<br>함박 웃음을 지으며 기뻐하신답니다!'
					+ '</p>'
					+ '</div>';
				}
				htmldiv = htmldiv.replace(/%20/gi, ' ');
				$('#minwoo_uWriteReviewMeList').html(htmldiv);
				//$(".minwoo_uWriteReview_ListContent_button").on('click',modal);
			}
			renderTable(page);
		}; */
		
	/* 	$(document).ready(function(){
			pagingFunc();
			
			//목록에서 별점 뿌려주기
			var starRevPoint = $('.minwoo_starRev');
			starRevPoint.each(function(){
				var targetScore = $(this).attr('data-rate');
				console.log(targetScore);
				$(this).find('span:nth-child(-n+'+ targetScore +')').parent().children('span').removeClass('on');
				$(this).find('span:nth-child(-n+'+ targetScore +')').addClass('on').prevAll('span').addClass('on');
			});
		}); */
		</script>
		<!-- 스크립트 -->

</body>
</html>