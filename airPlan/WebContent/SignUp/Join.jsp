<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<jsp:useBean id = "regBean" class="airPlan.airPlanBean" scope="page"/>
<jsp:setProperty name = "regBean" property="*"/>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>

<title>회원가입</title>
<Script>
//ID 중복체크
function checkid(){
		var id = document.regForm.id.value;
		url="IdCheck.jsp?id="+ id;
		window.open(
				url,"id check","toolbar=no, width=350, height=150,top=150,left=150");
}
</Script>
<script lang="JavaScript" src="airPlan.js"></script>

    <link href="css/bootstrap.min.css" rel="stylesheet"/> 
    <link rel="stylesheet" type="text/css" href="css/join.css"/>
    <link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">
    
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
		<p>Member Ship</p>
	</div>

<br><br>

<article class="container">
        <div class="col-md-6 col-md-offset-3">
          <form role="form" name="regForm" method="post" action="JoinPro.jsp">
          <input type="hidden" name="idDuplication" id="idDuplication" value="plz">
         		<div class="form-group">
              		<label for="InputId">아이디</label>
              		<div class="row">
              		<div class="col-md-9">
             		<input type="text" class="form-control" name="id" placeholder="아이디" maxlength="50"> </div>
             		<div class="col-md-3">
             		<button type="button" class="btn btn-primary" onClick="checkid();">중복확인</button> </div>
            	</div>
            	
            	<hr>
            	
            	<div class="form-group">
             		<label for="InputPassword1">비밀번호</label>
              		<input type="password" class="form-control" name="passwd" placeholder="비밀번호" maxlength="50">
           		</div>
           		
				<hr>
				
				<div class="form-group">
             		<label for="InputPassword2">비밀번호 재입력</label>
              		<input type="password" class="form-control" name="repasswd" placeholder="비밀번호 재입력" maxlength="50">
           		</div>
           		<p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
           		
           		<hr>
           		
           		<div class="form-group">
             		<label for="InputName">이름</label>
              		<input type="text" class="form-control" name="name" placeholder="이름" maxlength="50">
           		</div>
           		
           		<hr>
           		
           		<div class="form-group">
           		<label for="InputBrith">생년월일</label>
           		<div class="row">
             		
             		<div class="col-xs-6 col-md-4">
             		<select class="form-control" name="birth1"> 
							<option selected disabled hidden=true>년</option>
				       			<%for(int i=2013; i>=1900; i--){ %>
				       		<option value="<%=i %>"><%=i %></option>
				      			<%} %>
				    </select>
					</div>
					
					<div class="col-xs-6 col-md-4">
				    <select class="form-control" name="birth2"> 
				     <option selected disabled hidden=true>월</option>
				       <%for(int i=1; i<=12; i++){ %>
				       <option value="<%=i %>"><%=i %></option>
				       <%} %>
				     </select>
				     </div>

				     <div class="col-xs-6 col-md-4">
				     <select class="form-control" name="birth3"> 
				     <option selected disabled hidden=true>일</option>
				       <%for(int i=1; i<=31; i++){ %>
				       <option value="<%=i %>"><%=i %></option>
				       <%} %>
				     </select>
				     </div>
				   
           			</div>
           			</div>
           			
           			<hr>
 				
           		<div class="form-group">
           		<label for="InputGender">성별</label>
           		<div>
           				<label class="radio-Man">
	  						<input type="radio" id="inlineRadio1" name="gender" value="남자"> 남자
						</label>
						&nbsp;&nbsp;&nbsp;
						<label class="radio-Woman">
	  						<input type="radio" id="inlineRadio2" name="gender" value="여자"> 여자
						</label>
				</div>
				</div>
           		
           		<hr>
           		
           		<div class="form-group">
             		<label for="InputPhone">전화번호</label>
             		<div class="row">
             		<div class="col-md-3">
              		<input type="text" class="form-control" name="phone1" placeholder="010" maxlength="3">
              		</div>
              		
              		<div class="col-md-1">
              		<p> _ </p>
              		</div>
              		
              		<div class="col-md-3">
              		<input type="text" class="form-control" name="phone2"  maxlength="4">
              		</div>
              		
              		<div class="col-md-1">
              		<p> _ </p>
              		</div>
              		
              		<div class="col-md-3">
              		<input type="text" class="form-control" name="phone3" maxlength="4">
              		</div>
           		</div>
           		
           		<hr>
           		
           		<div class="form-group">
             		<label for="InputEmail">이메일</label>
              		<input type="text" class="form-control" name="email" placeholder="E-mail" maxlength="40">
              		<p class="help-block">아이디/비밀번호 찾을때 꼭 필요한 사항입니다. 정확하게 기재해주세요.</p>
           		</div>
           		
           		<hr>
           		
           		<div class="form-group">
             		<label for="InputAdress">주소</label>
              		<input type="text" class="form-control" name="address" size="60">
           		</div>
           		
           		<br>
           		
 
            	<div class="form-group text-center">
              		<button type="button" class="btn btn-primary" onclick="InputCheck()">완료</button>
              		&nbsp;
              		<button type="reset" class="btn btn-info">다시쓰기</button>
              		&nbsp;
              		<a href="../SignUp/main.jsp">
              		<button type="button" class="btn btn-default" value="홈">Home</button>
              		</a>
            	</div>
            	</div>
            	</div>
		</form>
</div>
</article>
		
		 <br></br>
		 		
		<div class="Jnb">
		
			<br>
	 		 <center>ⓒ Airplan2018_2b02 / 문의 : 010-0000-0000 / AirPlan@naver.com / https://blog.naver.com/airplan2018_2b02 <br></center>
	 		 <center>팀장_고진호 / 코더_김민혁 / 웹퍼블리셔_임용섭 / 블로거_박제현</center>
	 	</div>
		

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
</script>
<script type="text/javascript" src="js/bootstrap.js">
</script>
</body>
</html>