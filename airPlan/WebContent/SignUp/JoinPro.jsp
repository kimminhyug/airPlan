<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@page import="airPlan.*"%>
<%request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id = "regBean" class="airPlan.airPlanBean" scope="page">
<jsp:setProperty name = "regBean" property="*"/>
</jsp:useBean>

<!-- 회원가입 입력폼에서 받아온 값을 데이터베이스에 저장 -->
<% Register dbpro = Register.getInstance();
   String str = dbpro.insertJoin(regBean);%>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="css/ok.css"/>
<link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">
<title>회원 추가</title>
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
		<p>Member Ship</p>
</div>


<div class="okb">
	<div class="form-group text-center">
		<div class="alert alert-default" role="alert">
  		<h4 class="alert-heading"><%=str %></h4>
  		<p>AIR PLAN</p>
  		<hr>
  		<p class="mb-0">더 좋은 환경으로 여행을 도와드리겠습니다.</p>
		</div>
					<button  type="button" class="btn btn-primary" value="확인" onclick="location.href = 'main.jsp'">H o m e</button>
					&nbsp&nbsp
					<button  type="button" class="btn btn-default"  onclick="location.href = '../SignUp/Join.jsp'">B A C K</button>
		</div>
		
</div>	

<div class="bottom">
	 		 <center>ⓒ Airplan2018_2b02 / 문의 : 010-0000-0000 / AirPlan@naver.com / https://blog.naver.com/airplan2018_2b02 <br></center>
	 		 <center>팀장_고진호 / 코더_김민혁 / 웹퍼블리셔_임용섭 / 블로거_박제현</center>
	 	</div>
</body>
</html>