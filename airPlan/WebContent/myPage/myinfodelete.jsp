<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="airPlan.selectTicket.*" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="css/profile3.css"/>
<link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">
<title>ProFileps</title>
</head>
<body>
<div class="Jnt">
	<div class="logo">
			<a href="../SignUp/main.jsp">
				<img src="image/logo.png">
			</a>
	</div>
</div>


<div class="Pts">
		<p>WITHDRAWAL</p>
</div>
		
	<% 
	String SitNumber = request.getParameter("SitNumber");
		selectTicket dbpro = selectTicket.getInstance();
		
		dbpro.deleteairPlane3(SitNumber);
		System.out.println(SitNumber);
		
	%>
<div class="okb">
	<div class="form-group text-center">
	<div class="col-md-6 col-md-offset-3">
		<div class="alert alert-danger" role="alert">
  		<h4 class="alert-heading">삭제가 완료되었습니다!</h4>
  		<p>이때까지 AirPlan을 이용해주셔서 감사합니다. <br>
  		다음에 방문하셨을 경우 더 좋은 모습으로 준비하겠습니다. </p>
  		<hr>
		</div>
	
	<div class="form-group text-right">
              <button type="button" class="btn btn-danger" onclick="document.location.href='../myPage/proFile.jsp'">감사합니다</button>
     </div>
	</div>
</div>
</div>


<div class="bottom">
	 		 <center>ⓒ Airplan2018_2b02 / 문의 : 010-0000-0000 / AirPlan@naver.com / https://blog.naver.com/airplan2018_2b02 <br></center>
	 		 <center>팀장_고진호 / 코더_김민혁 / 웹퍼블리셔_임용섭 / 블로거_박제현</center>
</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
	</script>
	<script type="text/javascript" src="js/bootstrap.js">
	</script>
</body>
</html>