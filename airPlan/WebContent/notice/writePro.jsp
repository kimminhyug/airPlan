<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "airPlan.noticeBoardDBBean" %>
<%@ page import = "java.sql.Timestamp" %>

<% request.setCharacterEncoding("utf-8");%>
<% String name=(String)session.getAttribute("UserId");%>
<jsp:useBean id="article" scope="page" class="airPlan.BoardDataBean">
   <jsp:setProperty name="article" property="*"/>
</jsp:useBean>
 
<%
    article.setReg_date(new Timestamp(System.currentTimeMillis()) );
	article.setIp(request.getRemoteAddr());
	article.setWriter(name);
	
	noticeBoardDBBean dbPro = noticeBoardDBBean.getInstance();
    dbPro.insertArticle(article); 
   
    
    response.sendRedirect("list.jsp");
%>