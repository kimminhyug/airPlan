<%@page import="airPlan.selectTicket.selectTicket"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String sitname=request.getParameter("createsitname");

selectTicket dbPro = selectTicket.getInstance();
int check=dbPro.createsit(sitname);
if (check==1){
	%>
	<script>
	alert("����");
	location.href="testcreate.jsp";
	</script>
	<% 
}
else{
	%>
	<script>
	alert("�̸��� �ٲ㼭 �Է����ּ���");
	location.href="testcreate.jsp";
	</script>
	<% 
}
%>
</body>
</html>