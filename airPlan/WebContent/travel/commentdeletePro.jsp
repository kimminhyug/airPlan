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
	

	String useridc=(String)request.getParameter("commentwrite");
	String num=(String)request.getParameter("number2");
	String coomentdate=(String)request.getParameter("coomentdate");
	String loginid=(String)request.getParameter("loginid");

	article.setcommentWriter(useridc);
	article.setdate(coomentdate);

	article.setchecknum(request.getParameter("number2"));
	
	reviewBoardDBBean dbPro = reviewBoardDBBean.getInstance();
    int x=dbPro.deletecommentArticle(num,useridc,coomentdate,loginid);
    
    
    if (x==1){
    	
    	
    }
    else{
    	
    }

    
    
    %>
    <script>

history.go(-1);

</script>

    