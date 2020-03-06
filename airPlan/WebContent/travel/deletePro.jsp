<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "airPlan.reviewBoardDBBean" %>
<%@ page import = "java.sql.Timestamp" %>

<% request.setCharacterEncoding("utf-8");%>
<% String name=(String)session.getAttribute("UserId");%>
<jsp:useBean id="article" scope="page" class="airPlan.BoardDataBean">
   <jsp:setProperty name="article" property="*"/>
</jsp:useBean>

<%
int num = Integer.parseInt(request.getParameter("num"));
String pageNum = request.getParameter("pageNum");


reviewBoardDBBean dbPro = reviewBoardDBBean.getInstance(); 
int check = dbPro.deleteArticle(num, name);


%>
	<script type="text/javascript">           
	alert("삭제 되었습니다.");
   </script>
	<meta http-equiv="Refresh" content="0;url=list.jsp?pageNum=<%=pageNum%>">
    