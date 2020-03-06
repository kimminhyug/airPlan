<%@page import="airPlan.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%
   request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id = "regBean" class="airPlan.airPlanBean" scope="page">
<jsp:setProperty name = "regBean" property="*"/>
</jsp:useBean>

<% String id = request.getParameter("id"); %>
<!-- 레지스터빈에 있는 레지스터메소드 선언 -->
<%
	Register dbpro = Register.getInstance();
	boolean b = dbpro.checkid(id);
%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>id 중복 검사</title>

</head>

<body>
<center>
<font size="4" color="gray" >아이디 중복체크</font><br><br>

<b><%=id %></b>

<%

	if(b){

%>

		는(은) 이미  사용중인 id 입니다.<p/>

		<a href="#" onclick = "opener.document.regForm.id.focus(); window.close();">닫기</a>

		<!-- opener : window.open으로 현재 창을 호출한 부모 페이지 -->

<%

	} else {

%>

		는(은) 사용 가능 합니다.<p/>

		<a href="#" onclick = "opener.document.regForm.passwd.focus(); window.close();">닫기</a>
		<script>
		opener.document.getElementById("idDuplication").value = "idCheck";
		</script>
<%	} %>
</center>
</body>

</html>
