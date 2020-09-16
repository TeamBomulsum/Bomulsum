<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 실시간 후기</title>

<style type="text/css">

body a:link, a:visited, a:hover, a:active {
	text-decoration: none;
	border: none;
}

/*우영이가 만들어준 배너 영역 css 시작*/
.dndud_title_img{
   display:flex;
   width:100%;
   height:210px;
   background-image: url("/bomulsum/resources/img/articles_head.png ");
   background-repeat: no-repeat;
   background-size:100%;
   flex-direction: column;
   align-items: center;
   justify-content: center;
}

.dndud_title_img h1{
   color:white;
}

.dndud_title_img div{
   height:2px;
   width:64px;
   margin-top:15px;
   margin-bottom:15px;
   background-color:white;
}

.dndud_title_img p{
   display:flex;
   justify-content:center;
   font-size:14px;
   color:white;
   width:100%;
}
/*우영이가 만들어준 배너 영역 css 종료*/

/*민우 css 시작*/
.minwoo_realtime_review_body{
	width:1056px;
	margin:auto;
	padding-bottom:50px;
	display:flex;
	flex-wrap:wrap;
}
.minwoo_realtime_review_one{
	width:252px;
	height:570px;
	max-height:650px; 
	margin-bottom:15px;
	margin-right:10px;
	border:1px solid #E6E6E6;
	border-radius:5px;
}
.minwoo_realtime_review_photo{
	 width:252px;
	 height:168px;
}
.minwoo_realtime_review_photo a img{
	text-decoration: none;
	width:100%;
	height:100%;
}
.minwoo_realtime_review_artinfo{
	 padding:10px;
	 height:65px;
	 font-size:12px;
	 color:#A4A4A4;
	 padding-bottom:0;
}
.minwoo_realtime_review_artinfo a{
	font-size:13px;
	text-decoration:none;
	color:#1C1C1C;
}
.minwoo_realtime_review_comments{
	background-color:#F2F2F2;
	margin:10px;
	margin-top:0;
	padding:5px;
	height:270px;
	max-height:300px;
}
.minwoo_realtime_review_comments_starpointname{
	display: flex;
	color:#A4A4A4;
	font-size:14px;
}
.minwoo_realtime_review_comments_text p{
	font-size:12px;
}
.minwoo_realtime_review_morebtn{
	display: flex; 
	justify-content:center;
	align-items:center;
	height:20px;
}
.minwoo_starRev{
	height:60%;
}

.minwoo_starR1{
    background: url('<c:url value='/resources/img/KMWico_review.png'/>') no-repeat -31.2px 0;
    background-size: auto 100%;
    width: 9px;
    height: 18px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.minwoo_starR2{
    background: url('<c:url value='/resources/img/KMWico_review.png'/>') no-repeat right 0;
    background-size: auto 100%;
    width: 9px;
    height: 18px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.minwoo_starR1.on{background-position:0 0;}
.minwoo_starR2.on{background-position:-9px 0;}

</style>

</head>
<body>
<div>
	<%@ include file="../include/uHeader.jsp"  %>
	
	<!-- 배너 영역 시작-->
	<div class="dndud_title_img">
		<h1>실시간 후기</h1>
		<div></div>
		<p>지금 따끈따끈한 구매후기가 남겨진 작품들이에요.</p>
	</div>
	<!-- 배너 영역 종료-->
	
	<br></br>
	
	<!-- 후기 달린 작품 들어올 바디영역 시작-->
	<div class="minwoo_realtime_review_body">
		
		
		<%-- <!-- 작품 한개 영역 시작-->
		<div class="minwoo_realtime_review_one">
			<!-- 이미지 들어올 영역 시작-->
			<div class="minwoo_realtime_review_photo">
				<a href="#"><img src="<c:url value='/resources/img/KMWcake.jpg'/>"></a>
			</div>
			<!-- 이미지 들어올 영역 종료 -->
			<!-- 작가명, 작품명 들어올 영역 시작 -->
			<div class="minwoo_realtime_review_artinfo">
				<span>귀염뽀짝보노보노</span>
				<br>
				<a href="#">🌈민우가 좋아하는 맛있는 쵸코 오레오 4단케잌!</a>
			</div>
			<!-- 작가명, 작품명 들어올 영역 종료 -->
			<!-- 별점/작성자/후기 들어올 영역 시작 -->
			<div class="minwoo_realtime_review_comments">
			
				<!-- 후기 한개 영역 시작 -->
				<div>
					<!-- 별점 / 작성자 영역 시작-->
					<div class="minwoo_realtime_review_comments_starpointname">
						<div style="color:#FFBF00;">★★★★★</div>
						<span>&nbsp;|&nbsp;</span>
						<span>깡누리</span>
					</div>
					<!-- 별점 / 작성자 영역 종료-->
					<!-- 후기 내용 시작-->
					<div class="minwoo_realtime_review_comments_text">
						<p>
							꺅 작가님 잘받았어용♥<br>
							색깔도 하나같이 다 예뻐서 진짜 고민고민 하다가
						</p>
					</div>
					<!-- 후기 내용 종료 -->
				</div>
				<!-- 후기 한개 영역 종료 -->
				
				<!-- 후기 한개 영역 시작 -->
				<div>
					<!-- 별점 / 작성자 -->
					<div class="minwoo_realtime_review_comments_starpointname">
						<div style="color:#FFBF00;">★★★☆☆</div>
						<span>&nbsp;|&nbsp;</span>
						<span>깡미누</span>
					</div>
					<!-- 후기 내용 시작-->
					<div class="minwoo_realtime_review_comments_text">
						<p>
							선물하려고 구매했는데 윗부분이 조금 눌려서 그런지 주름이 있어서..ㅠ<br>
							먹으려다가 그냥 저희집 강아지 뽀삐 줬어요... 근데 강아지는 초코 먹으면 암걸린대요.<br>
							흐어엉 그래서 저때문에 우리 뽀삐 하늘나라 갔어요 ㅠㅠㅠㅠ 우리 뽀삐 하늘나라 가서 잘 살고 있니?ㅠㅠㅠ
						</p>
					</div>
					<!-- 후기 내용 종료 -->
				</div>
				<!-- 후기 한개 영역 종료 -->
			</div>
			<!-- 별점/작성자/후기 들어올 영역 종료 -->
			
			<!-- 후기 더보기 버튼 -->
			<div class="minwoo_realtime_review_morebtn">
				<a href="#" style="text-decoration: none; font-size:14px; color:#2ECCFA;">작품의 구매 후기 전체 보기 &gt;</a>
			</div>
			<!-- 후기 더보기 버튼 -->
			
		</div>
		<!-- 작품 한개 영역 종료--> --%>
		
		
	</div>
	<!-- 후기 달린 작품 들어올 바디영역 종료-->
	
	<%@ include file="../include/uFooter.jsp" %>
</div>


<!--스크립트 -->
		<script>
		var memberCode = '<%= (String)session.getAttribute("member") %>';
		var userName = '${userName}';
		
		// 데이터 넣기
		var page = 1;  //페이징과 같은 방식이라고 생각하면 된다. 
		
		$(function(){  //페이지가 로드되면 데이터를 가져오고 page를 증가시킨다.
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
					'page':page,
					'member':memberCode
				},
				url : '/bomulsum/user/realtimReviewInfo.do',
				success : function(returnData){
					var htmldiv = '';
					var artImg = '';
					var mamberName1 = '';
					var mamberName2 = '';
					var mamberName3 = '';
					var reviewComment1 = '';
					var reviewComment2 = '';
					var reviewComment3 = '';
					var reviewStar1 = '';
					var reviewStar2 = '';
					var reviewStar3 = '';
					var data = returnData.data;
					
					console.log(returnData);
					
					if(page == 1){
						$('.minwoo_realtime_review_body').html('');
					}
					
					if(returnData.startNum <= returnData.totalCnt){
						if(data.length > 0){
							for(var i = 0; i < data.length; i++){
								artImg = data[i].artPhoto.split(',')[0];
								mamberName1 = data[i].memberName.split('|-%-|')[0];
								mamberName2 =  data[i].memberName.split('|-%-|')[1];
								mamberName3 =  data[i].memberName.split('|-%-|')[2];
								reviewComment1 =  data[i].reviewComment.split('|-%-|')[0];
								reviewComment2 = data[i].reviewComment.split('|-%-|')[1];
								reviewComment3 = data[i].reviewComment.split('|-%-|')[2];
								reviewStar1 = data[i].reviewStar.split('|-%-|')[0];
								reviewStar2 = data[i].reviewStar.split('|-%-|')[1];
								reviewStar3 = data[i].reviewStar.split('|-%-|')[2];
								
								console.log(artImg + '//' + mamberName1 +
											'//' + mamberName2 + '//' + mamberName3 +
											'//' + reviewComment1 + '//' + reviewComment2 +
											'//' + reviewComment3 + '//' + reviewStar1 +
											'//' + reviewStar2 + '//' + reviewStar3);
								
								htmldiv += '<div class="minwoo_realtime_review_one">'
								+ '<div class="minwoo_realtime_review_photo">'
								+ '<a href="#"><img src="/bomulsum/upload' + artImg + '"></a>'
								+ '</div>'
								+ '<div class="minwoo_realtime_review_artinfo">'
								+ '<span>' + data[i].writerName + '</span>'
								+ '<br>'
								+ '<a href="#">' + data[i].artName + '</a>'
								+ '</div>'
								+ '<div class="minwoo_realtime_review_comments">' // 별점 / 작성자 / 후기 들어올 영역 시작
								
								+ '<div>' // 후기 한개 영역 시작
								+ '<div class="minwoo_realtime_review_comments_starpointname">'
								+ '<div style="">'
								+ '<div class="minwoo_starRev" data-rate="'+ reviewStar1 + '">'
								+ '<span class="minwoo_starR1 on">1</span> <span class="minwoo_starR2">2</span>'
								+ '<span class="minwoo_starR1">3</span> <span class="minwoo_starR2">4</span>'
								+ '<span class="minwoo_starR1">5</span> <span class="minwoo_starR2">6</span>'
								+ '<span class="minwoo_starR1">7</span> <span class="minwoo_starR2">8</span>'
								+ '<span class="minwoo_starR1">9</span> <span class="minwoo_starR2">10</span>'
								+ '</div>'
								+ '</div>'
								+ '<span>&nbsp;|&nbsp;</span>'
								+ '<span>' + mamberName1 + '</span>'
								+ '</div>'
								+ '<div class="minwoo_realtime_review_comments_text">'
								+ '<p>' + reviewComment1 + '</p>'
								+ '</div>'
								+ '</div>' // 후기 한개 영역 종료
								
								+ '<div>' // 후기 한개 영역 시작
								+ '<div class="minwoo_realtime_review_comments_starpointname">'
								+ '<div style="">'
								+ '<div class="minwoo_starRev" data-rate="'+ reviewStar2 + '">'
								+ '<span class="minwoo_starR1 on">1</span> <span class="minwoo_starR2">2</span>'
								+ '<span class="minwoo_starR1">3</span> <span class="minwoo_starR2">4</span>'
								+ '<span class="minwoo_starR1">5</span> <span class="minwoo_starR2">6</span>'
								+ '<span class="minwoo_starR1">7</span> <span class="minwoo_starR2">8</span>'
								+ '<span class="minwoo_starR1">9</span> <span class="minwoo_starR2">10</span>'
								+ '</div>'
								+ '</div>'
								+ '<span>&nbsp;|&nbsp;</span>'
								+ '<span>' + mamberName2 + '</span>'
								+ '</div>'
								+ '<div class="minwoo_realtime_review_comments_text">'
								+ '<p>' + reviewComment2 + '</p>'
								+ '</div>'
								+ '</div>' // 후기 한개 영역 종료
								
								+ '<div>' // 후기 한개 영역 시작
								+ '<div class="minwoo_realtime_review_comments_starpointname">'
								+ '<div style="">'
								+ '<div class="minwoo_starRev" data-rate="'+ reviewStar3 + '">'
								+ '<span class="minwoo_starR1 on">1</span> <span class="minwoo_starR2">2</span>'
								+ '<span class="minwoo_starR1">3</span> <span class="minwoo_starR2">4</span>'
								+ '<span class="minwoo_starR1">5</span> <span class="minwoo_starR2">6</span>'
								+ '<span class="minwoo_starR1">7</span> <span class="minwoo_starR2">8</span>'
								+ '<span class="minwoo_starR1">9</span> <span class="minwoo_starR2">10</span>'
								+ '</div>'
								+ '</div>'
								+ '<span>&nbsp;|&nbsp;</span>'
								+ '<span>' + mamberName3 + '</span>'
								+ '</div>'
								+ '<div class="minwoo_realtime_review_comments_text">'
								+ '<p>' + reviewComment3 + '</p>'
								+ '</div>'
								+ '</div>' // 후기 한개 영역 종료
								
								+ '</div>'// 별점 / 작성자 / 후기 들어올 영역 종료
								+ '<div class="minwoo_realtime_review_morebtn">'
								+ '<a href="#" style="text-decoration: none; font-size:14px; color:#2ECCFA;">작품의 구매 후기 전체 보기 &gt;</a>'
								+ '</div>'
								
								+ '</div>'; // 작품 한개 영역 종료
								
							} // end for
						} else { // 데이터가 없을 때
							// htmldiv = ;
						} //end if
					}
					
					htmldiv = htmldiv.replace(/%20/gi, ' ');
					if(page == 1){
						$('.minwoo_realtime_review_body').html(htmldiv);
					} else{
						$('.minwoo_realtime_review_body').append(htmldiv);
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


		</script>
		<!-- 스크립트 -->


</body>
</html>