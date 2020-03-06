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
 
    String pageNum = request.getParameter("pageNum");
	noticeBoardDBBean dbPro = noticeBoardDBBean.getInstance();
    int check = dbPro.updateArticle(article); 
    
    if(check==1){
%>
	  <meta http-equiv="Refresh" content="0;url=list.jsp?pageNum=<%=pageNum%>" >
<% }else{%>

      <script type="text/javascript"> 
        alert("수정 실패");
        history.go(-1)
     </script>
<%
  }
%> 