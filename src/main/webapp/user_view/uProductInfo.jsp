<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="<c:url value='/vendor/jquery/jquery.min.js'/>"></script>
<script type="text/javascript">
	function wonDisWorkInfoDo(){
		var wonDisWorkInfo = document.getElementById('wonDisWorkInfo');
		var wonInfoWorkButton = document.getElementsByClassName('wonInfoWorkButton');
		console.log("wonInfoWorkButton : " + wonInfoWorkButton);
		if(wonDisWorkInfo.style.display == 'none'){
			wonDisWorkInfo.style.display = 'block';
			document.getElementById('wonInfoWorkButton').className= 'fa fa-arrow-up';
		}else{
			wonDisWorkInfo.style.display = 'none';
			document.getElementById('wonInfoWorkButton').className= 'fa fa-arrow-down';
		}
	}
	function wonDisSellInfoDo(){
		var wonDisWorkInfo = document.getElementById('wonDisSellInfo');
		var wonInfoWorkButton = document.getElementsByClassName('wonInfoSellInfoButton');
		console.log("wonInfoSellInfoButton : " + wonInfoWorkButton);
		if(wonDisWorkInfo.style.display == 'none'){
			wonDisWorkInfo.style.display = 'block';
			document.getElementById('wonInfoSellInfoButton').className= 'fa fa-arrow-up';
		}else{
			wonDisWorkInfo.style.display = 'none';
			document.getElementById('wonInfoSellInfoButton').className= 'fa fa-arrow-down';
		}
	} 
	function wonDisChangReturnDo(){
		var wonDisWorkInfo = document.getElementById('wonDisChangReturn');
		var wonInfoWorkButton = document.getElementsByClassName('wonChangReturnButton');
		console.log("wonChangReturnButton : " + wonInfoWorkButton);
		if(wonDisWorkInfo.style.display == 'none'){
			wonDisWorkInfo.style.display = 'block';
			document.getElementById('wonChangReturnButton').className= 'fa fa-arrow-up';
		}else{
			wonDisWorkInfo.style.display = 'none';
			document.getElementById('wonChangReturnButton').className= 'fa fa-arrow-down';
		}
	}
</script>
<style>
#wondSumImg{
	background-color: white;
	border:none;
	width: 15%;
}
#wondSumImg:hover{
	cursor: pointer;
}
#wonAHover:hover{
	cursor: pointer;
}
#wonInfoButton:hover{
	cursor: pointer;
}
#wonInfoWorkButton:hover{
	cursor: pointer;
}
#wonInfoSellInfoButton:hover{
	cursor: pointer;
}
#wonChangReturnButton:hover{
	cursor: pointer;
}

</style>
<meta charset="UTF-8">
<title>상품소개!</title>
</head>
<body>
<div>
	<%@ include file="include/uHeader.jsp"  %>
		<div style="width:70%; margin-left: 15%; margin-top: 1%; margin-right: 50%; display: flex; flex-direction: row;">
		<!-- 전체틀 -->
			<div style="width:50%;">
				<!-- 사진영역 -->
				<div style="margin-top: 2%; display: flex; justify-content:center;">
					<img style="width:80%;" src="<c:url value='/resources/img/test.png'/>">
				</div>
				<div style="display: flex; justify-content:center; margin-bottom: 2%;">
					<!-- 썸네일 -->
					<button id="wondSumImg"><img style="width:100%;" src="<c:url value='/resources/img/test.png'/>"></button>
					<button id="wondSumImg"><img style="width:100%;" src="<c:url value='/resources/img/test.png'/>"></button>
					<button id="wondSumImg"><img style="width:100%;" src="<c:url value='/resources/img/test.png'/>"></button>
					<button id="wondSumImg"><img style="width:100%;" src="<c:url value='/resources/img/test.png'/>"></button>
					<button id="wondSumImg"><img style="width:100%;" src="<c:url value='/resources/img/test.png'/>"></button>
				</div>
				<hr>
				<div style="margin: 1%; display: flex; justify-content: center;">
				<span>평균 1일, 최대 1일 이내 배송시작</span>
				</div>
				<div>
					그래프 넣아야함 ㅠㅠ
				</div>
				<div style="margin: 1%; display: flex; justify-content: center;">
					<span style="color: #ABABAB; font-size: 80%;">최근 3개월 주문의 배송준비 기간 (주말, 공휴일 제외)</span>
				</div>
				<hr>
				<div style="margin: 1%; display: flex; justify-content: center; flex-direction: row;">
					<a id="wonAHover" style="margin: 18px 0px 17px; width:15%; font-size: 100%; margin-left: 1%;">작품정보</a>
					<a id="wonAHover" style="margin: 18px 0px 17px; width:35%; font-size: 100%; margin-left: 1%;">배송/교환/환불</a>
					<a id="wonAHover" style="margin: 18px 0px 17px; width:35%; font-size: 100%; margin-left: 1%;">구매후기(갯수)</a>
					<a id="wonAHover" style="margin: 18px 0px 17px; width:10%; font-size: 100%; margin-left: 1%;">댓글</a>
				</div>
				<hr>
				<div>
					<!-- 내용 작품 소개 -->
				</div>
				<hr>
				<div style="display: flex; justify-content: center;">
					<span style="color: #ABABAB; font-size: 80%;">Category&nbsp;&&nbsp;Keyword</span>
				</div>
				<div style="display: flex; flex-wrap: wrap; justify-content: center;">
					<strong>카테고리</strong>
				</div>
				<ul style="margin: 5%;display: flex; list-style: none;padding-left: 0px; justify-content: center; flex-wrap: wrap;">
					<li style="padding: 6px 8px;margin: 8px 0px 0px 8px; border:1px #ABABAB solid; font-size: 80%; color: #666666;">#카테고리</li>
					<li style="padding: 6px 8px;margin: 8px 0px 0px 8px; border:1px #ABABAB solid; font-size: 80%; color: #666666;">#카테고</li>
					<li style="padding: 6px 8px;margin: 8px 0px 0px 8px; border:1px #ABABAB solid; font-size: 80%; color: #666666;">#카테</li>
					<li style="padding: 6px 8px;margin: 8px 0px 0px 8px; border:1px #ABABAB solid; font-size: 80%; color: #666666;">#카</li>
					<li style="padding: 6px 8px;margin: 8px 0px 0px 8px; border:1px #ABABAB solid; font-size: 80%; color: #666666;">#카테고리카</li>
					<li style="padding: 6px 8px;margin: 8px 0px 0px 8px; border:1px #ABABAB solid; font-size: 80%; color: #666666;">#카테고리카테</li>
					<li style="padding: 6px 8px;margin: 8px 0px 0px 8px; border:1px #ABABAB solid; font-size: 80%; color: #666666;">#카테고리카테고</li>
					<li style="padding: 6px 8px;margin: 8px 0px 0px 8px; border:1px #ABABAB solid; font-size: 80%; color: #666666;">#카테고리카테고리</li>
				</ul>
				<hr>
				<div style="display: flex; justify-content: space-between; flex-direction: row; padding:18px 16px;">
					<span>작품 정보제공 고시</span>
					<span id="wonInfoWorkButton" onclick="wonDisWorkInfoDo()" class="fa fa-arrow-down"></span>
				</div>
				<div id="wonDisWorkInfo" style="display:none; width:100%;">
					<table style="width:100%;">
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; border:1px solid  width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">작품명</th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;">작품명</td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;"><span>법에 의한 인증,허가 등을 받았음을 확인할 수 있는 경우 그에 대한 사항</span></th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;"></td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">제조자 / 제조국</th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;"></td>
						</tr>
					</table>
				</div>
				<hr>
					<div style="display: flex; justify-content: space-between; flex-direction: row; padding:18px 16px;">
						<span>판매 작가 정보</span>
						<span id="wonInfoSellInfoButton" onclick="wonDisSellInfoDo()" class="fa fa-arrow-down"></span>
					</div>
				<div id="wonDisSellInfo" style="width:100%; display: none;">
					<table style="width:100%;">
						<tr>
							<th style="border:1px #ABABAB solid; padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">대표자명</th>
							<td style="border:1px #ABABAB solid; padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;">작품명</td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid; padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">이메일</th>
							<td style="border:1px #ABABAB solid; padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;"></td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid; padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">전화번호</th>
							<td style="border:1px #ABABAB solid; padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;"></td>
						</tr>
					</table>
				</div>
				<hr>
					<div style="display: flex; justify-content: space-between; flex-direction: row; padding:18px 16px;">
						<span>배송 교환 환불</span>
					<span id="wonChangReturnButton" onclick="wonDisChangReturnDo()" class="fa fa-arrow-down"></span>
					</div>
				<div id="wonDisChangReturn" style="width:100%; display: none;">
					<table style="width:100%;">
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">배송비</th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;">작품명</td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;"><span>제작 / 배송</span></th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;"></td>
						</tr>
						<tr>
							<th style="border:1px #ABABAB solid;padding:3%; margin:3%; width:30%; font-size: 90%; background-color: #EEEEEE; color: #666666;">교환 / 환불</th>
							<td style="border:1px #ABABAB solid;padding:3%; margin:3%; width:70%; font-size: 90%; color: #666666;"></td>
						</tr>
					</table>
				</div>
				<hr>
			</div>
		</div>
	<%@ include file="include/uFooter.jsp" %>
</div>
</body>
</html>