<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="airPlan.airPlanBean" %>
<%@ page import="airPlan.Register" %>
<!DOCTYPE html>
<html>


<head>
<script language="JavaScript" src="airPlan.js"></script>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="css/profile.css">
<link rel="javascript" type="text/js" href="js/Top.js">
 <link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">
<meta charset="UTF-8">

<title>Profile</title>
</head>
<body>
<%
	String name=(String)session.getAttribute("UserId")== null ? "":(String)session.getAttribute("UserId");

	Register dbpro = Register.getInstance();
	airPlanBean airPlan = dbpro.getUserInfo(name);
	
	//myPageEX sv = myPageEX.getInstance();
	//airPlanBean airPlan = sv.getUserInfo(name);
%>

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
			
			<li id="logout2"><a href="../SignUp/logout.jsp" id="logout">Logout</a></li>
		
			
			<li id="myPage2"><a href="../myPage/proFile.jsp" id="myPage">MyPage</a></li>
		
		
			<li><a class="menuLink" href="../SignUp/intro.jsp" id="">intro</a></li>
			
			<li><a class="menuLink" href="../notice/list.jsp" id="">Gesipan</a></li>
			
		</ul>
		</div>		
</div>

<div class="pro"></div>

<div class="pro1">

		<div class="col-md-12"></div>
		
		<div>
          <h1 style="font-size: 50px;">　Profile <small>_ <%=airPlan.getId() %></small></h1>
        </div>
        
        <div class="col-md-12">　</div>
		<div class="col-md-12">　</div>
		
          <form>
            	<div class="col-md-12">
            	<div class="form-group">
              		<label for="InputId">　　　이름 _ 　　　　　</label><%=airPlan.getName() %>
            	</div>
            	
            	<div class="form-group">
              		<label for="InputId">　　　생일 _ 　　　　　 </label><%=airPlan.getBirth1()+ " 년 "+airPlan.getBirth2()+ " 월 "+airPlan.getBirth3()+" 일 "%>
            	</div>
            	
            	<div class="form-group">
              		<label for="InputId">　　　핸드폰 _　　 　　</label><%=airPlan.getPhone1()+"-"+airPlan.getPhone2()+"-"+airPlan.getPhone3() %> 
            	</div>
            	
            	<div class="form-group">
              		<label for="InputId">　　　주소 _  　　　　　</label><%=airPlan.getAddress() %> 
            	</div>
            	<br><br>
            </div>
            
            <div class="form-group text-right">
              <button type="button" class="btn btn-success" onclick="document.location.href='reservationch.jsp'">예매확인</button>
              &nbsp;
             
              <button class="btn btn-warning"><a href="myinfo.jsp" style="color:#fff;">대기목록</a></button>
              &nbsp;
              <button type="button" class="btn btn-primary" onclick="document.location.href='proFileUpdate.jsp'">비밀번호 변경</button>
              &nbsp;
              <button type="button" class="btn btn-danger" onclick="document.location.href='proFilePw.jsp'">회원탈퇴</button>
              &nbsp;&nbsp;&nbsp;&nbsp;
            </div>
            	
		</form>
</div>
</header>
				
			
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
	</script>
	<script type="text/javascript" src="js/bootstrap.js">
	</script>
</body>
</html>
