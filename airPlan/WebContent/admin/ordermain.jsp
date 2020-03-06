<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="css/intro.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css">
 <link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">
<title>AIRPLAN_관리자화면</title>
</head>
<body>

<!-- 할게 많아서 br 로 띄운다  -->
<div></div>
<br><br><br>

<div class="font">
	<div class="container-fluid padding">
	<div class="row welcome text-center">

	<div class="text-left">
	<a href='../SignUp/main.jsp'><i class="fas fa-home" style="font-size: 50px; color: #120847; margin-left: 30px;"></i></a>
	<p style="font-size: 20px; margin-left: 30px; color: #120847;"> <a href='../SignUp/main.jsp'><b>Home으로 이동</b></a></p></div>
	<div class="mtt">
			<div class="col-12">
					<h1 class="display-4"style="font-size: 150px; background-color: #120847; color: #fff;" >Admin Page</h1>
	</div>
	</div>
					<br>
					<div class="col-12">
					<p class="lead"> 관리자페이지_AirPlan_Admin</p><br>
					</div>
	</div>
	</div>


	<br>
	<div class="container-fluid padding">
	<div class="row text-center padding">
	
		<div class="col-xs-12 col-sm-6 col-md-3">
				<a href='createsit.jsp'><i class="fas fa-chair" style="font-size: 150px; color: #120847;"></i></a>
				<h3>Site</h3>
				 <a href='createsit.jsp'>좌석등록</a>
		</div>
		<div class="col-xs-12 col-sm-6 col-md-3">
				<a href='orderinsert.jsp'><i class="fas fa-plane-departure" style="font-size: 150px; color: #120847;"></i></a>
				<h3>Registration</h3>
				 <a href='orderinsert.jsp'>항공 티켓 등록</a>
		</div>
		<div class="col-xs-12 col-sm-6 col-md-3">
				<a href='orderch.jsp'><i class="fas fa-address-card"  style="font-size: 150px; color: #120847;"></i></a>
				<h3>Inquiry/Delete</h3>
				<a href='orderch.jsp'>항공권 목록 ( 조회 & 삭제 )</a>
		</div>
		<div class="col-xs-12 col-sm-6 col-md-3">
				<a href='orderlist.jsp'><i class="fas fa-clipboard-list"  style="font-size: 150px; color: #120847;"></i></a>
				<h3>Check</h3>
				<a href='orderlist.jsp'>예매 목록.</a>
		</div>
	</div>
	</div>
</div>
   
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
</script>
<script type="text/javascript" src="js/bootstrap.js">
</script>
</body>
</html>