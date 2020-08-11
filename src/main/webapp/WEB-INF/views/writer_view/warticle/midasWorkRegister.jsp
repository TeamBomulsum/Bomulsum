<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>강의등록</title>
<link href="<c:url value='/resources/vendor/fontawesome-free/css/all.min.css'/>" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="<c:url value='/resources/css/summernote/summernote-lite.css'/>" rel="stylesheet" type="text/css">     

<!-- Custom styles for this template-->
<link href="<c:url value='/resources/css/sb-admin-2.min.css'/>" rel="stylesheet">
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
function saveWork(){
	var startD = new Date(document.getElementById('startDate').value).getTime();
	var endD = new Date(document.getElementById('endDate').value).getTime();
	var startT = document.getElementById('startTime').value;
	var endT = document.getElementById('endTime').value;
	
	
	if(startT > endT){
		alert('시간을 제대로입력해')
	}
	
	if(startD == endD || startD > endD){
		alert('날짜를 다시 입력해 주세요!')
	}else{
		console.log('제대로 된 날짜')
	}
	
	
}


</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</head>
	<c:if test="${param.check eq 1}">
		<script type="text/javascript">
			alert("글이 등록 되었습니다.");
			location.href="/bomulsum/writer/midasRegister.wdo";
		</script>
	</c:if>
<body id="page-top">
   <div id="wrapper">
      <!-- Header/Nav -->
      <%@ include file="../include/side.jsp" %>
      <div id="content-wrapper" class="d-flex flex-column">
         <div id="content">
            <%@ include file="../include/head.jsp" %>
            <!-- end Header/Nav -->
        <form action="<c:url value='/writer/midasClassRegister.wdo'/> " method="post" enctype="multipart/form-data">
       
       
            <div class="workRegisterContainer">
            <!-- 기본정보 영역 -->
            <div class="basicInformationContainer">
               <!-- topLine -->
               <div class="flexcontainer">
                  <div class="textTitle">
                     <h4>기본정보</h4>
                     등록하려는 작품에 대해 이야기해주세요
                  </div>
               </div>
               <!-- end flexcontainer -->
               <!-- end of topLine -->
               <table border="1" class="basicInfoTable">
                  <tr>
                     <td class="left" style="width: 20%">사진등록</td>
                     <td>
                     	<input type="file" id="image" accept="image/*" name="orderPicture"
                        onchange="setThumbnail(event);" multiple />
                          <div class="imageContainer">                         
                        </div>
                     </td>
                  </tr>
                  <tr>
                     <td class="left">강의명</td>
                     <td><div class="workNameRegister">
                           <input type="text" name="midasName" maxlength="20" autocomplete="off"> <span
                              id="nameCounter"></span>
                        </div></td>
                  </tr>
                  <tr>
                     <td class="left">가격</td>
                     <td><input type="number" name="midasPrice" autocomplete="off"> 원</td>
                  </tr>
                  <tr>
                     <td class="left">할인</td>
                     <td><input type="checkbox"> 할인 후 가격  <input
                        type="number" id="salePrice" autocomplete="off" name="midasDiscount"> 원</td>
                  </tr>
                  <tr>
                     <td class="left">최대인원</td>
                     <td><button id="wonMinusButton" onclick="wonMinusButton()" style="border: 1px solid #ddd;">
                     <span style="border-color: #ABABAB;">-</span></button>
						<input id="wonAuctionAmount" type="number" style="width:10%; text-align: center;" value="1" readonly name="maxNumber">
						<button id="wonPlusButton" onclick="wonPlusButton()" style="border: 1px solid #ddd;">
						<span style="border-color: #ABABAB; ">+</span>
						</button>
					명</td>
                  </tr>
                   <tr>
                     <td class="left">날짜</td>
                     <td>
                     	<input type="date" id="startDate" name="startDate">
                     	&nbsp;~&nbsp;
                     	<input type="date" id="endDate" name="endDate">
                     </td>
                  </tr>
                    <tr>
                     <td class="left">요일</td>
                     <td>
                     	<input type="checkbox" value="mon" name="day">월&nbsp;
                     	<input type="checkbox" value="tue" name="day">화&nbsp;
                     	<input type="checkbox" value="wed" name="day">수&nbsp;
                     	<input type="checkbox" value="thu" name="day">목&nbsp;
                     	<input type="checkbox" value="fri" name="day">금&nbsp;
                     	<input type="checkbox" value="sat" name="day">토&nbsp;
                     	<input type="checkbox" value="son" name="day">일
                     </td>
                  </tr>
                   <tr>
                     <td class="left">시간</td>
                     <td>
                     	<input type="time" id="startTime" name="startTime"> 
                     		&nbsp;~&nbsp;
                     	<input type="time" id="endTime" name="endTime">
                     </td>
                  </tr>
                  <tr>
                     <td class="left">강의설명</td>
                     <td><textarea rows="4" cols="80" style="overflow-y: scroll;" name="about"
                           placeholder="작품 설명을 적어주세요." id="summernote"></textarea></td>
                  </tr>
                   <tr>
                     <td class="left">난이도</td>
                     <td>
                     	 <select id="category_id" name="balance">
                              <option value="hard">상</option>
                              <option value="nomal">중</option>
                              <option value="easy">하</option>
                           </select>
                     </td>
                  </tr>
                  <tr>
                     <td class="left">카테고리</td>
                     <td>
                           <select name="category" id="category_id" name="category">
                              <option value="crafts">공예</option>
                              <option value="cook">요리</option>
                              <option value="art">미술</option>
                              <option value="flower">플라워</option>
                              <option value="beauty">뷰티</option>
                              <option value="exp">체험 및 기타</option>
                              
                           </select>
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
                     <h4>주소창</h4>
                  </div>
               </div>
               <!-- end of topLine -->
               <table border="1" class="provideInfoTable">
                  <tr>
                     <td class="left" style="width: 20%">주소</td>
                     <td>
                         	 <input type="text" id="sample4_postcode" placeholder="우편번호"> 
							<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br> 
							<input type="text" id="sample4_roadAddress" placeholder="도로명주소" name="address1"> 
							<input type="text" id="sample4_jibunAddress" placeholder="지번주소"> 
							<span id="guide" style="color: #999; display: none"></span> 
							<input type="text" id="sample4_detailAddress" placeholder="상세주소" name="address2"> 
							<input type="text" id="sample4_extraAddress" placeholder="참고항목">
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
                              <input type="text" id="keyword" autocomplete="off" name="keyword">
                              <button type="submit">추가</button>
                               0/20
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
           
            <!-- end 옵션 영역 -->
            </div><!-- end workRegisterContainer -->
            <div class="savecontainer">
               <button type="submit" id="save" onclick="saveWork()">저장하기</button>
            </div>
            <!-- content -->
	</form>

            <%@ include file="../include/footer.jsp" %>
            <!-- end footer -->
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

			<script src="<c:url value='/resources/js/summernote/summernote-lite.js'/>"></script>
    		<script src="<c:url value='/resources/js/summernote/lang/summernote-ko-KR.js'/>"></script>
			</div><!-- end content -->
      </div>
   </div>
</body>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                }  else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
    function wonMinusButton(){
    	var minus = document.getElementById('wonMinusButton');
    	var value = parseInt(document.getElementById('wonAuctionAmount').value);

    		if(value > 1){
    			value -= 1;
    			console.log(value);
    			document.getElementById('wonAuctionAmount').value = value;
    		}else if(value == 1){
    			alert('인원을 확인해 주세요');
    		
    		} 
    }
    function wonPlusButton(){
    	var plus =  document.getElementById('wonPlusButton');
    	var value = parseInt(document.getElementById('wonAuctionAmount').value);
    		if(value > 0 && value < 10){
    			value += 1;
    			console.log(value);
    			document.getElementById('wonAuctionAmount').value = value;
    		}else if(value == 10){
    			alert('인원을 확인해 주세요');
    		} 
    	
    }
</script>
<script>
	$(document).ready(function() {
	      $('#summernote').summernote({
	         height : 350, // 에디터 높이
	         minHeight : null, // 최소 높이
	         maxHeight : null, // 최대 높이
	         focus : true, // 에디터 로딩후 포커스를 맞출지 여부
	         lang : "ko-KR", // 한글 설정
	         placeholder :  "작품 설명을 써주세요~"//placeholder 설정

	      });
	   });
</script>
</html>










