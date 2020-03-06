<%@page import="java.util.HashMap"%>
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
String sitnum=request.getParameter("sitnum");

String sitname=request.getParameter("insertsitname");
String whatplane=request.getParameter("insertwhatplane");

int insertwhatplane=Integer.parseInt(whatplane);
String[] array = sitnum.split("num");

HashMap sitmap=new HashMap();

for(int i=1;i<=array.length;i++){
	String a=array[i-1];
	sitmap.put(i,a);
}
Object[] sitkey=sitmap.keySet(). toArray();

for(int i=0;i<sitkey.length;i++){
	System.out.println("sitkey"+sitkey[i]);
	System.out.println("sitmap"+sitmap.get(sitkey[i]));
	}








//출력				
for(int i=0;i<array.length;i++) {
System.out.println("좌서ㅗㄱ"+array[i]);
}
selectTicket dbPro = selectTicket.getInstance();
int check=dbPro.insertSitdata(sitname,sitmap,insertwhatplane);
System.out.println("뭐가리턴이냐"+insertwhatplane);
if (check==1){
	%>
	<script>
	alert("성공");
	location.href="ordermain.jsp";
	</script>
	<% 
}
else{
	%>
	<script>
	alert("비행기번호가 재대로 입력되지않았거나 이미 등록된 좌석을 입력하셨습니다");
	location.href="createsit.jsp";
	</script>
	
	<% 
}
%>
%>

</body>
</html>