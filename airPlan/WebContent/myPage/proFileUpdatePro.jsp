<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="airPlan.airPlanBean" %>
<%@ page import="airPlan.Register" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="css/profile5.css"/>
<link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">
<title>ProFileps</title>
<meta charset="UTF-8">
</head>
<body>
<!-- Top -->
	
	<div class="Jnt">
	<div class="logo">
			<a href="../SignUp/main.jsp">
				<img src="image/logo.png">
			</a>
	</div>
</div>

<div class="Pts">
		<p>　　Password Change</p>
</div>
	
<div class="okb">
	<div class="form-group text-center">
	<div class="col-md-6 col-md-offset-3">
		<div class="alert alert-info" role="alert">
  		<h4 class="alert-heading">변경되었습니다!</h4>
  		<p>비밀번호가 정상적으로 변경되었습니다. 비밀번호 분실에 주의 부탁드립니다 또한 비밀번호를 안전하게 보관 하십시오</p>
  		<hr>
  		<p class="mb-0">비밀번호 재변경을 원하시다면. 변경한 비밀번호를 알고계셔야합니다</p>
		</div>
	
    
 <% 
		String id = (String)session.getAttribute("UserId");
		String pw = request.getParameter("now_pw");
		String newpw = request.getParameter("change_pw");
		
		Register dbpro = Register.getInstance();
		int check = 0;
		check = dbpro.UpdatePw(id, pw, newpw);
		
		if(check == 1){%>
	
	<div class="form-group text-right">
              <button type="button" class="btn btn-primary" onclick="document.location.href='../SignUp/main.jsp'">H O M E</button>
     </div>
	
	<%
		}else{
	%>
	<META http-equiv=refresh content="0;url=proFileUpdate.jsp">
	<script>
	   alert("비밀번호 틀렸습니다.");
	</script>
	
	<%
	}
	%>
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