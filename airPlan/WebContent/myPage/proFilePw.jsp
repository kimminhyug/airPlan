<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

    <link href="css/bootstrap.min.css" rel="stylesheet"/> 
    <link rel="stylesheet" type="text/css" href="css/profile2.css"/>
    <link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">

<meta charset="UTF-8">


<%String name=(String)session.getAttribute("UserId");%>
<script>
function check(){
   if(!document.deleteform.password.value){
      alert("비밀번호를 입력하지 않았습니다.");
      document.deleteform.password.focus();
      return false;
   }else if (document.deleteform.ck.checked == false) { //약관여부 동의체크
		alert("약관에 동의 해주세요.");
		return false;
	}
}
</script>

<title>회원탈퇴</title>

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
		<p>WITHDRAWAL</p>
</div>

<br><br>

<article class="container">
	<div class="col-md-6 col-md-offset-3">
	
	<form name="deleteform" method="post" action="proFilePwPro.jsp" onsubmit="return check()">
	
	<div class="form-group">
             		<label for="InputPassword1">아이디</label>
              		<input type="text" class="form-control" placeholder= <%= name %> maxlength="50" readonly>
    </div>
    
    <div class="form-group">
             		<label for="InputPassword1">비밀번호</label>
              		<input type="password" class="form-control"  name="password">
	</div>
	
	<div class="form-group">
    <label for="exampleFormControlTextarea1">약관동의</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="9">
1. 회원은 AirPlan에 언제든지 탈퇴를 요청할 수 있으며, 탈퇴 요청은 AirPlan 홈페이지 첫 화면의 [마이AirPlan]메뉴를 클릭하여 [부가정보수정] 메뉴를 통해 동의 철회(회원탈퇴)를 하실 수 있습니다. 단, AirPlan회원의 탈퇴신청은 AirPlan 홈페이지 또는 AirPlan AirPlan 홈페이지를 통해 가능하며, AirPlan 홈페이지 고객만족센터 내 회원정보변경의 '회원탈퇴'를 통하여 할 수 있으며, 또한 탈퇴 및 수정에 대한 내용은 AirPlan 고객센터에 유선 및 e-mail로 통보하셔도 처리 가능합니다.

2. 회원이 다음 각 호의 사유에 해당하는 경우, AirPlan는 회원에 대하여 일정한 서비스의 이용을 제한하거나 일정기간 회원자격을 정지시킬 수 있습니다.

가. 가입 신청 시 허위 내용을 등록한 경우
나. AirPlan를 이용하여 구입한 상품•용역 등의 대금, 기타 AirPlan 이용과 관련하여 회원이 부담하는 채무를 기일에 이행하지 않는 경우
다. 타인의 ID와 비밀번호 또는 그 개인정보를 도용한 경우
라. AirPlan 홈페이지의 화면에서 타인의 명예를 손상시키거나 불이익을 주는 행위를 한 경우
마. 제3자의 AirPlan 홈페이지 이용을 방해하는 등 전자거래질서를 위협하는 경우
바. AirPlan 홈페이지 화면에 음란물을 게재하거나 음란사이트를 링크시키는 경우
사. AirPlan를 이용하여서 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우
아. 기타 서비스 운영을 고의로 방해하는 행위를 하는 경우
자. 영리 목적으로 티켓을 발권한 다음 다른 사람에게 대가를 받고 양도함으로써, 적립 포인트 및 수익을 부당하게 취득한 경우
3. AirPlan가 회원 자격을 제한•정지 시킨 후, 제 2항의 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 AirPlan는 회원자격을 상실시킬 수 있습니다.

4. AirPlan가 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 소명할 기회를 부여합니다.

5. 부정 적립된 포인트는 회원 자격 상실 통보와 함께 동시에 소멸하고 회원은 이에 대하여 어떠한 주장도 할 수 없습니다. 또한, 부정 적립된 포인트를 활용하여 상품 및 서비스를 구매하는 등 부당 이득을 취한 경우, 회원 당사자 또는 부정 적립 동조자에 대해 당사는 민∙형사 책임을 물을 수 있습니다.

6. 회원 자격이 상실된 회원의 정보는 회원 자격 상실 확정 후, AirPlan 서비스 부정 이용 및 추가적인 피해 방지를 위하여 3년 간 보유하며, 해당 기간 동안 재가입 및 AirPlan 서비스 이용이 불가합니다.

7. 정보통신망법에 의거, 개인정보 유효기간제 (개인정보의 파기 또는 분리저장)에 따라 '휴면회원'을 운영합니다.

가. 휴면회원으로 지정될 시 일부 항목을 제외한 회원정보가 분리저장 및 관리되어 이용 및 제 3자 제공이 불가하게 됩니다.
나. 휴면회원이란 당사의 서비스를 1년 이상 이용하지 않은 회원을 말합니다.
다. 서비스 미 이용 기준은 당사 온라인상 로그인 (모바일앱 자동 로그인의 경우 구매/취소 이력) 및 오프라인 AirPlan 적립 및 사용이 없는 경우에 해당됩니다.
라. 유효기간 만료 30일 전까지 전자우편 등으로 개인정보의 분리저장 및 관리 사실 및 일시, 개인정보 항목을 해당 이용자에게 통지합니다. 단, 상기 통지 수단에 대한 정보가 부재, 오류인 경우, 홈페이지 공지사항 게시로 대신합니다.
</textarea>
</div>

	<div class="form-group text-right">
		<div>
		
			<label class="radio-Man">
  				<input type="radio" id="inlineRadio1" name="ck">동의합니다
	  		</label>
		</div>
	</div>
	
	<br>
	
	<div class="form-group text-right">
	<a href="../SignUp/main.jsp">
	    <button type="button" class="btn btn-default">Home</button>
	</a>&nbsp;
    	<button type="submit" class="btn btn-danger">회원탈퇴</button>
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
	
</body>
</html>