<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작품등록</title>

<link href="<c:url value='/resources/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet" type="text/css">
<link href="<c:url value='/resources/css/summernote/summernote-lite.css'/>" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
   rel="stylesheet">
<!-- Custom styles for this template-->
<link href="<c:url value='/resources/css/sb-admin-2.min.css'/>" rel="stylesheet">
<style>
.jeongaworkRegisterContainer{
   width:80%;
}
.jeongabasicInformationContainer {
   width: 100%;
   margin-left: 2%;
}

.jeongabasicInfoTable {
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


.imageContainer {
   width: 800px;
   margin: 10px;
}

.imageContainer img {
   max-width: 120px;
   margin-right:1%;
}
input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}

#workName{
	height:30px;
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

#registerbtn{
	margin:5%;
}

#keyword1,#keyword2,#keyword3,#keyword4,#keyword5,#keyword6,#keyword7,#keyword8{
	margin:5px;
}


</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script> 
function removeImg(){
   var id = document.getElementById('imgs');
   id.removeChild(id);

}
function setThumbnail(event) {  
	$(".imageContainer").empty();
   for (var image of event.target.files) { 
      var reader = new FileReader(); 
      reader.onload = function(event) { 

         var img = document.createElement("img"); 
         img.setAttribute("src", event.target.result); 
                
         var divEle = document.createElement("a");
        // divEle.setAttribute("href","#");
         //divEle.setAttribute("onclick","removeImg();")
         //divEle.setAttribute("id","imgs")
         divEle.appendChild(img);
         document.querySelector("div.imageContainer").appendChild(divEle);
      }; 
      console.log(image); 
      reader.readAsDataURL(image);
   }  
}

$(function() {
    $('#workName').keyup(function (e){
        var content = $(this).val();
        $(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
        $('#nameCounter').html(content.length + '/20');
    });
    $('#workName').keyup();
});

/*
$(document).ready(function() {
    $('#summernote').summernote({
       height : 350, // 에디터 높이
       minHeight : null, // 최소 높이
       maxHeight : null, // 최대 높이
       focus : true, // 에디터 로딩후 포커스를 맞출지 여부
       lang : "ko-KR", // 한글 설정
       placeholder:"작품 설명을 적어주세요." //placeholder 설정

    });
 });*/
 
</script>
</head>
<body id="page-top">
	<c:if test="${param.check eq 1}">
		<script type="text/javascript">
			alert("글이 등록 되었습니다.");
			location.href="/bomulsum/writer/workRegister.wdo";
		</script>
	</c:if>


   <div id="wrapper">
      <!-- Header/Nav -->
      <%@ include file="../include/side.jsp" %>
      <div id="content-wrapper" class="d-flex flex-column">
         <div id="content">
            <%@ include file="../include/head.jsp" %>
            <!-- end Header/Nav -->
            <div class="jeongaworkRegisterContainer">
            <!-- 기본정보 영역 -->
             <div class="jeongabasicInformationContainer">
               <!-- topLine -->
               <div class="flexcontainer">
                  <div class="textTitle">
                     <h4>기본정보</h4>
                  		   등록하려는 작품에 대해 이야기해주세요
                  </div>
               </div>
               <!-- end flexcontainer -->
               <!-- end of topLine -->
            
            <!-- form 시작 -->
           	<form action="<c:url value='/writer/artregister.wdo'/> " method="post" enctype="multipart/form-data">
               <table border="1" class="jeongabasicInfoTable">

                  <tr>
                     <td class="left" style="width: 20%">사진등록</td>
                     <td><input type="file" id="image" accept="image/*" name="artPicture"
                        onchange="setThumbnail(event);" multiple />
                        <div class="imageContainer">                         
                        </div>
                        <span style="font-size:14px">* 파일 선택시 한 번에 여러장의 이미지를 올려주세요</span>
                     </td>
                  </tr>
                  <tr>
                     <td class="left">작품명</td>
                     <td>
                          <input type="text" id="workName" name="artName" style="max-height: 30px" maxlength="20" autocomplete="off" />
							<span id="nameCounter" style="font-size: 12px"> ### </span></td>
                         </td>
                  </tr>
                  <tr>
                     <td class="left">가격</td>
                     <td><input type="number" id="workPrice" name = "artPrice" autocomplete="off">&nbsp;원</td>
                  </tr>
                  <tr>
                     <td class="left">할인</td>
                     <td><input type="number" id="salePrice" name="artDiscount" autocomplete="off">&nbsp;원</td>
                  </tr>
                  <tr>
                     <td class="left">수량</td>
                     <td><input type="number" id="num" name = "artAmount" autocomplete="off"> 개</td>
                  </tr>
                  <tr>
                     <td class="left">작품설명</td>
                     <td><textarea id="summernote" name="artDescription" rows="8" cols="80" style="overflow-y: scroll; resize: none;"></textarea></td>
                  </tr>
       			
                  <tr>
                     <td class="left">카테고리</td>
                     <td>                    
                           <select name="artCategory" id="category_id">
                              <option value="식음료">식음료</option>
                              <option value="문구팬시">문구팬시</option>
                              <option value="전자기기">전자기기</option>
                              <option value="패션잡화">패션잡화</option>
                              <option value="반려동물">반려동물 용품</option>
                              <option value="인테리어">인테리어 소품</option>
                              <option value="신발">신발</option>
                              <option value="의류">의류</option>
                              <option value="육아,아동">육아.아동</option>
                              <option value="인형,장난감">인형.장난감</option>
                              <option value="공예">공예</option>
                              <option value="기타">기타</option>
                           </select>
                     </td>
                  </tr>
          
            <!-- end 기본 작품 정보 영역  -->
            
            <!-- 작품 정보 제공 고시 영역 -->
            <tr>
            <td colspan="2" style="border-right: 0px; border-left:0px;">
 
               <!-- topLine -->
               <div class="topLine">
                  <div class="detailTitle" style="padding-top:3%; padding-bottom:0px;">
                     <h4>작품 정보 제공 고시</h4>
                     <p style="margin-bottom:0px">전자상거래법에 따라 작품 정보제공 고시는 필수 입력사항입니다. 해당 정보에 대한 책임은 판매 작가님에게
                        있습니다.</p>
                  </div>
               </div>
               </td>
               </tr>
               <!-- end of topLine -->
                  <tr>
                     <td class="left" style="width: 20%">작품군</td>              
                     <td>
                        <div class="categoryDiv">

                              <select name="artInfoDetailCategory" id="categoryId">
                                 <option value="식음료">식음료</option>
                                 <option value="문구팬시">문구팬시</option>
                                 <option value="전자기기">전자기기</option>
                                 <option value="패션잡화">패션잡화</option>
                                 <option value="반려동물 용품">반려동물 용품</option>
                                 <option value="인테리어 소품">인테리어 소품</option>
                                 <option value="신발">신발</option>
                                 <option value="의류">의류</option>
                                 <option value="육아,아동">육아.아동</option>
                                 <option value="인형,장난감">인형.장난감</option>
                                 <option value="공예">공예</option>
                                 <option value="기타">기타</option>
                              </select>

                        </div> <!-- categoryDiv -->

                        <div class="infoBox" style="border: 1px solid #ddd; padding:15px; margin-top:2%; width:85%">
                           <div id="weight" >
                              <label>포장단위별 용량(중량), 수량</label><br> 
                              <input type="text" name="artInfoDetailWeight" id=wWeight size="78%" autocomplete="off">
                           </div>
                           <!-- end weight -->
                           <div id="produce" style="margin-top:1%">
                              <label>생산자 및 소재지</label><br> 
                              <input type="text" name="artInfoDetailFrom" id=wProduce size="78%" autocomplete="off">
                           </div>
                           <!-- end produce -->
                           <div id="ingredient" style="margin-top:1%">
                              <label>원재료명 및 함량</label><br> 
                              <input type="text" name="artInfoDetailMaterial" id=wIngredient size="78%" autocomplete="off">
                           </div>
                           <!-- end ingredient -->
                           <div id="date" style="margin-top:1%">
                              <label>제조년월일, 유통기한 또는 품질 유지기한</label><br> 
                              <input type="text" name="artInfoDetailExpdate" id=wDate size="78%" autocomplete="off">
                           </div>
                           <!-- end date -->
                           <div id="manage" style="margin-top:1%">
                              <label>관리법상 표시사항</label><br> 
                              <input type="text" name="artInfoDetailMust" id=wManage size="78%" autocomplete="off">
                           </div>
                           <!-- end manage -->
                           <div id="config" style="margin-top:1%">
                              <label>구성</label><br> 
                              <input type="text" name="artInfoDetailComponent" id=wConfig size="78%" autocomplete="off">
                           </div>
                           <!-- end config -->
                           <div id="manual" style="margin-top:1%">
                              <label>보관방법 또는 취급방법</label><br> 
                              <input type="text" name="artInfoDetailWay" id=wManual size="78%" autocomplete="off">
                           </div>
                           <!-- end manual -->

                        </div> <!-- end infoBox -->

                     </td>
                  </tr>
            <!-- end 작품 정보 제공 고시 영역  -->

            <!-- 키워드 타겟설정 영역 -->
               <!-- topLine -->
               <tr>
               <td style="border-right: 0px; border-left:0px;">
               <div class="topLine" style="padding-top:20px">
                  <h4>타겟설정</h4>
               </div>
               </td>
               </tr>
               <!-- end of topLine -->
                  <tr>
                     <td class="left" style="width: 20%">작품키워드</td>
                     <td>
                        <!-- 키워드 추가 수정 -->
                             <input type="text" id="keyword1" name = "artKeyword" placeholder="키워드1" maxlength="15" autocomplete="off">
                             <input type="text" id="keyword2" name = "artKeyword" placeholder="키워드2" maxlength="15" autocomplete="off">
                             <input type="text" id="keyword3" name = "artKeyword" placeholder="키워드3" maxlength="15" autocomplete="off">
                             <input type="text" id="keyword4" name = "artKeyword" placeholder="키워드4" maxlength="15" autocomplete="off">
                             <input type="text" id="keyword5" name = "artKeyword" placeholder="키워드5" maxlength="15" autocomplete="off">
                             <input type="text" id="keyword6" name = "artKeyword" placeholder="키워드6" maxlength="15" autocomplete="off">
                             <input type="text" id="keyword7" name = "artKeyword" placeholder="키워드7" maxlength="15" autocomplete="off">
                             <input type="text" id="keyword8" name = "artKeyword" placeholder="키워드8" maxlength="15" autocomplete="off">

                         <br>
                        <span style="font-size:14px;">* 띄어쓰기, 문장 기호가 특수 문자를 사용한 등록이 불가능하며, 최대 8개까지 등록이 가능합니다.</span>
                     </td>
                  </tr>
            <!-- end 타겟 설정 영역 -->

            <!-- 옴션설정 영역 -->
			<tr>
			<td colspan="2" style="border-right: 0px; border-left:0px;">
               <div class="flexcontainer">
                  <div class="textTitle" style="padding-top:3%; padding-bottom:0px;">
                     <h4>옵션</h4>
                  </div>
               </div>
               </td>
               </tr>
               <!-- end flexcontainer -->

                  <tr>
                     <td class="left" style="width: 20%">옵션1</td>
                     <td>
                        <div>
                           <div class="flexcontainer">
                              <div class="textTitle">
                                 <input type="text" name="artOptionCategory" id="option" placeholder="구성 선택" autocomplete="off">
                              </div>
                           </div>
                           <!-- end flexcontainer -->

                        </div> <!-- end detail -->
                        <hr>
                        <div>
                           <div class="flexCon">
                              <div class="nameGroup" style="margin-left:3%">
                                 <div class="names">
                                    <label>이름</label> &nbsp;<input type="text" name="artOptionName" id="name1" size="30%" autocomplete="off">
                                 </div>
                                 <div class="names">
                                    <label>이름</label> &nbsp;<input type="text" name="artOptionName" id="name2" size="30%" autocomplete="off">
                                 </div>
                                 <div class="names">
                                    <label>이름</label> &nbsp;<input type="text" name="artOptionName" id="name3" size="30%" autocomplete="off">
                                 </div>
                              </div>
                              <div class="priceGroup" style="margin-left:9%">
                                 <div class="prices">
                                    <label>가격</label> &nbsp;<input type="text" name="artOptionPrice" id="price1" size="30%" autocomplete="off">
                                 </div>
                                 <div class="prices">
                                    <label>가격</label> &nbsp;<input type="text" name="artOptionPrice" id="price2" size="30%" autocomplete="off">
                                 </div>
                                 <div class="prices">
                                    <label>가격</label> &nbsp;<input type="text" name="artOptionPrice" id="price3" size="30%" autocomplete="off">
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
                                 <input type="text" name="artOptionCategory" id="option" placeholder="구성 선택" autocomplete="off">
                              </div>
                           </div>
                           <!-- end flexcontainer -->

                        </div> <!-- end detail -->
                        <hr>
                        <div>
                           <div class="flexCon">
                              <div class="nameGroup" style="margin-left:3%">
                                 <div class="names">
                                    <label>이름</label> &nbsp;<input type="text" name="artOptionName" id="name1" size="30%" autocomplete="off">
                                 </div>
                                 <div class="names">
                                    <label>이름</label> &nbsp;<input type="text" name="artOptionName" id="name2" size="30%" autocomplete="off">
                                 </div>
                                 <div class="names">
                                    <label>이름</label> &nbsp;<input type="text" name="artOptionName" id="name3" size="30%" autocomplete="off">
                                 </div>

                              </div>
                              <div class="priceGroup" style="margin-left:9%">
                                 <div class="prices">
                                    <label>가격</label> &nbsp;<input type="text" name="artOptionPrice" id="price1" size="30%" autocomplete="off">
                                 </div>
                                 <div class="prices">
                                    <label>가격</label> &nbsp;<input type="text" name="artOptionPrice" id="price2" size="30%" autocomplete="off">
                                 </div>
                                 <div class="prices">
                                    <label>가격</label> &nbsp;<input type="text" name="artOptionPrice" id="price3" size="30%" autocomplete="off">
                                 </div>
                              </div>
                           </div>
                           <!-- end flexcon -->
                        </div>
                     </td>
                  </tr>
                    <tr>
                     <td class="left" style="width: 20%">옵션3</td>
                     <td>
                        <div>
                           <div class="flexcontainer">
                              <div class="textTitle">
                                 <input type="text" name="artOptionCategory" id="option" placeholder="구성 선택" autocomplete="off">
                              </div>
                           </div>
                           <!-- end flexcontainer -->

                        </div> <!-- end detail -->
                        <hr>
                        <div>
                           <div class="flexCon">
                              <div class="nameGroup" style="margin-left:3%">
                                 <div class="names">
                                    <label>이름</label> &nbsp;<input type="text" name="artOptionName" id="name1" size="30%" autocomplete="off">
                                 </div>
                                 <div class="names">
                                    <label>이름</label> &nbsp;<input type="text" name="artOptionName" id="name2" size="30%" autocomplete="off">
                                 </div>
                                 <div class="names">
                                    <label>이름</label> &nbsp;<input type="text" name="artOptionName" id="name3" size="30%" autocomplete="off">
                                 </div>

                              </div>
                              <div class="priceGroup" style="margin-left:9%">
                                 <div class="prices">
                                    <label>가격</label> &nbsp;<input type="text" name="artOptionPrice" id="price1" size="30%" autocomplete="off">
                                 </div>
                                 <div class="prices">
                                    <label>가격</label> &nbsp;<input type="text" name="artOptionPrice" id="price2" size="30%" autocomplete="off">
                                 </div>
                                 <div class="prices">
                                    <label>가격</label> &nbsp;<input type="text" name="artOptionPrice" id="price3" size="30%" autocomplete="off">
                                 </div>
                              </div>
                           </div>
                           <!-- end flexcon -->
                        </div>
                     </td>
                  </tr>
               </table>
			<div style="margin-left:46%">
	 		<input type="submit" value="글 등록" class="btn btn-primary" id="registerbtn" style="margin:10px;">
	 		</div>
	 		</form>
            </div> <!-- end basicInformationContainer -->
            <!-- end 옵션 영역 -->
            </div><!-- end jeongaworkRegisterContainer -->
            <!-- content -->

            <%@ include file="../include/footer.jsp" %>
            <!-- end footer -->
            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top"> <i
               class="fas fa-angle-up"></i>
            </a>

            <script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
            <script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
			<script src="<c:url value='/resources/js/summernote/lang/summernote-ko-KR.js'/>"></script>
      		<script src="<c:url value='/resources/js/summernote/summernote-lite.js'/>"></script>
            <!-- Core plugin JavaScript-->
            <script src="<c:url value='/resources/vendor/jquery-easing/jquery.easing.min.js'/>"></script>

            <!-- Custom scripts for all pages-->
            <script src="<c:url value='/resources/js/sb-admin-2.min.js'/>"></script>

    
			</div><!-- end content -->
      </div>
   </div> 
</body>

</html>