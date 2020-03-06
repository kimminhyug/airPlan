<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "airPlan.reviewBoardDBBean" %>
<%@ page import = "java.sql.Timestamp" %>

<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="article" scope="page" class="airPlan.BoardDataBean">
   <jsp:setProperty name="article" property="*"/>
</jsp:useBean>
<%
	

	String useridc=(String)session.getAttribute("UserId");
	
	article.setcommentWriter(useridc);

	article.setcommentContent(request.getParameter("commentText"));
	article.setchecknum(request.getParameter("number2"));
	
	reviewBoardDBBean dbPro = reviewBoardDBBean.getInstance();
    dbPro.insertCommentArticle(article);
%>
<script>

history.go(-1);


</script>

