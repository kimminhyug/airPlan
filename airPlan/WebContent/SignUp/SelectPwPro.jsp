<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@page import="airPlan.*" %>
<%
   request.setCharacterEncoding("UTF-8");
%>

<%@ page import="java.sql.*"%>

<jsp:useBean id="regBean" class="airPlan.airPlanBean" scope="page">
<jsp:setProperty property="*" name="regBean" />
</jsp:useBean>

<!-- 비밀번호 찾기 -->
<%
	Register dbpro = Register.getInstance();

   String result = "";
   String s = dbpro.SelectPw(regBean);

   if (s.equals("fail")) {
      result = "PW 찾기에 실패했습니다.";
   } else {
      result = "고객님의 PW : " + s + "입니다.";
   }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>AirPlan</title>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="css/selectformf.css"/>
<link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">
 <script lanaguage="JavaScript" src="airPlan.js"></script>
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
		<p>Find ID / Password</p>
</div>

<div class="okb">
	<div class="form-group text-center">
     <%
        if (s.equals("fail")) {
     %>
     <div class="alert alert-default" role="alert">
     <h4 class="alert-heading"><%=result%></h4>
     <p>AIR PLAN</p>
  	<hr>
  	<p class="mb-0">더 좋은 환경으로 여행을 도와드리겠습니다.</p>
	</div>
	<button  type="button" class="btn btn-primary" value="확인" onclick="location.href = 'main.jsp'">H O M E</button>
	&nbsp&nbsp
	<button  type="button" class="btn btn-default" value="확인" onclick="location.href = 'SelectForm.jsp'">B A C K</button>
     
     <%
        } else {
     %>
     
      <div class="alert alert-default" role="alert">
     <h4 class="alert-heading"><%=result%></h4>
     <p>AIR PLAN</p>
  	<hr>
  	<p class="mb-0">더 좋은 환경으로 여행을 도와드리겠습니다.</p>
	</div>
	<button  type="button" class="btn btn-primary" value="확인" onclick="location.href = 'main.jsp'">HOME</button>
	&nbsp&nbsp
	<button  type="button" class="btn btn-default" value="확인" onclick="location.href = 'LoginPage.jsp'">Login</button>
     <%
        }
     %>
     </div>
</div>

<div class="bottom">
	 <center>ⓒ Airplan2018_2b02 / 문의 : 010-0000-0000 / AirPlan@naver.com / https://blog.naver.com/airplan2018_2b02 <br></center>
	 <center>팀장_고진호 / 코더_김민혁 / 웹퍼블리셔_임용섭 / 블로거_박제현</center>
</div>

</body>
</html>