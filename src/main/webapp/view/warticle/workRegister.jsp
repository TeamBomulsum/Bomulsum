<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작품등록</title>
<link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="../css/sb-admin-2.min.css" rel="stylesheet">
<style>
.workRegisterContainer{
	width:80%;
}
.basicInformationContainer {
	width: 100%;
	margin-left: 2%;
}

.provideInformationContainer, .targetContainer, .optionContainer,
	.savecontainer {
	width: 100%;
	margin-left: 2%;
	margin-top: 3%;
}

.loadButton {
	float: right;
}

.basicInfoTable, .provideInfoTable, .targetTable, .optionTable {
	margin-top: 1%;
	width: 100%;
	table-layout: fixed;
	border-top: 1px solid #ddd;
	border-left: 0px;
	border-right: 0px;
	border-bottom: 1px solid #ddd;
}

td{
	padding:10px;
}

h4 {
	margin: 0px;
}

.left {
	background-color: #f2f2f2;
}

.workNameRegister {
	width: 30%;
	height: 10%;
	position: relative;
	display: inline-block;
}

#counter {
	border-radius: 0.5em;
	padding: 0 .5em 0 .5em;
	font-size: 0.75em;
}

.imageContainer {
	width: 800px;
	margin: 10px;
}

.imageContainer img {
	max-width: 100px;
}

.flexcontainer {
	display: flex;
	justify-content: space-between;
	align-items: flex-end;
}

.flexCon {
	display: flex;
	flex-direction: row;
}

.savecontainer {
	display: flex;
	justify-content: center;
	align-item: center;
	margin-left:0;
	margin-top:2%;
	margin-bottom:2%;
	margin-right:0;
}

#imgs{
	margin-right:2%;
}

</style>

<script> 
function removeImg(){
	var id = document.getElementById('imgs');
	id.removeChild(id);

}
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
</script>
</head>
<body id="page-top">
	<div id="wrapper">
		<!-- Header/Nav -->
		<%@ include file="/view/include/side.jsp" %>
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<%@ include file="/view/include/head.jsp" %>
				<!-- end Header/Nav -->
				<div class="workRegisterContainer">
				<!-- 기본정보 영역 -->
				<div class="basicInformationContainer">
					<!-- topLine -->
					<div class="flexcontainer">
						<div class="textTitle">
							<h4>기본정보</h4>
							등록하려는 작품에 대해 이야기해주세요
						</div>
						<div class="loadButton">
							<button class="button" id="load" type="button">등록한 작품
								불러오기</button>
						</div>
					</div>
					<!-- end flexcontainer -->
					<!-- end of topLine -->
					<table border="1" class="basicInfoTable">
						<tr>
							<td class="left" style="width: 20%">사진등록</td>
							<td><input type="file" id="image" accept="image/*"
								onchange="setThumbnail(event);" multiple />
								<div class="imageContainer">
									
								</div>
							</td>
						</tr>
						<tr>
							<td class="left">작품명</td>
							<td><div class="workNameRegister">
									<input type="text" id="workName" maxlength="20" autocomplete="off"> <span
										id="nameCounter"> 0/20</span>
								</div></td>
						</tr>
						<tr>
							<td class="left">가격</td>
							<td><input type="text" id="workPrice" autocomplete="off"> 원</td>
						</tr>
						<tr>
							<td class="left">할인</td>
							<td><input type="checkbox"> 할인 후 가격  <input
								type="text" id="salePrice" autocomplete="off"> 원</td>
						</tr>
						<tr>
							<td class="left">수량</td>
							<td><input type="checkbox"> 주문시 제작  <input type="text"
								id="num"> 개</td>
						</tr>
						<tr>
							<td class="left">작품설명</td>
							<td><textarea rows="4" cols="80" style="overflow-y: scroll;"
									placeholder="작품 설명을 적어주세요."></textarea></td>
						</tr>
						<tr>
							<td class="left">카테고리</td>
							<td>
								<form action="#" class="category_search">
									<select name="category" id="category_id">
										<option value="foodbeverage">식음료</option>
										<option value="stationarey">문구팬시</option>
										<option value="electronics">전자기기</option>
										<option value="fashion">패션잡화</option>
										<option value="petsupplies">반려동물 용품</option>
										<option value="comment">인테리어 소품</option>
										<option value="interior accessory">신발</option>
										<option value="clothes">의류</option>
										<option value="childrengoods">육아.아동</option>
										<option value="toys">인형.장난감</option>
										<option value="crafts">공예</option>
										<option value="etc">기타</option>
									</select>
								</form>
							</td>
						</tr>
					</table>

				</div>
				<!-- end 기본정보 영역  -->

				<!-- 작품 정보 제공 고시 영역 -->
				<div class="provideInformationContainer">
					<!-- topLine -->
					<div class="topLine">
						<div class="textTitle">
							<h4>작품 정보 제공 고시</h4>
							<p>전자상거래법에 따라 작품 정보제공 고시는 필수 입력사항입니다. 해당 정보에 대한 책임은 판매 작가님에게
								있습니다.</p>
						</div>
					</div>
					<!-- end of topLine -->
					<table border="1" class="provideInfoTable">
						<tr>
							<td class="left" style="width: 20%">작품군</td>
							<td>
								<div class="categoryDiv">
									<form action="#" class="categorySearch">
										<select name="category" id="categoryId">
											<option value="foodbeverage">식음료</option>
											<option value="stationarey">문구팬시</option>
											<option value="electronics">전자기기</option>
											<option value="fashion">패션잡화</option>
											<option value="petsupplies">반려동물 용품</option>
											<option value="comment">인테리어 소품</option>
											<option value="interior accessory">신발</option>
											<option value="clothes">의류</option>
											<option value="childrengoods">육아.아동</option>
											<option value="toys">인형.장난감</option>
											<option value="crafts">공예</option>
											<option value="etc">기타</option>
										</select>
									</form>
								</div> <!-- categoryDiv -->

								<div class="infoBox" style="border: 1px solid #ddd; padding:15px; margin-top:2%; width:85%">
									<div id="weight" >
										<label>포장단위별 용량(중량), 수량</label><br> <input type="text"
											id=wWeight size="78%" autocomplete="off">
									</div>
									<!-- end weight -->
									<div id="produce" style="margin-top:1%">
										<label>생산자 및 소재지</label><br> <input type="text"
											id=wProduce size="78%" autocomplete="off">
									</div>
									<!-- end produce -->
									<div id="ingredient" style="margin-top:1%">
										<label>원재료명 및 함량</label><br> <input type="text"
											id=wIngredient size="78%" autocomplete="off">
									</div>
									<!-- end ingredient -->
									<div id="date" style="margin-top:1%">
										<label>제조년월일, 유통기한 또는 품질 유지기한</label><br> <input
											type="text" id=wDate size="78%" autocomplete="off">
									</div>
									<!-- end date -->
									<div id="manage" style="margin-top:1%">
										<label>관리법상 표시사항</label><br> <input type="text"
											id=wManage size="78%" autocomplete="off">
									</div>
									<!-- end manage -->
									<div id="config" style="margin-top:1%">
										<label>구성</label><br> <input type="text" id=wConfig
											size="78%" autocomplete="off">
									</div>
									<!-- end config -->
									<div id="manual" style="margin-top:1%">
										<label>보관방법 또는 취급방법</label><br> <input type="text"
											id=wManual size="78%" autocomplete="off">
									</div>
									<!-- end manual -->

								</div> <!-- end infoBox -->

							</td>
						</tr>
					</table>

				</div>
				<!-- end 작품 정보 제공 고시 영역  -->

				<!-- 타겟설정 영역 -->
				<div class="targetContainer">
					<!-- topLine -->
					<div class="topLine">
						<h4>타겟설정</h4>
					</div>
					<!-- end of topLine -->
					<table border="1" class="targetTable">
						<tr>
							<td class="left" style="width: 20%">작품키워드</td>
							<td>
								<div id="add">
									<form action="#" class="keywordSearch">
										<input type="text" id="keyword" autocomplete="off">
										<button type="submit">추가</button>
										 0/20
									</form>
								</div>
								<div class="keywordContainer"></div>
								 10/10개<br>
								띄어쓰기, 문장 기호가 특수 문자를 사용한 등록이 불가능하며, 최대 10개까지 등록이 가능합니다.
							</td>
						</tr>
					</table>

				</div>
				<!-- end 타겟 설정 영역 -->

				<!-- 옴션설정 영역 -->
				<div class="optionContainer">

					<div class="flexcontainer">
						<div class="textTitle">
							<h4>옵션</h4>
						</div>
						<div class="addButton">
							<button class="button" id="add" type="button">옵션추가</button>
						</div>
					</div>
					<!-- end flexcontainer -->

					<table border="1" class="optionTable">
						<tr>
							<td class="left" style="width: 20%">옵션1</td>
							<td>
								<div>
									<div class="flexcontainer">
										<div class="textTitle">
											<input type="text" id="keyword" placeholder="구성 선택" autocomplete="off">
										</div>
										<div class="addButton">
											<button type="button" class="button">세부 항목 추가</button>
											<button type="button" class="button">옵션 삭제</button>
										</div>
									</div>
									<!-- end flexcontainer -->

								</div> <!-- end detail -->
								<hr>
								<div>
									<div class="flexCon">
										<div class="nameGroup" style="margin-left:3%">
											<div class="names">
												<label>이름</label> &nbsp;<input type="text" id="name1" size="30%" autocomplete="off">
											</div>
											<div class="names">
												<label>이름</label> &nbsp;<input type="text" id="name2" size="30%" autocomplete="off">
											</div>
											<div class="names">
												<label>이름</label> &nbsp;<input type="text" id="name3" size="30%" autocomplete="off">
											</div>
										</div>
										<div class="priceGroup" style="margin-left:9%">
											<div class="prices">
												<label>가격</label> &nbsp;<input type="text" id="price1" size="30%" autocomplete="off">
											</div>
											<div class="prices">
												<label>가격</label> &nbsp;<input type="text" id="price2" size="30%" autocomplete="off">
											</div>
											<div class="prices">
												<label>가격</label> &nbsp;<input type="text" id="price3" size="30%" autocomplete="off">
											</div>
										</div>
									</div>
									<!-- end flexcon -->
								</div>
							</td>
						</tr>
						<tr>
							<td class="left" style="width: 20%">옵션2</td>
							<td>
								<div>
									<div class="flexcontainer">
										<div class="textTitle">
											<input type="text" id="keyword" placeholder="구성 선택" autocomplete="off">
										</div>
										<div class="addButton">
											<button type="button" class="button">세부 항목 추가</button>
											<button type="button" class="button">옵션 삭제</button>
										</div>
									</div>
									<!-- end flexcontainer -->

								</div> <!-- end detail -->
								<hr>
								<div>
									<div class="flexCon">
										<div class="nameGroup" style="margin-left:3%">
											<div class="names">
												<label>이름</label> &nbsp;<input type="text" id="name1" size="30%" autocomplete="off">
											</div>
											<div class="names">
												<label>이름</label> &nbsp;<input type="text" id="name2" size="30%" autocomplete="off">
											</div>
											<div class="names">
												<label>이름</label> &nbsp;<input type="text" id="name3" size="30%" autocomplete="off">
											</div>
										</div>
										<div class="priceGroup" style="margin-left:9%">
											<div class="prices">
												<label>가격</label> &nbsp;<input type="text" id="price1" size="30%" autocomplete="off">
											</div>
											<div class="prices">
												<label>가격</label> &nbsp;<input type="text" id="price2" size="30%" autocomplete="off">
											</div>
											<div class="prices">
												<label>가격</label> &nbsp;<input type="text" id="price3" size="30%" autocomplete="off">
											</div>
										</div>
									</div>
									<!-- end flexcon -->
								</div>
							</td>
						</tr>
					</table>
				</div>
				<!-- end 옵션 영역 -->
				</div><!-- end workRegisterContainer -->
				<div class="savecontainer">
					<button type="submit" id="save">저장하기</button>
				</div>
				<!-- content -->



				<%@ include file="/view/include/footer.jsp" %>
				<!-- end footer -->
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
			</div><!-- end content -->
		</div>
	</div>
</body>
</html>