<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="airPlan.selectTicket.*"%>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.NumberFormat" %>

<%
  String id = (String)session.getAttribute("UserId");
%>

<html>
<head>
<title>AirPlan_Inquiry/Delete</title>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="css/ord.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css">
 <link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">
</head>
<body>
<%
List<selectTicketDataBean> articleList = null;
selectTicketDataBean article = null; 
int count = 0;

selectTicket dbPro = selectTicket.getInstance();
count = dbPro.getListCount2();

if(count == 0){
%>
 <div class="col-12">
		<div class="row">
		<div class="col-md-3">
			<div class="ppl2">
			<div class="logo">
			<a href="../admin/ordermain.jsp">
				<img src="image/logo.png">
			</a>
			</div>
			</div>
		</div>
		<div class="col-md-1">
		</div>
        <div class="col-md-8">
  	<br><br>
	<h1><b>준비된 항공이 없습니다.</b></h1>
	<h4><b>- 운행가능한 항공데이터를 넣어주세요</b></h4>
	<br><br><br>
    <div class="form-group text-right">

					<a href="../admin/ordermain.jsp" class="btn btn-primary">관리자 페이지로</a>　　	
</div>
</div>
</div>
</div>
<%
}else{
	
	articleList = dbPro.selectTicketInfo5();
%>
 <div class="col-12">
		<div class="row">
		<div class="col-md-3">
			<div class="ppl2">
			<div class="logo">
			<a href="../admin/ordermain.jsp">
				<img src="image/logo.png">
			</a>
			</div>
			</div>
		</div>
		<div class="col-md-1">
		</div>
        <div class="col-md-8">
        <br>
  <h1><b>Inquiry/Delete</b></h1>
  
  <div class="form-group text-right">

					<a href="../admin/ordermain.jsp" class="btn btn-primary">관리자 페이지로</a>　　	
</div>
  
  <br>
  <table> 
    <tr>  
      <th>비행기번호　</th> 
      <th>출발시간　　</th> 
      <th>도착시간　　</th>
      <th>출발날자　　</th> 
      <th>남은좌석　　</th> 
      <th>전체좌석　　</th>
      <th>출발</th>
      <th>도착</th>
      <th>비행기 고유번호　　　</th>
      <th>가격　　</th>
   </tr>
<%
  for(int i=0;i<articleList.size();i++){
	   article = (selectTicketDataBean)articleList.get(i); 
	 
%>          	 

    <tr> 
      <td><%=article.getAirPlaneNumber() %></td> 
      <td><%=article.getStartTime() %></td> 
      <td><%=article.getArrivalTime() %></td>
      <td><%=article.getPlaneDate() %></td> 
      <td><%=article.getPresentPersonnel() %></td>
      <td><%=article.getTotalNumber() %></td>
      <td><%=article.getStartArea()%></td>
      <td><%=article.getArrivalArea()%></td>
      <td><%=article.getWhatPlane() %></td>
      <td><%=article.getprice() %></td>
      <td>
      <form method="post" action="orderdelete.jsp">
     <input type="hidden" value="<%=article.getWhatPlane()%>" name="WhatPlane">
      <input type="submit" value ="삭제" class="btn btn-danger">
      </td>
    </form>
 </tr>

	
<%}%>
</table>
<br>

<%}%>
</div>
</div>
</div>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
</script>
<script type="text/javascript" src="js/bootstrap.js">
</script>
</body>
</html>