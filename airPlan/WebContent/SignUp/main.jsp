<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
	<head>
	<meta charset="UTF-8">

<script language="javascript"> 

function getCookie(name) 
{ 
var Found = false 
var start, end 
var i = 0 
// cookie 문자열 전체를 검색 
while(i <= document.cookie.length) 
{ 
start = i 
end = start + name.length 
// name과 동일한 문자가 있다면 
if(document.cookie.substring(start, end) == name) 
{
Found = true 
break 
} 
i++ 
} 
// name 문자열을 cookie에서 찾았다면 
if(Found == true) { 
start = end + 1 
end = document.cookie.indexOf(";", start) 
// 마지막 부분이라 는 것을 의미(마지막에는 ";"가 없다) 
if(end < start) 
end = document.cookie.length 
// name에 해당하는 value값을 추출하여 리턴한다. 
return document.cookie.substring(start, end) 
} 
// 찾지 못했다면 
return "" 
} 
function openMsgBox() 
{ 
var eventCookie=getCookie("memo"); 
if (eventCookie != "no") 
window.open('popup.jsp','_blank',' location=no, width=395,height=495,top=160,left=150'); 
//팝업창의 주소, 같은 도메인에 있어야 한다. 
} 
openMsgBox(); 

</script> 



<title>AirPlan</title>
		

<meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="css/index.css">
  <link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">
  <script type="text/javascript"  src="./js/top.js"></script>
<script type="text/javascript"  src="./js/mainContent.js"></script>
</head>

<body>
<!--  onload="window.open('popup.jsp','','width=395,height=495,left=200,top=150')" -->

<div>
	
	<div id="Hder">
          	<jsp:include page="header.jsp" flush="false" />
    </div>
	
	<div id="Pt">
			<jsp:include page="mainV.jsp" flush="false" />
	</div>
	
	<div id="Ctent">
          	<jsp:include page="slider.jsp" flush="false" />
    </div>
    
    <div>　
    
	<br>
<div class="fott">
<footer>
		<div class="container-fluid padding">
		<div class="row text-center">
			<div class=" col-md-4">
				<img src="image/logo.png" style="width: 250px;">
				<hr class="light">
				<p>코더_010-3378-5817</p>
				<p>서브_010-3925-4953</p>
				<p>웹퍼_010-3032-5893</p>
				<p>블로_010-3015-0639</p>

			</div>

			<div class="col-md-4">
				<hr class="light">
				<h5 style="font-size: 20px;">고객센터 운영시간</h5>
				<hr class="light">
				<p>Monday: 9am - 5pm</p>
				<p>Saturday: 10am - 4pm</p>
				<p>Sunday: closed</p>
			</div>
			
			<div class="col-md-4">
				<hr class="light">
				<h5 style="font-size: 20px;">AIRPLAN</h5>
				<hr class="light">
				<p>Go to Travel</p>
				<p>AirPlan@naver.com</p>
				<p>https://blog.naver.com/airplan2018_2b02</p>
				<p>ⓒ Airplan2018_2b02</p>
			</div>
			
		</div>
		
		<br>
		<div class="text-center">
		<div class="col-12">
				<hr class="light">
				<h5 style="font-size: 20px;">ⓒ Airplan2018_2b02</h5>
			</div>
		</div>
		</div>
</footer>
</div>	
    </div>
    
    
</div>

</body>

</html>