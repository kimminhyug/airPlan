<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "airPlan.BoardDBBean" %>
<%@ page import = "java.sql.Timestamp" %>

<%
	request.setCharacterEncoding("utf-8");
%>


 
<%
 	session.setAttribute("selectnoticetext", request.getParameter("text"));
	session.setAttribute("selectnoticechoice", request.getParameter("select"));

	BoardDBBean dbPro = BoardDBBean.getInstance();
   

     response.sendRedirect("list.jsp");
 %>