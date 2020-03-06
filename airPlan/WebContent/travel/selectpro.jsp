<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "airPlan.reviewBoardDBBean" %>
<%@ page import = "java.sql.Timestamp" %>

<%
	request.setCharacterEncoding("utf-8");
%>


 
<%
 	session.setAttribute("selecttext", request.getParameter("text"));
	session.setAttribute("selectchoice", request.getParameter("select"));

     reviewBoardDBBean dbPro = reviewBoardDBBean.getInstance();
   

     response.sendRedirect("list.jsp");
 %>