<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.sql.*"%>
<%@ page import="airPlan.*" %>

<jsp:useBean id = "regBean" class="airPlan.airPlanBean" scope="page">
<jsp:setProperty name = "regBean" property="*"/>
</jsp:useBean>

<!DOCTYPE html>
<html>


<head>
<meta charset="UTF-8">
<title>Login</title>
<script language="JavaScript" src="airPlan.js"></script>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="css/LoginPage.css">
 <link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">

</head>
<body>

<header>
		<div class="main">
			<div class="logo">
			<a href="../SignUp/main.jsp">
				<img src="image/logo.png">
			</a>
			</div>
			
		<div id="hd">			
		<ul>
			
			<li id="logout2" style="display: none;"><a class="menuLink" href="../SignUp/logout.jsp" id="logout" style="visibility: 'hidden';">Logout</a></li>
		
			
			<li id="myPage2" style="display: none;"><a class="menuLink" href="../myPage/proFile.jsp" id="myPage" style="visibility: 'hidden';">MyPage</a></li>
			
		
			<li id="loginLi2" style="display: inline;"><a class="menuLink" href="../SignUp/LoginPage.jsp" id="loginLi" style="visibility: 'visible';">Login</a></li>

			<li><a class="menuLink" href="../SignUp/intro.jsp" id="">intro</a></li>
			
			<li><a class="menuLink" href="../notice/list.jsp" id="">Gesipan</a></li>
		</ul>
		</div>		
</div>

<div class="login">
</div>
		

	<div class="login2">
		　	<div class="col-md-12">
			</div>
		<div>
          <h1 style="font-size: 50px;">　Login <small>_ AIRPLAN</small></h1>
        </div>
        
        	<div class="col-md-12">
        	　<br>
        	　<br>
			</div>
        <form method="post" name="login" action="LoginPro.jsp">
        	<div class="form-group">
        	<div class="col-md-1"></div>
        	<div class="col-md-2">
              <label for="InputId" style="width: 100px">아이디</label></div>
           		<div class="col-md-8">
              <input type="text" class="form-control" name="id" placeholder="아이디" style="width: 350px">
            </div>
            <div class="col-md-2">
            </div>
            </div>
            
            <div class="col-md-12">
        	　<br>
			</div>
            
            <div class="form-group">
            <div class="col-md-1"></div>
            <div class="col-md-2">
              <label for="InputPassword1">비밀번호</label></div>
              	<div class="col-md-8">
              <input type="password" class="form-control" name="passwd" placeholder="비밀번호" style="width: 350px">
            </div>
            <div class="col-md-2">
            </div>
           	</div>
           	
           	<div class="col-md-12">
        	　<br>
        	　<br>
			</div>
            
            <div class="form-group text-right">
            <div class="col-md-9"></div>
            
            <div class="col-md-1">
              <button type="button" class="btn btn-primary" onClick="loginCheck()">로그인</button></div>
          	</div>
        
          	
          	<div class="col-md-12">
        	　<br>
			</div>
          	
          	<div class="form-group text-left">
          	<div class="row">
          	
          	<div class="col-md-7"></div>
          	
            <div class="col-md-2">
              <a onclick="location.href = 'SelectForm.jsp'">ID/PW 찾기</a></div>

			<div class="col-md-2">
              <a onclick="location.href = 'Join.jsp'">회원가입</a></div>
          
            </div>
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