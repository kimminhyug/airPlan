<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%String name=(String)session.getAttribute("UserId");%>
<!DOCTYPE html>
<html>

<head>
<script lang="JavaScript" src="airPlan.js"></script>

    <link href="css/bootstrap.min.css" rel="stylesheet"/> 
    <link rel="stylesheet" type="text/css" href="css/profile4.css"/>
    <link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">

<meta charset="UTF-8">
</head>
<body>
	<!-- Top -->
	
	<div class="Jnt">
	<div class="logo">
			<a href="../SignUp/main.jsp">
				<img src="image/logo.png">
			</a>
	</div>
</div>

<div class="Pts">
		<p>　　Password Change</p>
</div>

<br><br>
		<!-- content -->
<article class="container">
	<div class="col-md-6 col-md-offset-3">
    
    <form action="proFileUpdatePro.jsp" method="post" onsubmit="return input_check_func()">
	   <div class="form-group">
             		<label for="InputPassword1">아이디</label>
              		<input type="text" class="form-control" placeholder= <%= name %> maxlength="50" readonly>
         </div>
         
         <hr>
         
         <div class="form-group">
             		<label for="InputPassword1">현재_비밀번호</label>
              		<input type="password" class="form-control" id="now_pw" name="now_pw">
           	</div>
	   
	   <div class="form-group">
             		<label for="InputPassword2">변경할_비밀번호</label>
              		<input type="password" class="form-control" id="change_pw" name="change_pw">
        </div>
	   
	   
	   <div class="form-group">
             		<label for="InputPassword1">재확인_비밀번호</label>
              		<input type="password" class="form-control" id="change_pw_check" name="change_pw_check">
       </div>
       
       <br>
        
         <div class="form-group text-right">
              <button type="submit" class="btn btn-primary">비밀번호 변경</button>
         </div>
         
         <br>
            	
		</form>    
	</div>
</article>

<div class="Jnb">
		
			<br>
	 		 <center>ⓒ Airplan2018_2b02 / 문의 : 010-0000-0000 / AirPlan@naver.com / https://blog.naver.com/airplan2018_2b02 <br></center>
	 		 <center>팀장_고진호 / 코더_김민혁 / 웹퍼블리셔_임용섭 / 블로거_박제현</center>
</div>
    
    <script>
    // input_check_func는 회원가입에 필요한 3가지 문항을 전부다 채워 넣었는지 check 해준다
    // 이는 form onsubmit에 의해 발동되며 return 값이 false 일 경우 페이지의 데이터가 action= 좌표로 넘어가지 않게된다
    function input_check_func() {
        var now_pw = document.getElementById('now_pw').value;
        var change_pw = document.getElementById('change_pw').value;
        var change_pw_check = document.getElementById('change_pw_check').value;
        
        if(now_pw == null || change_pw == null || change_pw_check == null ||
           now_pw == ""   || change_pw == ""   || change_pw_check == "") {
            alert("비밀번호를 입력해주세요.");
            return false;
        } 
        // 새로운 비밀번호와 새로운 비밀번호 확인 input에 적은 값이 다르다면 경고창을 띄우고 false를 반환해서 action을 막는다
        else if ( change_pw != change_pw_check ) {
            alert("비밀번호가 맞지 않습니다.");
            return false;
        } else {
            
            // input들이 공백인지, 새 비밀번호와 새 비밀번호 확인 유무가 통과되면 action=좌표 로 이동한다
            // 여기서 현재 비밀번호가 맞는지 안맞는지는 확인안한다 조금 어렵더라고
            return true;
        }
    }    
    </script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
	</script>
	<script type="text/javascript" src="js/bootstrap.js">
	</script>
 
</body>
</html>