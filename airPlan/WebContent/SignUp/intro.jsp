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
<title>AirPlan_Intro</title>

</head>

<body>

<div class="Jnt">
	<div class="logo">
			<a href="../SignUp/main.jsp">
				<img src="image/logo.png">
			</a>
	</div>
	
	<div id="hd">
				
		<ul>
			
			<li><a class="menuLink" href="../SignUp/main.jsp" id="">Main</a></li>
			
			<li id="loginLi2" style="display: inline;"><a class="menuLink" href="../SignUp/LoginPage.jsp" id="loginLi" style="visibility: 'visible';">Login</a></li>			
			
			<li><a class="menuLink" href="../SignUp/intro.jsp" id="">Intro</a></li>
			
			<li><a class="menuLink" href="../travel/list.jsp" id="">Gesipan</a></li>
	
		</ul>
</div>
</div>

<div class="font">
	<div class="container-fluid padding">
	<div class="row welcome text-center">
	<div class="mtt">
			<div class="col-12">
					<h1 class="display-4">What is AirPlan</h1>
	</div>
	</div>
					<br>
					<div class="col-12">
					<p class="lead"> AIRLAN 홈페이지 에 접속해주신 고객님들께 감사를 표합니다.</p>
					</div>
	</div>
	</div>


	<br>
	<div class="container-fluid padding">
	<div class="row text-center padding">
		<div class="col-xs-12 col-sm-6 col-md-4">
				<i class="fas fa-ticket-alt" style="font-size: 150px; color: #120847;"></i>
				<h3>Reservation</h3>
				<p>항공권을 예매 / 예약 할수 있습니다.</p>
		</div>
		<div class="col-xs-12 col-sm-6 col-md-4">
				<i class="fas fa-info-circle"  style="font-size: 150px; color: #120847;"></i>
				<h3>Info</h3>
				<p>여행에 관련된 다양한 축제/정보를 알려드립니다.</p>
		</div>
		<div class="col-xs-12 col-sm-6 col-md-4">
				<i class="fas fa-clipboard-list"  style="font-size: 150px; color: #120847;"></i>
				<h3>GesiPan</h3>
				<p>게시판을 통해 여행일지 / Q&A / 공지사항을 확인할수 있습니다.</p>
		</div>
	</div>
	<br><br>
	<hr class="my-4">
	</div>
	
	<br><br>
	
	<div class="container-fluid padding">
	<div class="row padding">
		<div class="col-lg-6">
		<h2>당신에게 알맞은 항공원을 찾으세요</h2>
		<br>
		<p>가고싶은 도시를 선택을하고 원하시는 날짜에 항공권 검색을 하세요. <br>
			   당신에게 알맞은 항공권을 찾아 보실수 있습니다. 선택한 항공권으로 여러나라를 여행해보세요.
		</p>
		<p>우선 출발지 도착지 날짜와 승객수를 선택해주세요<br>
				입력한 정보에의해 다양한 항공권에 대한 정보를 제공하고있습니다. 입력한신 정보가 틀리지 않았는지 잘확인하고 입력해주세요
				날짜에 의해 가격이 변동이 되있으니 주의하고 잘입력해주세요.
		</p>
		<p>항상 고객님들에게 원하시는 정보를 전달해줄수 있는 AirPlan이 되겟습니다 . 감사합니다.
		</p><br>
		<a href="main.jsp" class="btn btn-primary">Go Main</a>
		</div>
		<div class="col-lg-6">
				<img src="image/intro.JPG" class="img-fluid" style="width: 730px; height: 400px;">
		</div>
	</div>
	</div>
	
	<br><br>
	
	<div class="container-fluid padding">
	<div class="row padding">
		<div class="col-lg-6">
		<h2>자신의 정보 / 예매 / 예약 를 관리하세요</h2>
		<br>
		<p>자신의 정보를 관리하세요. <br>
			   MyPage에서 자신의 정보를 관리할수있습니다. 예매 내역 / 예매 대기 다양한 정보를 관리하세요
		</p>
		<p>예매 내역을 확인하세요. <br>
			   MyPage에서 자신의 예매내역을 확인할수있습니다. 출발지 도착지 시간을 잘확인하세요
		</p>
		<p>결제 대기 목록을 확인하세요. <br>
			   결제 대기 목록에서 자신의 결제 대기 목록을 확인하고 결제를 원하시면 바로 진행해주세요.
		</p>
		<p>항상 고객님들에게 원하시는 정보를 전달해줄수 있는 AirPlan이 되겟습니다 . 감사합니다.
		</p><br>
		<a href="main.jsp" class="btn btn-warning">Go main</a>
		</div>
		<div class="col-lg-6">
				<img src="image/rp.JPG" class="img-fluid" style="width: 730px; height: 400px;">
		</div>
	</div>
	</div>
	
	<br><br>
	
	<div class="container-fluid padding">
	<div class="row padding">
		<div class="col-lg-6">
		<h2>다양한 게시판을 활용해보세요</h2>
		<br>
		<p>다양한 게시판을 활용해보세요. <br>
			   AirPlan 에서는 질의게시판 , 공지사항 , 여행일지 게시판을 운영하고 있습니다.
		</p>
		<p>여행에 대한 정보가 부족하실땐 직접 여행을 다녀오고 사진과 함께 작성한 여행일지 게시판을 확인해보세요.</p>
		<p>항공권 검색 , 결제시스템 등 다양한 시스템에 궁금한점이 있으신분들은 질의 게시판을 활용해 글을 남겨주시면 친절히게 답변해드리겠습니다.</p>
		<p>공지사항은 각나라의 특이사항 홈페이지 특이사항을 올리고있으니 항상 공지사항을 잘확인해 주세요.</p>
		<p>항상 고객님들에게 원하시는 정보를 전달해줄수 있는 AirPlan이 되겟습니다 . 감사합니다.
		</p>
		<br>
		<a href="../travel/list.jsp" class="btn btn-success">Go Gesipan</a>
		</div>
		<div class="col-lg-6">
				<img src="image/ncgaqa.jpg" class="img-fluid" style="width: 730px; height: 400px;">
		</div>
	</div>
	</div>
	
	<br><br><br><br>
	
	<div class="container-fluid padding">
	<div class="row welcome text-center">
	<div class="mtt">
		<div class="col-12">
		<h1 class="display-4">Meet the Team</h1>
		</div>
	</div>
	</div>
	</div>
	<br><br>
	<div class="container-fluid padding">
	<div class="row text-center padding">
		<div class="col-md-3">
		<div class="card">
			<i class="fas fa-male"  style="font-size: 100px; color: #F44336;"></i>
			<div class="card-body">
					<h3 class="card-title"> 고진호</h3>
					<p class="card-text">
					메인코더 (팀장)<br><br>
					- 메인코더<br>
					- DB/서버 관리 <br>
					- 프로젝트 총괄  <br>
					</p>
				
			</div>
		</div>
		</div>
		
		<div class="col-md-3">
		<div class="card">
			<i class="fas fa-male"  style="font-size: 100px; color: #3F51B5;"></i>
			<div class="card-body">
					<h3 class="card-title"> 김민혁</h3>
					<p class="card-text">
					서브코더<br><br>
					- 서브코더<br>
					- DB/서버 관리 <br>
					- 프로젝트 파일 관리  <br>
					</p>
				
			</div>
		</div>
		</div>
		
		<div class="col-md-3">
		<div class="card">
			<i class="fas fa-male"  style="font-size: 100px; color: #4CAF50;"></i>
			<div class="card-body">
					<h3 class="card-title"> 임용섭</h3>
					<p class="card-text">
					웹 퍼블리셔<br><br>
					- 프로젝트 디자인<br>
					- 홈페이지 디자인 <br>
					- 이미지 관리<br>
					</p>
				
			</div>
		</div>
		</div>
		
		<div class="col-md-3">
		<div class="card">
			<i class="fas fa-male"  style="font-size: 100px; color: #9C27B0;"></i>
			<div class="card-body">
					<h3 class="card-title"> 박제현</h3>
					<p class="card-text">
					블로거<br><br>
					- 블로그 관리<br>
					- 논문 정리 <br>
					</p>
				
			</div>
		</div>
		</div>
	</div>
	</div>
	
	<br><br>

<div class="Jnb">
<footer>
		<div class="container-fluid padding">
		<div class="row text-center">
			<div class=" col-md-4">
				<img src="image/logo.png" style="width: 250px;">
				<hr class="light">
				<p>코더_010-3378-5817</p>
				<p>서브_010-3925-4953</p>
				<p>웹퍼_010-3032-5893</p>
				<p>블로_</p>

			</div>

			<div class="col-md-4">
				<hr class="light">
				<h5>고객센터 운영시간</h5>
				<hr class="light">
				<p>Monday: 9am - 5pm</p>
				<p>Saturday: 10am - 4pm</p>
				<p>Sunday: closed</p>
			</div>
			
			<div class="col-md-4">
				<hr class="light">
				<h5>AIRPLAN</h5>
				<hr class="light">
				<p>Go to Travel</p>
				<p>AirPlan@naver.com</p>
				<p>https://blog.naver.com/airplan2018_2b02</p>
				<p>ⓒ Airplan2018_2b02</p>
			</div>
			
		</div>
		
		<br>
		<div class="text-center">
		<div class="col-12">
				<hr class="light">
				<h5>ⓒ Airplan2018_2b02</h5>
			</div>
		</div>
		</div>
</footer>
</div>
</div>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
</script>
<script type="text/javascript" src="js/bootstrap.js">
</script>
</body>

</html>