<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 금손 클래스 | 인기 클래스</title>
<style>


.minwoo_content {
	width: 70%;
	margin-left: auto;
	margin-right: auto;
	padding-top: 36px;
	padding-bottom: 64px;
	display:flex;
	flex-direction:column;
}

body a:link, a:visited, a:hover, a:active {
	text-decoration: none;
	border: none;
}

.minwoo_class_category_head{
	width:100%;
	display:flex;
}

.minwoo_class_category_head_title{
	width:23%;
}

.minwoo_class_category_head_title a{
	font-size: 23px;
	font-weight: bold;
	text-decoration: none;
	color: #333;
}

.minwoo_class_category_head_title a:hover:not(.active) {
    color: #1f76bb;
}

.minwoo_class_category_head_title hr{
	border:0;
	height:3px;
	background:black;
}

.minwoo_class_category_head_depth{
	width:75%;
	display: flex;
	margin-left: 2%;
}

.minwoo_class_category_head_depth a{
	font-size:13px;
	display: flex;
	flex-direction:row;
	justify-content:center;
	align-items:center;
    color: #666666;
    text-decoration: none;
    padding:5px;
    font-weight: bold;
}

.minwoo_class_category_head_depth a:hover:not(.active) {
    color: #1f76bb;
}


.minwoo_class_category_body{
	width:100%;
	display:flex;
}

.minwoo_class_category_side{
	width:23%;
}

.minwoo_class_category_side ul{
	 list-style-type: none;
	 padding-left:5px;
}

.minwoo_class_category_side ul li{
	display: block;
    text-decoration: none;
}
.minwoo_class_category_side ul li a{
 	display: block;
    color: #666666;
    text-decoration: none;
    margin-top:10px;
    padding-top:10px;
    font-size:14px;
    font-weight: bold;
}
.minwoo_class_category_side ul li a:hover:not(.active) {
    color: #1f76bb;
}

.minwoo_class_category_side ul li a i{
	float:right;
	padding-top:2%;
	padding-right:1%;
}


.minwoo_class_space {
	width:75%;
	display: flex;
	flex-wrap: wrap;
	margin-left: 2%;
}

.minwoo_class_space_one{
	width:250px;
	height:370px;
	margin-top:10px;
	padding-left:10px;
}

.minwoo_class_space_one a{
    color: #666666;
    text-decoration: none;
}

.minwoo_class_space_one_photo{
	height:65%;
	position: relative;
}

.minwoo_class_space_one_photo a{
    color: #666666;
    text-decoration: none;
}

.minwoo_class_space_one_photo a:hover:not(.active) {
    color: #666666;
}

.minwoo_class_space_one_text{
	height:35%;
	display:flex;
	flex-direction:column;
	padding:2%;
}

.minwoo_class_space_one_text a span{
	padding:5%;
    color: #666666;
    text-decoration: none;
    font-size:14px;
}

.minwoo_class_category_side ul li a:hover:not(.active) {
    color: #1f76bb;
}

.minwoo_class_space_one_location{
	position:absolute;
	left:0; 
	margin-top:5%;
	margin-left:5%;
	padding:2%; 
	font-size:13px;
	background-color:#6E6E6E;
	color:#FFFFFF;
	border-radius:5px;
}
.minwoo_uMhome_content_card{
	width:250px;
	border:0.5px solid #D8D8D8;
	border-radius:5px 5px 5px 5px;
	margin:6px;
}
.minwoo_uMhome_content_card_locagion{
	background-color:#6E6E6E;
 	border-radius: 3px 3px 3px 3px;
 	font-weight:bold;
 	color: #f2f2f2;
  	font-size: 12px;
 	padding: 7px 10px;
	position: absolute;
	z-index: 99;
	margin:1%;
}
.minwoo_uMhome_content_card_star{
	margin:1%;
	padding-left:190px;
	position:absolute;
	z-index:80;
}

.minwoo_uMhome_content_card_star i{
	font-size:30px;
	align-self:flex-end;
	margin:2%;
	color: gray;
	-webkit-text-stroke-width: 2px;
	-webkit-text-stroke-color: white;
}
.minwoo_uMhome_content_card_img_link{
	position:relative;
	z-index: -1;
	margin:0;
	padding:0;

}
.minwoo_uMhome_content_info{
	padding:8px 10px;
}

.minwoo_uMhome_content_info span{
	color: #dd5850;
	font-size:12px;
}
.minwoo_uMhome_card_rating{
	padding:8px 10px;
}
</style>
</head>
<body>
<div>
	<%@ include file="../include/uHeaderClass.jsp"  %>

	<!-- content 시작 -->
	<div class="minwoo_content">
		
		<!--상단 헤더 시작-->
		<div class="minwoo_class_category_head">
			<!-- 타이틀 / 선택된 카테고리 시작 -->
			<div class="minwoo_class_category_head_title">
				<a href="<c:url value='/midas/'/>" class="title">인기 클래스</a>
				<hr>
			</div>
			<!-- 타이틀 / 선택된 카테고리 종료 -->
			
			<!-- 우측 댑쓰 시작-->
			<div class="minwoo_class_category_head_depth">
				<a href="<c:url value='/midas/class.do'/>">금손 클래스 &nbsp;<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
				<a href="<c:url value='/midas/'/>">인기 클래스</a>
			</div>
			<!-- 우측 상단 댑쓰 종료 -->
		</div>
		<!-- 상단 헤더 종료 -->
		
		<!-- 바디 영역 시작 -->
		<div class="minwoo_class_category_body">

			<!-- 작품 목록 들어올 영역 시작 -->
			<div class="minwoo_class_space">
			<%-- <c:forEach begin="1" end="10">
				<div class="minwoo_uMhome_content_card">
   					<div class="minwoo_uMhome_content_card_img">
   						<div class="minwoo_uMhome_content_card_locagion">서울 마포구</div>
   						<div class="minwoo_uMhome_content_card_star">
   						<i id="${i}bookmark" class="fa fa-star fs"></i>
   						</div>
   						<div class="minwoo_uMhome_content_card_img_link">
   						<!--  <a href="#" class="minwoo_uMhome_content_card_link">-->
   						<img src="<c:url value='/resources/img/earings.jpg'/>" style="width:250px; height:250px">
   						<!--  </a>-->
   						</div>	
   					</div>
   					<div class="minwoo_uMhome_content_detail">
                		<div class="minwoo_uMhome_content_info">
                    		<a href="#" class="minwoo_uMhome_card_label"><span>공예</span></a><br/>
                    		<a href="#" class="minwoo_uMhome_card_text">
                    		<b style="font-size:14px">[홍대] 보석 귀걸이 만들기</b></a>
                        </div>
                        <div class="minwoo_uMhome_card_rating">
   							<i class="fa fa-star" style="color:gold"></i>
							<i class="fa fa-star" style="color:gold"></i>
							<i class="fa fa-star" style="color:gold"></i>
							<i class="fa fa-star" style="color:gold"></i>
							<i class="fa fa-star" style="color:gold"></i>
							<span style="font-size:14px; color:gray">(1)</span>
            		    </div>
                   </div>
   				</div>
   			</c:forEach> --%>
				<%-- <c:forEach begin="1" end="10">
				<!-- 작품한개 영역 시작 -->
				<div class="minwoo_class_space_one">
					<!-- 이미지 영역 div 시작-->
					<div class="minwoo_class_space_one_photo">
						<span class="minwoo_class_space_one_location">서울 강동구</span>
						<!-- 별점 스크립트 기능 추가해야됨. -->
						<span style="position:absolute; right:0; margin-right:5%; font-size:30px; color:yellow;">
							★
						</span>
						<a href="#">
						<!-- 이미지 위에 즐겨찾기 버튼 기능 구현하기 -->
							<img style="width:100%; height:100%;" src="<c:url value='/resources/img/KMWcake.jpg'/>" >
						</a>
					</div>
					<!-- 이미지 영역 div 종료-->
					<!-- 텍스트 영역 시작 -->
					<div class="minwoo_class_space_one_text">
						<a href="#"><span style="color:#5858FA; font-size:80%;">공예</span><br></a>
						<a href="#"><span>스테인드글라스로 나만의 소품 만들기</span><br></a>
						<br/>
						<a href="#"><span style="font-size:17px;">★★★★★(12)</span><br></a>
					</div>
					<!-- 텍스트 영역 종료 -->
				</div>
				<!-- 작품한개 영역 끝 -->
				</c:forEach> --%>
				
				
			</div>
			<!-- 작품 목록 들어올 영역 종료 -->
	
		</div>
		<!-- 바디 영역 종료 -->

		
	
	
	
	
	</div>
	<!-- end for content -->
	
	<%@ include file="../include/uFooter.jsp" %>
</div>


	<script>
	
	var page = 1;  //페이징과 같은 방식이라고 생각하면 된다. 
	 
	$(function(){  //페이지가 로드되면 데이터를 가져오고 page를 증가시킨다.
	     getList(page);
	     page++;
	}); 
	 
	$(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
	     if($(window).scrollTop() >= $(document).height() - $(window).height()){
	          getList(page);
	           page++;   
	     } 
	});
	 


	var test;

	function getList(page){
		var category = $('.title').text();
		
		$.ajax({
			type:'POST',
			dataType : 'json',
			data:{
				'category':category,
				'page':page
			},
			url : '/bomulsum/midas/info.do',
			success :function(returnData){
				var htmldiv = '';
				var midasAddress = '';
				var midasImg = '';
				var pricePer = 0;
				var data = returnData.data;

				console.log(returnData);

				
				if(page == 1){
					$('.minwoo_class_space').html('');
				}
				if(returnData.startNum <= returnData.totalCnt){
					if(data.length > 0){
						// for
						for(var i=0; i<data.length; i++){
							console.log(data[i]);
							
							midasImg = data[i].midasImg.split(',')[0]; // 사진 들어간 거 첫번째 사진만 가져오기
							var address1 = data[i].midasAddress1.split(' ')[0];
							var address2 = data[i].midasAddress1.split(' ')[1];
							
							midasAddress = address1 + ' ' + address2;
							
							htmldiv += '<div class=\"minwoo_uMhome_content_card\">'
								+ '<div class=\"minwoo_uMhome_content_card_img\">'
								+ '<input class=\"midasCodeSeq\" type=\"hidden\" value=\"'+ data[i].midasCodeSeq +'\"/>'
								+ '<div class=\"minwoo_uMhome_content_card_locagion\">' + midasAddress + '</div>'
								+ '<div class=\"minwoo_uMhome_content_card_star\">'
								+ '<i id=\"' + i + 'bookmark\" class=\"fa fa-star fs\"></i>'
								+ '</div>'
								+ '<div class=\"minwoo_uMhome_content_card_img_link\">'
								+ '<img src=\"<c:url value=' + midasImg + '/>\" style=\"width:250px; height:250px\">'
								+ '</div>' 
								+ '</div>' //이미지 영역 종료
								+ '<div class=\"minwoo_uMhome_content_detail\">'
								+ '<div class=\"minwoo_uMhome_content_info\">'
								+ '<a href=\"#\" class=\"minwoo_uMhome_card_label\"><span>' + data[i].midasCategory + '</span></a><br/>'
								+ '<a href=\"#\" class=\"minwoo_uMhome_card_text\"><b style=\"font-size:14px\">' + data[i].midasName + '</b></a>'
								+ '</div>'
								+ '<div class=\"minwoo_uMhome_card_rating\">'
								+ '<i class="fa fa-star" style="color:gold"></i>'
								+ '<i class="fa fa-star" style="color:gold"></i>'
								+ '<i class="fa fa-star" style="color:gold"></i>'
								+ '<i class="fa fa-star" style="color:gold"></i>'
								+ '<i class="fa fa-star" style="color:gold"></i>'
								//별점 컬럼 추가하고, 평균 내서 별점 값 뿌려주기
								+ '<span style="font-size:14px; color:gray">'+ '참여후기 개수' +'</span>'
								+ '</div>'
								+ '</div>'
								+ '</div>'
						}// end for
					}else{
						//데이터 없을때.
					}
				}
				
				htmldiv = htmldiv.replace(/%20/gi, ' ');
				if(page == 1){
					$('.minwoo_class_space').html(htmldiv);				
				}else{
					$('.minwoo_class_space').append(htmldiv);
				}
				
			},
			error:function(e){
				if(e.status == 300){
					alert('데이터를 가져오는데 실패했습니다.');
				};
			}
		});
	};
	
	
	</script>


</body>
</html>