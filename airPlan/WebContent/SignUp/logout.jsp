<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 페이지</title>
</head>
<body>
<%
	session.invalidate();
%>
<script>
	alert("로그아웃 되셨습니다.");
	location.href="main.jsp";
</script>
</body>
</html>