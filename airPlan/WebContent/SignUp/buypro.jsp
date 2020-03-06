<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ page import="airPlan.selectTicket.*"%>
    <%
   request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title>Insert title here</title>
</head>
<script type="text/javascript">

setTimeout(function loaded()
{
	document.all.loading.style.display='none';
	document.all.body.style.display='block';
},5000)
</script>
<body onload="loaded();">
<form id = "sf" name="sf" method="post" runat="server">

<div id="loading" runat="server" style="display: block; width:100%; hight:100%;">
<%@include file="loading.jsp" %>
</div>
<div id = "body" runat="server" style="display: none;">
 <%
 String userid=(String)request.getParameter("userid");
 String sitnum=(String)request.getParameter("sit");
 String stinum2=sitnum.replace("num","");
 String whatPlane=request.getParameter("whatplane");
 int whatPlane2=Integer.parseInt(request.getParameter("whatplane"));
 String checkbuy=request.getParameter("checkbuy");

 
 int whatPlanei=Integer.parseInt(whatPlane);



 List<selectTicketDataBean> articleList = null;


	selectTicket dbPro = selectTicket.getInstance();

	
		dbPro.alterReservation(userid, sitnum, whatPlane2);
		


	
 

 %>
<%@include file="buyok.jsp" %>
</div>

</form>
	
</body>
</html>