<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="airPlan.selectTicket.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="css/ord.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css">
 <link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">
<title>AIRPLAN_비행기 예매 등록</title>
</head>
<body>

<div class="col-12">
		<div class="row">
		<div class="col-md-4">
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
        <div class="col-md-6">
        <br><br>
        <h1><b>AIR PLANE _ Registration</b></h1>
        <br>
          <form role="form" name="regForm" method="post" action="orderinsertpro.jsp">
          <input type="hidden" name="idDuplication" id="idDuplication" value="plz">
         		
         		
           		<div class="form-group">
           			<label for="InputGender">airPlaneNumber</label>
	  						<input type="text" id="airPlaneNumber" name="airPlaneNumber" class="form-control" placeholder="비행기번호" maxlength="50">
				</div>
         		
            	<hr>
            	
            	<div class="form-group">
             		<label for="InputPassword1">StartTime</label>
              		<input type="time" class="form-control" name="startTime" placeholder="출발시간" maxlength="50">
           		</div>
           		
				<hr>
				
				<div class="form-group">
             		<label for="InputPassword2">ArrivalTime</label>
              		<input type="time" class="form-control" name="arrivalTime" placeholder="도착시간" maxlength="50">
           		</div>
           		
           		
           		<hr>
           		
           		<div class="form-group">
             		<label for="InputName">PlaneDate</label>
              		<input type="date" class="form-control" name="planeDate" placeholder="출발날짜" maxlength="11">
           		</div>
           		<hr>
           		<div class="form-group">
             		<label for="InputName">PresentPersonnel</label>
              		<input type="text" class="form-control" name="presentPersonnel" placeholder="인원" maxlength="11">
           		</div>
           		<hr>
           		
           		<div class="form-group">
              		<label for="InputId">TotalNumber</label>
              		<div class="row">
              		<div class="col-md-9">
             		<input type="text" class="form-control" name="totalNumber" placeholder="좌석수" maxlength="11"> </div>
            	</div>
           			
           		<hr>
           		
           		<div class="form-group">
             		<label for="InputEmail">StartArea</label>
              		<input type="text" class="form-control" name="startArea" placeholder="출발지" maxlength="40">
           		</div>
           		
           		<hr>
           		
           		<div class="form-group">
             		<label for="InputAdress">ArrivalArea</label>
              		<input type="text" class="form-control" name="arrivalArea" placeholder="도착지" size="60">
           		</div>
           		<hr>
           		<div class="form-group">
             		<label for="InputAdress">WhatPlane</label>
              		<input type="text" class="form-control" name="whatPlane" placeholder="비행기고유번호" size="60">
           		</div>
           		<hr>
           		<div class="form-group">
             		<label for="InputAdress">price</label>
              		<input type="text" class="form-control" name="price" placeholder="가격" size="60">
           		</div>
           		<br>
           		
 				
            	<div class="form-group text-center">
              		<button type="submit" class="btn btn-primary" onclick="">완료</button>
              		&nbsp;
              		<button type="reset" class="btn btn-info">다시쓰기</button>
              		&nbsp;
              		<a href="../admin/ordermain.jsp" class="btn btn-default">뒤로</a>
              
            	</div>
            	</div>
          
            
		</form>
		</div>
		<div class="col-md-1"></div>
		</div>
		</div>


 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
</script>
<script type="text/javascript" src="js/bootstrap.js">
</script>
</body>
</html>