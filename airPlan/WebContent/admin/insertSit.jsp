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








//���				
for(int i=0;i<array.length;i++) {
System.out.println("�¼��Ǥ�"+array[i]);
}
selectTicket dbPro = selectTicket.getInstance();
int check=dbPro.insertSitdata(sitname,sitmap,insertwhatplane);
System.out.println("���������̳�"+insertwhatplane);
if (check==1){
	%>
	<script>
	alert("����");
	location.href="ordermain.jsp";
	</script>
	<% 
}
else{
	%>
	<script>
	alert("������ȣ�� ���� �Էµ����ʾҰų� �̹� ��ϵ� �¼��� �Է��ϼ̽��ϴ�");
	location.href="createsit.jsp";
	</script>
	
	<% 
}
%>
%>

</body>
</html>