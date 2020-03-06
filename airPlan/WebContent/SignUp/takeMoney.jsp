<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
    <%@ page import="airPlan.selectTicket.*"%>
    <%  request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title>Loding</title>
</head>
<script type="text/javascript">

setTimeout(function loaded()
{
	document.all.loading.style.display='none';
	document.all.body.style.display='block';
},3000)
</script>
<body onload="loaded();">
<form id = "sf" name="sf" method="post" runat="server">

<div id="loading" runat="server" style="display: block;">
<%@ include file="loading.jsp" %>
</div>
<div id = "body" runat="server" style="display: none;">
 <%
 String userid=(String)request.getParameter("userid");
 String sitnum=(String)request.getParameter("sitnum");
 String stinum2=sitnum.replace("num","");
 String whatPlane=request.getParameter("whatplane");
 int whatPlane2=Integer.parseInt(request.getParameter("whatplane"));
 String AirPlaneNumber=request.getParameter("AirPlaneNumber");
 String price=request.getParameter("price");
 System.out.println("aa");
 int whatPlanei=Integer.parseInt(whatPlane);
 int AirPlaneNumber2=Integer.parseInt(AirPlaneNumber);

 int price2=Integer.parseInt(price);
 List<selectTicketDataBean> articleList = null;


	selectTicket dbPro = selectTicket.getInstance();
	String a=dbPro.selectReservation(whatPlane2, stinum2);
	if (a.equals("0")){
		dbPro.insertReservation(userid, sitnum, whatPlane,AirPlaneNumber);
		%>
		<%@ include file="buyok.jsp" %>
		<% 
	}
	else{
		%>
		<Script>
		 alert("좌석 변경해주세요.");
		 location.href='javascript:history.back();';
		 </Script>
		<%
		System.out.println("좌석변경 해주세요"+a);
	
	}
 

 %>
  <%@ include file="buyok.jsp" %>
</div>

</form>
	
</body>
</html>