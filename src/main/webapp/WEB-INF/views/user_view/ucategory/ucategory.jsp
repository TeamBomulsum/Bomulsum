<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보물섬 | 카테고리</title>
</head>
<style>
.dndud_main_category{
	width:70%;
	margin-left: auto;
	margin-right: auto;
}

.dndud_main_category_title{
	margin-top:5%;
	margin-bottom:3%;
}

.dndud_main_category_title .title{
	font-size:23px;
	font-weight:bold;
}

.dndud_main_category_searchBox{
	font-size:13px;
	color:#333;
	margin-top:3%;
	display:flex;
	flex-direction:column;
	width:100%;
	border:1px solid #d9d9d9;
	margin-bottom:3%;
}


.dndud_main_category_searchBox span{
    display: flex;
    align-items: center;
	margin:1.5%;
	width:13%;
}

.dndud_main_category_searchBox div:nth-child(1){
	border-bottom:1px solid #f5f5f5;
}

.dndud_main_category_searchBox div:nth-child(1) span:nth-child(2) a{
	font-size:13px;
	font-weight:bold;
	padding:1%;
	background-color: #e9f5ff;
    color: #0a91ff;
}

.dndud_main_category_searchBox div span:nth-child(1){
	color:#999;
}

.dndud_main_category_search_detail{
	display:flex;
	justify-content: space-between;
	flex-direction: row;
	margin-bottom:3%;
}

.dndud_main_category_search_detail div{
	border:none;
	border-radius: 2px;
	color:#FFFFFF;
	font-size: 13px;
	padding:0.5%;
}

.dndud_main_category_search_detail select{
	width:10%;
}

.dndud_main_category_search_detail select:focus{
	outline:none;
}

.dndud_main_category_contents{
	display:flex;
	width:100%;
	flex-wrap: wrap;
}

.dndud_main_category_content_box{
	width:19%;
	margin-right:1%; 
	margin-bottom:2%; 
	height:450px;
	cursor:pointer;
}

.dndud_main_category_content_box:hover{
	box-shadow:2px 2px 2px 2px #d9d9d9;
	transition: .5s;
}

.content_img{
	width: 100%;
	height: 50%;
	background-repeat: no-repeat;
	background-size: 100% auto;
	display:flex;
	flex-direction: column;
}

.content_img i{
	font-size:30px;
	align-self:flex-end;
	margin:2%;
	color: gray;
	-webkit-text-stroke-width: 2px;
	-webkit-text-stroke-color: white;
}

.content_detail{
	display:flex;
	flex-direction: column;
	width:98%;
	padding:1%;
}

.content_detail_writer{
	color:#999999;
	font-size:14px;
	margin-bottom:1.5%;
	overflow: hidden;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;
    text-overflow: ellipsis;
}

.content_detail_title{
	color:#333333;
	font-size:15px;
	margin-bottom:1.5%;
}

.content_detail_price_decount{
	font-size:24px;
	color:#333333;
	margin-bottom:1%;
	font-weight:bold;
}

.content_detail_price_decount .discount_price{
	color:#d64640;
}

.content_detail_price_orgin{
	margin-bottom:2%;
	color:#999999;
	font-size:14px;
	font-weight:bold;
	text-decoration: line-through;
}

.content_detail_other{
	margin-bottom:4%;
	font-size:14px;
	font-weight:bold;
}

.content_detail_other span:nth-child(1){
	padding:1%;
	background-color: #e9f5ff;
	color: #0a91ff;
	margin:1%;
}

.content_detail_other span:nth-child(2){
	padding:1%;
	margin:1%;
	background-color: #e2fae6;
	color: #39af4d;
}

.content_detail_star span{
	color:#999999;
}

.category_option_checkbox{
	cursor:pointer;
}

.category_option_selected{
	display:none;
	background-color:#f5f5f5;
}

.category_option_selected div{
	display: flex;
	background: white;
	justify-content: space-between;
	align-items: center;
	margin: 1.5%;
	width: 12.5%;
	border: 1px solid #d9d9d9;
	border-radius: 15px;
}

.selected_option_span{
	padding: 5px 10px;
}

.atag{
	cursor:pointer;
}

.category_option_list{
	display: flex;
    flex-direction: row;
    width: 100%;
}

</style>
<body>
<div>
	<%@ include file="../include/uHeader.jsp"  %>
	
	<div class="dndud_main_category">
	
		<div class="dndud_main_category_title">
			<span class="title">${param.category}</span>
			<div class="dndud_main_category_searchBox">
				<div class="category_option_list">
					<span>배송</span>
					<span class="category_option_checkbox"><input type="checkbox" name="check" value="무료배송"><a>무료배송</a> 만 보기</span>
					<span></span>
					<span></span>
					<span></span>
					<span></span>
					<span></span>
				</div>
				<div class="category_option_list">
					<span>가격대</span>
					<span class="category_option_checkbox"><input type="checkbox" name="check" value="1만원 미만">1만원 미만</span>
					<span class="category_option_checkbox"><input type="checkbox" name="check" value="1만원대">1만원대</span>
					<span class="category_option_checkbox"><input type="checkbox" name="check" value="2만원대">2만원대</span>
					<span class="category_option_checkbox"><input type="checkbox" name="check" value="3만원대">3만원대</span>
					<span class="category_option_checkbox"><input type="checkbox" name="check" value="4만원대">4만원대</span>
					<span class="category_option_checkbox"><input type="checkbox" name="check" value="5만원대">5만원대</span>
				</div>
				<div class="category_option_selected">
					<span style="cursor:pointer" id="cancle_check_all">전체해제</span>
					
				</div>
			</div>
			
			<div class="dndud_main_category_search_detail">
				<div id="show_only_image">
					<span>이미지만 볼래요</span>
				</div>
				<select>
					<option>인기순</option>
					<option>최신순 (NEW)</option>
					<option>낮은 가격순</option>
					<option>높은 가격순</option>
				</select>
			</div>
			
			<div class="dndud_main_category_contents">
			
			
				<%-- <c:forEach var="i" begin="0" end="70">
					<div class="dndud_main_category_content_box">
						<div class="content_img" style="background-image: URL('<c:url value="/resources/img/category_testimg.png"/> ')">
							<i class="fa fa-star fs"></i>
						</div>
						<div class="content_detail">
							<span class="content_detail_writer">작가명</span>
							<span class="content_detail_title">상품 이름</span>
							<span class="content_detail_price_decount"><a class="discount_price">할인가</a><a> 최종가</a> 원</span>
							<span class="content_detail_price_orgin">원가</span>
							<span class="content_detail_other">
								<span>무료배송</span><span>안전식품</span>
							</span>
							<span class="content_detail_star">
								<i class="fa fa-star" style="color:gold"></i>
								<i class="fa fa-star" style="color:gold"></i>
								<i class="fa fa-star" style="color:gold"></i>
								<i class="fa fa-star" style="color:gold"></i>
								<i class="fa fa-star" style="color:gold"></i>
								<span>(<a>후기 댓글 수</a>)</span>
							</span>
						</div>
					</div>
				</c:forEach>
				 --%>
				
			</div>
			
		</div>
	
	</div>
	
	<%@ include file="../include/uFooter.jsp" %>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
var memberCode = '<%= (String)session.getAttribute("member") %>';
var likeArticleFunc;
var categoryOptionFunc;
var ajaxFilterFunc;
var filtArr = [];

var page = 1;

$(function(){
	getList(page);
	page++;
});

$(window).scroll(function() {
    if ( Math.round($(window).scrollTop()) >= $(document).height() - $(window).height()) {
    	getList(page);
    	page++;
    }
});

function comma(x) { return !x ? '0' : x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") }


function getList(page, filter){
	var category = $('.title').text();
	
	$.ajax({
		type:'POST',
		dataType : 'json',
		data:{
			'category':category,
			'page':page,
			'filter':filter
		},
		url : '/bomulsum/category/info.do',
		success :function(returnData){
			var htmldiv = '';
			var writerName = '';
			var artImg = '';
			var pricePer = 0;
			var data = returnData.data;
			console.log(returnData);
			if(page == 1){
				$('.dndud_main_category_contents').html('');
			}
			if(returnData.startNum <= returnData.totalCnt){
				if(data.length > 0){
					// for
					for(var i=0; i<data.length; i++){
						console.log(data[i]);
						if(data[i].writerBrandName == null){
							writerName = data[i].writerName;
						}else{
							writerName = data[i].writerBrandName;
						}
						artImg = data[i].artPhoto.split(',')[0];
						
						pricePer = (data[i].artPrice - data[i].artDiscount) / data[i].artPrice * 100;
						
						htmldiv += '<div class="dndud_main_category_content_box">'
							+ '<input class="artCode" type="hidden" value="'+ data[i].artCode +'"/>'
							+ '<div class="content_img" style="background-image: URL(\'/bomulsum/upload/'
							+ artImg +'\' )"><i class="fa fa-star fs"></i></div><div class="content_detail">'
							+ '<span class="content_detail_writer">'+ writerName +'</span>'
							+ '<span class="content_detail_title">'+ data[i].artName +'</span>'
							+ '<span class="content_detail_price_decount">';
						
						if(pricePer != 0){
							htmldiv += '<a class="discount_price">'+ comma(Math.round(pricePer)) +'%  </a>'
								+ '<a>'+ comma(data[i].artDiscount) +'</a> 원</span>'
								+ '<span class="content_detail_price_orgin">'+ comma(data[i].artPrice) +'원</span>';
						}else{
							htmldiv += '<a>'+ comma(data[i].artDiscount) +'</a> 원</span>';
						}
						htmldiv += '<span class="content_detail_other">';
						if(data[i].writerSendPrice == 0){
							htmldiv += '<span>무료배송</span>';
						}
						
						htmldiv += '</span><span class="content_detail_star">'
							+ '<i class="fa fa-star" style="color:gold"></i>'
							+ '<i class="fa fa-star" style="color:gold"></i>'
							+ '<i class="fa fa-star" style="color:gold"></i>'
							+ '<i class="fa fa-star" style="color:gold"></i>'
							+ '<i class="fa fa-star" style="color:gold"></i>'
							+ '<span>(<a>num</a>)</span></span></div></div>';
					}// end for
				}else{
					//데이터 없을때.
				}
			}
			
			htmldiv = htmldiv.replace(/%20/gi, ' ');
			if(page == 1){
				$('.dndud_main_category_contents').html(htmldiv);				
			}else{
				$('.dndud_main_category_contents').append(htmldiv);
			}
			
			$(".fs").click(likeArticleFunc);
			
			
		},
		error:function(e){
			if(e.status == 300){
				alert('데이터를 가져오는데 실패했습니다.');
			};
		}
	});
}

$(function(){
	
	$(".category_option_checkbox").on('click', function(){
		var check = $(this).find('input[name=check]');
		
		if(check.is(":checked")){
			check.prop('checked', false);
			$(".selected_option").each(function(){
				if($(this).children(":first").text() == check.val()){
					$(this).remove();
					return;
				}
			});
		}else{
			check.prop('checked', true);
			var html = '<div class="selected_option"><a class="selected_option_span">'+ check.val() +'</a>'
				+ '<a class="selected_option_span atag">X</a></div>';
			$(".category_option_selected").append(html);
			
			$('.atag').click(function(){
				var tag = $(this).parent();
				var value = $(this).prev().text();
				$('input[name=check]').each(function(){
					if($(this).val() == value){
						tag.remove();
						$(this).prop('checked', false);
					}
				});
				categoryOptionFunc();
				ajaxFilterFunc();
			});
		}
		
		categoryOptionFunc();
		ajaxFilterFunc();
	});
	
	$("#cancle_check_all").on('click', function(){
		$('input[name=check]').prop('checked', false);
		categoryOptionFunc();
		ajaxFilterFunc();
	});
	
	categoryOptionFunc = function(box){
		if($("input[name=check]").is(':checked')){
			$(".category_option_selected").css('display', 'flex');
		}else{
			$(".category_option_selected").css("display", "none");
			$('.selected_option').remove();
		}
	}
	
	ajaxFilterFunc = function(){
		filtArr = [];
		$('input[name=check]').each(function(){
			if($(this).is(':checked')){
				filtArr.push($(this).val());
			}
		});
		page = 1;
		getList(page, filtArr);
	}
	
	
	likeArticleFunc = function(){
		
		/* if(memberCode == null || memberCode == 'null'){
			alert('로그인이 필요한 서비스입니다.');
			location.href='/bomulsum/user/login.do';
		} */
		
		var artCode = $(this).parent().prev().val();
		var option = '좋아하는작품';
		
		/* $.ajax({
			url:'',
			data:{
				'member':memberCode,
				'option':option,
				'optionCode':artCode
			},
			type:'POST',
			success:function(data){
				
			},
			error:function(e){
				console.log(e);
			}
		}); */
		
		var clickIcon = $(this);
		console.log(clickIcon);
		
		if(clickIcon.css("color") == "rgb(128, 128, 128)"){
			clickIcon.css("color", "#d64640");
		}else{
			clickIcon.css("color", "gray");
		}
	};
	
});




</script>
</html>