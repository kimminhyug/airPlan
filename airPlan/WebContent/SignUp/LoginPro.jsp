<%@page import="airPlan.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%
   request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id = "regBean" class="airPlan.airPlanBean" scope="page">
<jsp:setProperty name = "regBean" property="*"/>
</jsp:useBean>
<!-- 레지스터빈에 있는 레지스터메소드 선언 -->
<%
	Register dbpro = Register.getInstance();
   String s = dbpro.login(regBean);
%>

<!-- 로그인시 아이디확인 -->
<%
   if (s.equals("idfail")) {
%>
<META http-equiv=refresh content="0;url=LoginPage.jsp">
<script>
   alert("아이디가 없습니다.");
</script>

<!-- 로그인시 비밀번호확인 -->
<%
   } else if (s.equals("pwfail")) {
%>
<META http-equiv=refresh content="0; url=LoginPage.jsp">

<!-- 비밀번호가 틀리면 알림창 -->
<script>
   alert("비밀번호가 틀립니다.");
</script>
<%
   } else {
%>

<script type="text/javascript"> 
</script>
<%   
session.setAttribute("UserId", regBean.getId());
session.setAttribute("UserPw", regBean.getPasswd());
session.setAttribute("login", "success");
session.setAttribute("loginReview","success");
response.sendRedirect("main.jsp");
%>	 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AirPlan</title>
</head>
<body>
	
</body>
</html>
<%
}
%>