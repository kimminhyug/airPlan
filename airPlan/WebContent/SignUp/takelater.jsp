sitnum
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
<title>Loding</title>
</head>
<body>
 <%
 String userid=(String)request.getParameter("userid2");
 System.out.println("s 해주세요"+userid);
 
 String sitnum=(String)request.getParameter("sitnum2");
 System.out.println("s 해주세요"+sitnum);
 String stinum2=sitnum.replace("num","");
 String whatPlane=request.getParameter("whatplane2");
 int whatPlane2=Integer.parseInt(request.getParameter("whatplane2"));
 String AirPlaneNumber=request.getParameter("AirPlaneNumber2");
 String price=request.getParameter("price2");
 
 int whatPlanei=Integer.parseInt(whatPlane);
 int AirPlaneNumber2=Integer.parseInt(AirPlaneNumber);

 int price2=Integer.parseInt(price);
 List<selectTicketDataBean> articleList = null;


	selectTicket dbPro = selectTicket.getInstance();
	String a=dbPro.selectReservation(whatPlane2, stinum2);
	if (a.equals("0")){
		dbPro.insertReservation2(userid, sitnum, whatPlane,1,AirPlaneNumber);
		%>
		<script>
		 alert("마이페이지에 대기목록을 확인해주세요.");
		 location.href="main.jsp";
		</script>
		<% 
	}
	else{
		System.out.println("좌석변경 해주세요"+a);
		%>
		<script>
		 alert("좌석변경 해주세요.");
		 location.href="main.jsp";
		</script>
		<%
	}
 

 %>
</body>
</html>