<%@page import="airPlan.*"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<link rel="stylesheet" href="css/bootstrap.css"/>
 <link rel="stylesheet" type="text/css" href="css/header.css">
 <link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"> 

//<![CDATA[
 

		
		$(document).ready(function () {
			
			
			<% String loginCheck2=(String)session.getAttribute("login");%>
			var loginCheck="<%=loginCheck2%>";
			<% String name=(String)session.getAttribute("UserId");%>
			
			
			if(loginCheck=="success"){
				document.all.loginLi.style.visibility="hidden";
				document.all.loginLi2.style.display="none";
				document.all.logout.style.visibility="visible";
				document.all.logout2.style.display="inline";
				document.all.myPage.style.visibility="visible";
				document.all.id.style.visibility="visible";
				document.all.myPage2.style.display="inline";
				
	
				  $('#myPage').click(function () {
					  location.href="../myPage/proFile.jsp";
			        });
				
				  
			//	document.getElementById('loginLi').innerHTML=("로그아웃");

			//document.all.myPage.style.visibility="hidden";
			//	document.all.myPage.style.visibility="visible";
		}

		else { // 로그인 안됫을시
			document.all.loginLi.style.visibility="visible";
			document.all.loginLi2.style.display="inline";
			document.all.logout.style.visibility="hidden";
			document.all.logout2.style.display="none";
			document.all.myPage.style.visibility = "hidden";
			document.all.myPage2.style.display = "none";
			document.all.id.style.visibility = "hidden";

		}
		
		});
		

	//]]>
</script>



</head>

<body>

<script type="text/javascript"  src="./js/top.js"></script>
<script type="text/javascript"  src="./js/mainContent.js"></script>

<header>
		<div class="main">
			<div class="logo">
			
			<a href="../SignUp/main.jsp">
				<img src="image/logo.png">
			</a>
			</div>
			
		<div id="hd">
				
		<ul>
			
			<li id="id" style="display: inline; visibility: 'hidden';" ><a>
			<%= session.getAttribute("UserId") %>님</a></li>
			<% if(session.getAttribute("UserId") != null) {%>
					<% if(session.getAttribute("UserId").equals("airPlan") ){ %>	
			<li id="admin2" style="display: inline;"><a class="menuLink" href="../admin/ordermain.jsp" id="admin" style="visibility: 'visible';">Admin</a></li>
					<%}
					}%>
			
			<li id="logout2" style="display: none;"><a class="menuLink" href="../SignUp/logout.jsp" id="logout" style="visibility: 'hidden';">Logout</a></li>
		
			
			<li id="myPage2" style="display: none;"><a class="menuLink" href="../myPage/proFile.jsp" id="myPage" style="visibility: 'hidden';">MyPage</a></li>
			
		
			<li id="loginLi2" style="display: inline;"><a class="menuLink" href="../SignUp/LoginPage.jsp" id="loginLi" style="visibility: 'visible';">Login</a></li>
		
			<li><a class="menuLink" href="../SignUp/intro.jsp" id="">intro</a></li>
			
			<li><a class="menuLink" href="../notice/list.jsp" id="">Gesipan</a></li>
			
		</ul>
		</div>
		
		<div class="title">
				<h1>AIR  PLAN</h1>
		</div>
		
</div>


<!-- 항공 검색 창 bootStrap 사용 -->

<div class="re">
</div>

<div class="re2">
		<form name="ticket" method="get" action="searchTicket.jsp"  >
			  	<input type="hidden" value="" id="giveSlocation" name="giveSlocation">
		  		<input type="hidden" value="" id="giveAlocation" name="giveAlocation">
		  		<input type="hidden" value="" id="giveSdate" name="giveSdate">
		  		<input type="hidden" value="" id="giveAdate" name="giveAdate">
		  		<input type="hidden" style="width:100px;" value="0" id="giveAdult" name="giveAdult">
		  		<input type="hidden" value="0" id="giveChild" name="giveChild">
		  		<input type="hidden" value="0" id="giveBaby" name="giveBaby">
		  		<input type="hidden" value="normal" id="radiocheck" name="radiocheck">
				
				
			<div class="form-group">
		　	<div class="col-md-12">
				</div>
			</div>
		
			<div class="col-md-1">

			</div>
			

				
			<div class="col-md-2">
			<div class="startMask">
					<input type="text" name="start" id="start" value="출발도시" class="form-control" readonly>
			</div>
			</div>
					
					
			<div class="col-md-2">
			<div class="startMask3">
					<input type="text" name="arrive" id="arrive" value="도착도시" class="form-control" readonly>
			</div>
			</div>


				<div class="col-md-2">
					 <input type="date" style="width: 150px;" id="start_Date" name="start_Date" class="form-control"  value="출발날짜">
				 </div>

			<div class="col-md-2">
					<input type="date" style="width: 150px;" name="arrive_Date" id="arrive_Date" class="form-control" value="도착날짜" readonly>
				</div>

			
				<div class="col-md-2">
				<div class="personeel_Seat">
					<input type="text" name="personeel_Seat" id="seatCount" class="form-control" value="승객1명, 일반석" readonly>
					<!--name="personeel_Seat" id="seatCount"-->
				</div>
				</div>

				

			

				
				<div class="col-md-1">
	</div>

		
		<div class="form-group">
				<div class="col-md-12">
				　
				</div>　　
		</div>
			
		<div class="form-group">
		
			<div class="col-md-9">
			</div>
			
			<div class="col-md-2">
		　<button type="submit" class="btn btn-default" onclick='giveTicektValue()' id="select_Button">Search Ticket</button>
			<!-- <input type="submit" onclick='giveTicektValue()' id="select_Button" value="검색" > -->
			</div>
			
			<div class="col-md-1">
			</div>
			
		</div>
	</form>	
</div>	

<div class="res">
	<jsp:include page="Maincontent.jsp" flush="false" />
</div>
 
 
</header>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
</script>
<script type="text/javascript" src="js/bootstrap.js">
</script>
</body>
</html>