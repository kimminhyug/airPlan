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
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>아이디/비밀번호 찾기</title>

<script lanaguage="JavaScript" src="airPlan.js"></script>
<link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/selectform.css"/>
    
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
		<p>Find ID / Password</p>
	</div>

<br><br>
	

<!-- ID 찾기 폼 -->
<div class="row">
<div class="form-group">


<div class="col-md-6">
		 <div class="col-md-6 col-md-offset-3"> 
		 <div class="form-group">
		 	<div class="idps">
		 		<h1>ID 찾기</h1>
		 	</div>
		 		<hr>
		 </div>
          		<form role="Selectld" name="SelectId" method="post" action="SelectIdPro.jsp">
          		
          		<div class="form-group">
             		<label for="InputName">이름</label>
              		<input type="text" class="form-control" name="name" placeholder="이름" maxlength="50">
           		</div>
           		
          
           		
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
           		
           	
           		
           		<div class="form-group">
             		<label for="InputPhone">전화번호</label>
             		<div class="row">
             		<div class="col-xs-6 col-md-4">
              		<input type="text" class="form-control" name="phone1" placeholder="010" maxlength="3">
              		</div>
              		
              		<div class="col-xs-6 col-md-4">
              		<input type="text" class="form-control" name="phone2"  maxlength="4">
              		</div>
              		
              		<div class="col-xs-6 col-md-4">
              		<input type="text" class="form-control" name="phone3" maxlength="4">
              		</div>
           		</div>
           		
           		<br>
           		<br>
           	
           		
           		<div class="form-group text-center">
              		<button type="button" class="btn btn-primary" onclick="SelectIdCheck()">ID찾기</button>
              		&nbsp;
              		<button type="reset" class="btn btn-default">다시쓰기</button>
       
            	</div>
            	</div>
            </form>
            </div>
 </div>

<!-- PW 찾기 폼 -->  
<div class="col-md-6">
		
		 <div class="col-md-6 col-md-offset-3"> 
		 <div class="form-group">
		 	<div class="idps">
		 		<h1>Password 찾기</h1>
		 	</div>
		 		<hr>
		 </div>
          		<form role="SelectPw" name="SelectPw" method="post" action="SelectPwPro.jsp">
          		
          		<div class="form-group">
              		<label for="InputId">아이디</label>
             		<input type="text" class="form-control" name="id" placeholder="아이디" maxlength="50">
            	</div>
            	
            	<div class="form-group">
             		<label for="InputName">이름</label>
              		<input type="text" class="form-control" name="name" placeholder="이름" maxlength="50">
           		</div>
           		
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
           		
           	
           		
           		<div class="form-group">
             		<label for="InputPhone">전화번호</label>
             		<div class="row">
             		<div class="col-xs-6 col-md-4">
              		<input type="text" class="form-control" name="phone1" placeholder="010" maxlength="3">
              		</div>
              		
              		<div class="col-xs-6 col-md-4">
              		<input type="text" class="form-control" name="phone2"  maxlength="4">
              		</div>
              		
              		<div class="col-xs-6 col-md-4">
              		<input type="text" class="form-control" name="phone3" maxlength="4">
              		</div>
           		</div>
            </div>
            
            <br>
            
            <div class="form-group text-center">
              		<button type="button" class="btn btn-primary" onclick="SelectPwCheck()">Pw찾기</button>
              		&nbsp;
              		<button type="reset" class="btn btn-default">다시쓰기</button>
            	
            </div>
   			</form>
          </div>
       </div>
         </div>
</div>

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