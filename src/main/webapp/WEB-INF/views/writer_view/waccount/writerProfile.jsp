<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작가 프로필</title>
<link href="<c:url value='/resources/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="<c:url value='/resources/css/sb-admin-2.min.css'/>" rel="stylesheet">
<!-- myInformation _ CSS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- JQuery -->
<script>
$(function() {
    $('#content').keyup(function (e){
        var content = $(this).val();
        $(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
        $('#counter').html(content.length + '/20');
    });
    $('#content').keyup();
});

$(function() {
    $('#content2').keyup(function (e){
        var content2 = $(this).val();
        $(this).height(((content2.split('\n').length + 1) * 1.5) + 'em');
        $('#counter2').html(content2.length + '/500');
    });
    $('#content2').keyup();
});

function setThumbnail(event) {
	var reader = new FileReader();
	reader.onload = function(event) {
		var img = document.getElementById("coverPic");
			img.setAttribute("src", event.target.result);
			//document.querySelector("#coverPic").appendChild(img);
	};
	reader.readAsDataURL(event.target.files[0]);
}

function setThumbnail2(event) {
	var reader = new FileReader();
	reader.onload = function(event) {
		var img = document.getElementById("coverPic2");
			img.setAttribute("src", event.target.result);
			//document.querySelector("#coverPic2").appendChild(img);
	};
	reader.readAsDataURL(event.target.files[0]);
}
</script>


<style>
#counter {
  font-size: 0.75em;
}
#counter2 {
  font-size: 0.75em;
}

#coverPic{
	max-height: 100px;
	max-width: 100px;
	min-height: 100px;
	min-width: 100px;
}
#coverPic2{
	max-height: 100px;
	max-width: 100px;
	min-height: 100px;
	min-width: 100px;
}

#coverPic img {
	max-height: 100px;
	max-width: 100px;
	min-height: 100px;
	min-width: 100px;
}
#coverPic img2 {
	max-height: 100px;
	max-width: 100px;
	min-height: 100px;
	min-width: 100px;
}

.subcontent {
	margin-left: 2%;

}

.subcontent table {
	/*font-family: arial, sans-serif;*/
	border-collapse: collapse;
	width: 90%;
}

.daintdth {
	border-top: 1px solid #dddddd;
	border-bottom: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

.subcontent th {
	width: 15%;
	background-color: #f2f2f2;
}

.subcontent h4, h5 {
	font-weight: bold;
}

footer span{
	margin-right: 10%;
}

.dainWPBtn{
	 margin-left: 30px; 
	 background-color: white;
	 border: 1px solid #d9d9d9;
	 border-radius: 3px;
	 color: #999999;
	 padding: 3px 10px;
}
.dainWPBtn:focus{
	outline: none;
}

.dainWPBtn:hover{
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
					<h4>작가 프로필</h4>
					<hr>
					<br />

					<!-- 기본프로필 테이블 -->
					<h5 style="font-weight: bold;">기본 프로필</h5>
					<p>서비스 내에서 노출되는 작가명 및 사진을 설정할 수 있습니다.</p>
					<form action="<c:url value='/writer/updateprofile.wdo'/>" method="post" enctype="Multipart/form-data"> <!--enctype="Multipart/form-data -->
						<table>
							<tr>
								<th class="daintdth" style="width: 15%;  text-align: center;">프로필 사진</th>
								<td class="daintdth" style="font-size: 12px; width: 7%;">
									<!-- 여기 이미지 썸네일 들어감 --> 
									<img id="coverPic" />
								</td>
								<td  class="daintdth" style="width: 28%;">
									<input type="file" name="writerProfileImgg" id="image" accept=".jpg, .jpeg, .png" onchange="setThumbnail(event);"/>
									<div style="font-size: 12px">
										<br>10MB 이하 정사각형 이미지<br>확장자 jpg,png만 가능
									</div>
								</td>
								<th class="daintdth" style="width: 15%;  text-align: center;" >커버 사진</th>
								<td class="daintdth" style="font-size: 12px; width: 7%;">
									<!-- 여기 이미지 썸네일 들어감 -->
									<img id="coverPic2"/> </td>
								<td class="daintdth" style="width: 28%; ">
								<input type="file" name="writerCoverImgg" id="image" accept=".jpg, .jpeg, .png" onchange="setThumbnail2(event);"/>
									<div style="font-size: 12px">
										<br>10MB 이하 정사각형 이미지<br>확장자 jpg,png만 가능
									</div></td>
							</tr>
							<tr>
								<th class="daintdth" style="width: 15%; text-align: center;">작가명<br>(브랜드)</th>
								<td class="daintdth" colspan="5" style="width: 85%;"><input type="text" 
								id="content" name="writerBrandName" maxlength="20" autocomplete="off" 
								style="max-height: 30px; "/>
								<span id="counter" style="font-size: 12px"> ### </span></td>
							</tr>
							<tr>
								<th class="daintdth" style="width: 15%;  text-align: center;">세줄 소개</th>
								<td class="daintdth" colspan="5" style="width: 15%;"><textarea id="content2" 
								name="writerIntro" placeholder="작가님을 소개하는 글을 적어주세요." maxlength="500" autocomplete="off"
										style="overflow-y: scroll;  min-height: 100px; max-height:100px; 
										min-width: 60%; max-width: 60%;"></textarea>
										<div id="counter2" style="font-size: 12px"> ### </div></td>
							</tr>
						</table>

						<br> <br /> <br>
						<div class="spButton">
							<div style="text-align: center; width: 90%;">
								<button type="submit" class="dainWPBtn">확인</button>
							</div>
						</div>
					</form>
					<br> <br />
					
				<!-- 테스트  -->
				<div class="test">
				테스트<br>
				<img src="<c:url value='/upload/${imgtest.test}'/>"/> <!-- 이렇게 사용하기 -->
				<%-- <img src="<c:url value='/upload/1596876981288point.png'/>"/> --%>
				</div>
				<!-- 끝 테스트 -->
				</div>


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

			<!-- Page level custom scripts -->
		

		</div>
	</div>
</body>
</html>