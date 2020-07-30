<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.dainfooter{
   background-color: #ffffff;
   font-size: 13px;
   padding-bottom: 2%;
   z-index: 99;

}
.dain-borderright{
   border-right: 1px solid black;
}

.dainfooter-table{
   margin-top: 10px;
   margin-bottom: 10px;
   
}
.dainfooter-table td{
   padding-left : 20px;
   padding-right : 20px;
}

.dainfooter-link{
   border-top: 3px solid #1f76bb;
}

.dainfooter-copy{
   padding-top: 10px;
   padding-bottom: 10px;
   border-top: 1px solid #f1f1f1;
}

.dainfooter a:link, a:visited,a:hover,a:active {
  text-decoration: none;
  color: black;
  
}
</style>
</head>
<body>

<!-- Footer -->
<footer class="dainfooter">
<!-- footer link부분 -->
<div class="dainfooter-link" align="center">
   <table class="dainfooter-table">
      <tr>
         <td class="dain-borderright"><a href="#">공지사항</a></td>
         <td class="dain-borderright"><a href="#">자주 묻는 질문</a></td>
         <td class="dain-borderright"><a href="#">입점문의</a></td>
         <td><a href="#">About Bomulsum</a></td>
      </tr>
   </table>
</div>
<!-- footer Copyright -->
<div class="dainfooter-copy" align="center">
      <span>Copyright &copy; Bomulsum 2020</span>
</div>
</footer>
<!-- Footer 끝 -->
</body>
</html>
