<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="airPlan.selectTicket.*"%>
<% request.setCharacterEncoding("utf-8");%>
<% String name=(String)session.getAttribute("UserId");%>
<jsp:useBean id = "airPlan" class="airPlan.selectTicket.selectTicketDataBean" scope="page">
<jsp:setProperty name = "airPlan" property="*"/>
</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매 삭제화면</title>
</head>
<body>
<%
String WhatPlane = (String)request.getParameter("WhatPlane");

selectTicket dbPro = selectTicket.getInstance();
dbPro.deleteairPlane1(WhatPlane);  

  response.sendRedirect("ordermain.jsp");
  %>
</body>
</html>