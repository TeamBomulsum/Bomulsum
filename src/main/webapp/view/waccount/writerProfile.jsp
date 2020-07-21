<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작가 프로필</title>
<link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="../css/sb-admin-2.min.css" rel="stylesheet">
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
			document.querySelector("#coverPic").appendChild(img);
	};
	reader.readAsDataURL(event.target.files[0]);
}

function setThumbnail2(event) {
	var reader = new FileReader();
	reader.onload = function(event) {
		var img = document.getElementById("coverPic2");
			img.setAttribute("src", event.target.result);
			document.querySelector("#coverPic2").appendChild(img);
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
</style>

</head>

<body id="page-top">
	<div id="wrapper">
		<!-- Header/Nav -->
		<%@ include file="/view/include/side.jsp" %>
		<div id="content-wrapper" class="d-flex flex-column">

			<div class="content">
				<%@ include file="/view/include/head.jsp" %>
				<!-- end Header/Nav -->

				<div class="subcontent">
					<h4>작가 프로필</h4>
					<hr>
					<br />

					<!-- 기본프로필 테이블 -->
					<h5 style="font-weight: bold;">기본 프로필</h5>
					<p>서비스 내에서 노출되는 작가명 및 사진을 설정할 수 있습니다.</p>
					<form action="#">
						<table>
							<tr>
								<th class="daintdth" style="width: 15%;">프로필 사진</th>
								<td class="daintdth" style="font-size: 12px; width: 7%;">
									<!-- 여기 이미지 썸네일 들어감 --> 
									<img id="coverPic" />
								</td>
								<td  class="daintdth" style="width: 28%;">
									<input type="file" id="image" accept=".jpg, .jpeg, .png" onchange="setThumbnail(event);"/>
									<div style="font-size: 12px">
										<br>320px 이상 정사각형 이미지<br>확장자 jpg,png만 가능
									</div>
								</td>
								<th class="daintdth" style="width: 15%;" >커버 사진</th>
								<td class="daintdth" style="font-size: 12px; width: 7%;">
									<!-- 여기 이미지 썸네일 들어감 -->
									<img id="coverPic2"/> </td>
								<td class="daintdth" style="width: 28%;">
								<input type="file" id="image" accept=".jpg, .jpeg, .png" onchange="setThumbnail2(event);"/>
									<div style="font-size: 12px">
										<br>320px 이상 정사각형 이미지<br>확장자 jpg,png만 가능
									</div></td>
							</tr>
							<tr>
								<th class="daintdth" style="width: 15%;" >작가명 (브랜드)</th>
								<td class="daintdth" colspan="5" style="width: 85%;"><input type="text" id="content" name="brandName" maxlength="20" style="max-height: 30px; "/>
								<span id="counter" style="font-size: 12px"> ### </span></td>
							</tr>
							<tr>
								<th class="daintdth" style="width: 15%;">세줄 소개</th>
								<td class="daintdth" colspan="5" style="width: 15%;"><textarea id="content2" placeholder="작가님을 소개하는 글을 적어주세요." maxlength="500" 
										style="overflow-y: scroll;  min-height: 100px; max-height:100px; min-width: 60%; max-width: 60%;"></textarea>
										<div id="counter2" style="font-size: 12px"> ### </div></td>
							</tr>
						</table>

						<br> <br /> <br>
						<div class="spButton">
							<div style="text-align: center; width: 90%;">
								<button type="submit">확인</button>
							</div>
						</div>
					</form>
					<br> <br />

				</div>


				<%@ include file="/view/include/footer.jsp" %>
				<!-- end footer -->
			</div>

			<!-- Scroll to Top Button-->
			<a class="scroll-to-top rounded" href="#page-top"> <i
				class="fas fa-angle-up"></i>
			</a>

			<script src="../vendor/jquery/jquery.min.js"></script>
			<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

			<!-- Core plugin JavaScript-->
			<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

			<!-- Custom scripts for all pages-->
			<script src="../js/sb-admin-2.min.js"></script>

			<!-- Page level plugins -->
			<script src="../vendor/chart.js/Chart.min.js"></script>

			<!-- Page level custom scripts -->
			<script src="../js/demo/chart-area-demo.js"></script>
			<script src="../js/demo/chart-pie-demo.js"></script>

		</div>
	</div>
</body>
</html>