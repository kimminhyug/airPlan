<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@page import="airPlan.selectTicket.*"%>
<!DOCTYPE html>
<html>
<head>
<script lang="JavaScript" src="airPlan.js"></script>

    <link href="css/bootstrap.min.css" rel="stylesheet"/> 
    <link rel="stylesheet" type="text/css" href="css/profile6.css"/>
    <link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Anton|Do+Hyeon|Nanum+Pen+Script&amp;subset=korean,latin-ext,vietnamese" rel="stylesheet">
<meta charset="UTF-8">
<title>AirPlan_예매목록</title>
</head>
<body>

<div class="Jnt">
	<div class="logo">
			<a href="../SignUp/main.jsp">
				<img src="image/logo.png">
			</a>
	</div>
</div>

<div class="Pts">
		<p>Complete</p>
</div>

<br><br>

<%
List<selectTicketDataBean> articleList = null;
selectTicket dbPro = selectTicket.getInstance();
String id= (String)session.getAttribute("UserId");
articleList=dbPro.selectTicketInfo6(id);
if(articleList==null){
	%>
	<div class="res">
  	<center>
  		<br>
  		<p>구매내역이 존재 하지 않습니다.</p><br>
  		<h5>문제가 있으신 고객님께선, <a onclick="location.href = '../Q&A/list.jsp'">Q&A 게시판 </a>또는 대표번호로 전화주시면 감사하겠습니다.</h5><br>
  		
  		<div class="form-group text-center">
  		<a href="../myPage/proFile.jsp"><button type="button" class="btn btn-primary">My Page</button></a>
  		&nbsp;&nbsp;
  		<a href="../SignUp/main.jsp"><button type="button" class="btn btn-primary">Home</button></a>
  		</div>
  		
  	</center>
  </div>
	<% 
}
else{
%>
<center>
<h1 style="font-size:50px;">
<b>AIRPLAN_예매목록</b></h1>   
<br>

<%
					for (int i = 0; i < articleList.size(); i++) {
							selectTicketDataBean article = articleList.get(i);
	
			%>
			
<div class="tik" style="width:800px; height:440px; border: 1pt groove #c8c8c8; font-family: 'Do Hyeon', sans-serif;">
		<form name="buy" method="post" action="../SignUp/buypro.jsp">
		  <input type="hidden" value="<%=id %>" id="userid" name="userid">
		  <input type="hidden" value="<%=article.getSitNumber()%>" id="sit" name="sit">
		  <input type="hidden" value="<%=article.getnum()%>" id="whatplane" name="whatplane">
		  <input type="hidden" value="<%=article.getcheckbuy()%>" id="checkbuy" name="checkbuy">
		<div class="container-fluid padding">
		<h2 style="font-size: 40px; color:#03A9F4;">AirPlan_<%=article.getAirPlaneNumber()%>_<small><%=article.getUserId()%></small></h2>
			<div class="col-12">
				<div class="row">
				<div class="col-md-2 text-center">
				<%=article.getStartArea()%>
				</div>
				
				<div class="col-md-6 text-center">
				　
				</div>
				
				<div class="col-md-2 text-center">
				<%=article.getArrivalArea()%>
				</div>
				
				<div class="col-md-2 text-center">
				<%=article.getPlaneDate()%>
				</div>
				
				</div>
			</div>
			
			<div class="col-12">	
				<div class="row">
				<div class="col-md-1 text-center"></div>
				<div class="col-md-8 text-center">
				<img src="image/tkkkk.JPG" style="height: 100%; width: 100%; object-fit: contain">
				</div>
				<div class="col-md-1 text-center"></div>
				<div class="col-md-1 text-center">
				　
				</div>
				</div>
			</div>
			
				<div class="col-12">
				<div class="row">
				<div class="col-md-2 text-center">
				<%=article.getStartTime()%>
				</div>
				
				<div class="col-md-6 text-center">
				　
				</div>
				
				<div class="col-md-2 text-center">
				<%=article.getArrivalTime()%>
				</div>
				
				<div class="col-md-2 text-center">
				비행기식별번호 : <%=article.getnum()%>
				</div>
				
				</div>
			</div>
		
		<div class="col-12">
		　<hr style="border-top: 2px solid #03A9F4;">
		</div>
		
			<div class="col-12">
				<div class="row">
				
				<div class="col-md-8 text-center">
					<img src="image/tkkk.JPG" style='height: 100%; width: 100%; object-fit: contain'>
				</div>
				
				<div class="col-md-4 text-center">
					<div>
					<br>
					좌석 :<%=article.getSitNumber()%><br>
					</div>
					<br>
					<div style="font-size: 20px;">
					<b>총요금(편도)</b><br>
					<%=article.getprice()%>
					</div>
					<br>
					<div class="text-right">
					유류할증,제세공과금,발권수수료<br>
					가격에 포함<br>
					(변동가능)<br>
					</div>
				</div>
				
				</div>
			</div>
		</div>
		<%
						if(article.getcheckbuy()==0){
						%>	<h3>결제완료</h3><% 
						}
						else{
						
						%>
						<div class="col-12 text-center">
						<input type="submit" value="결제" class="btn btn-primary">
						<button class="btn btn-primary">닫기</button>
						</div>
						<% }%>
		</form>
	</div>
	<div class="container">
	　<BR>
	　<BR>
	</div>
	
<%}	}%>
<br></br>
	</center>	
	
		 		
		<div class="Jnb">
			<br>
	 		 <center>ⓒ Airplan2018_2b02 / 문의 : 010-0000-0000 / AirPlan@naver.com / https://blog.naver.com/airplan2018_2b02 <br></center>
	 		 <center>팀장_고진호 / 코더_김민혁 / 웹퍼블리셔_임용섭 / 블로거_박제현</center>
	 	</div>
	 	
</body>
</html>