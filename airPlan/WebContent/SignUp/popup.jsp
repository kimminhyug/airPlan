<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<script language="JavaScript"> 

function setCookie( name, value, expiredays ) 
{ 
var todayDate = new Date(); 
todayDate.setDate( todayDate.getDate() + expiredays ); 
document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";" 
} 
function closeWin() 
{ 
if ( document.myform.event.checked ) 
setCookie("memo", "no" , 1); // 1일 간 쿠키적용
} 

</script>


<meta charset="UTF-8">

<link rel="stylesheet" href="css/bootstrap.css"/>
 <link rel="stylesheet" type="text/css" href="css/pop.css">
<link href="https://fonts.googleapis.com/css?family=Bree+Serif" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Bree+Serif|Mali|Noto+Sans+KR" rel="stylesheet">
 
<title>Oversea</title>

</head>

<body onunload="closeWin()">


	<div class="pop1">
		<div class="pop2">
			<center>
			<br><br>
			<div class="logo2">
			<a onClick="window.open('http://106.10.51.75/2018_2A03_Oversea/index.jsp')">
				<img src="image/pop4.png"></a>
			<div class="pop3">

			<h1>OverSea</h1>
			<span><h3>Do you need travel packages?</h3></span>
			<br>
			
			<p>
			다양한 상품과 패키지를 이용하고싶으시다면<br>
			당장 OverSea 홈페이지에 접속하셔서 상품을 확인해보세요!	
			</p>
			<br>
			<form name="myform"> 
				<input type="button" class="btn btn-primary"  value="이동하기" onClick="window.open('http://106.10.51.75/2018_2A03_Oversea/index.jsp')"><br><br>
				<input type="checkbox" name="event"> 하루동안 보지 않기
			</form> 
			</div>
			</center>
			</div>
		</div>
	</div>

</body>
</html>