

<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<%@ page import="airPlan.selectTicket.*"%>

<%@ page import="java.io.PrintWriter"%>
<%@ page import="airPlan.*"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>

<% String loginCheck2=(String)session.getAttribute("login");%>
<% String name = (String) session.getAttribute("UserId"); %>
<html>
<head>
<script src="./js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

var loginCheck="<%=loginCheck2%>";
function Check(){
	var idid = '<%=name%>';
	if(idid == 'null'){
		alert("로그인을 해주세요.");
		location.href = "../SignUp/LoginPage.jsp";
	}else{
		location.href = "../myPage/proFile.jsp";
	}
}
function Check1(){
	var idid = '<%=name%>';
	if(idid == 'null'){
		alert("로그인을 해주세요.");
		location.href = "../SignUp/LoginPage.jsp";
		return false;
	}
	return true;
}
var sitid=new sitid[99];
//var sitcheck=new sitcheck[99];
for(var e=0;sitid.length;e++){
	sitid[e]=0;
}
	document.write(sitid[0]+",");
		function changeTrColor(trObj, oldColor, newColor) {
			trObj.style.backgroundColor = newColor;
			trObj.onmouseout = function(){
				trObj.style.backgroundColor = oldColor;
			}
		}
//main.jsp usepage.jsp  realstatement.jsp login.jsp

		function clickTrEvent(trObj) {
			
			var a=0;
			a=trObj.id;
			var user=trObj.id;//if비교용 a를직접갓다쓰면 false값으로 a가 바뀜
			var server=1; //c는 포문 인자인데 for문써서 서버매열안에 인자돌려서 비교해야함
			alert(a);
			//홀수 선택 짝수 ㄴㄴ
		
			
	
		//<label for="cb1" style="cursor:hand; color:red; display:none"  >
		//		if(a==server){
		//			alert(a);
		//		}
		//		else{
			//		user.attr('onclick', '');
		//		}
			
				
			
		}

var adult=1;
var child=0;
var baby=0;
var peopleCount=adult+child+baby;
var radioCheck="일반석"

function click_Take_Id_Event(take_Id) {
	
	var a=0;
	a=take_Id.id; // 아이디값 훔치기
	document.getElementById('start').value=a;
	
     $("#mask, .window").hide();
		
	
}
function giveTicektValue() {
	

	
	
	document.getElementById('giveSlocation').value=document.getElementById('start').value;  
	
	document.getElementById('giveAlocation').value=document.getElementById('arrive').value;
	
	document.getElementById('giveSdate').value=document.getElementById('start_Date').value;
	
	document.getElementById('giveAdate').value=document.getElementById('arrive_Date').value;

	
	

}

function click_Take_Id_Event2(take_Id) {
	
	var a=0;
	a=take_Id.id; // 아이디값 훔치기
	document.getElementById('arrive').value=a;
	
     $("#mask3, .window3").hide();
		
	
}




function click_Plus_Event(take_Id) {
	
	var a=0;
	peopleCount=adult+baby+child;
	var basicTool = "/";
	
	a=take_Id.id; // 아이디값 훔치기
	
	
			if (a==1.1){
				alert("0 밑으로는 내려갈수 .");
				adult=adult+1;
				peopleCount=adult+baby+child;
				basicTool="승객"+peopleCount+"명, "+ radioCheck;
				document.getElementById('seatCount').value=basicTool;
				document.getElementById('adultCount').innerHTML=adult;
				document.getElementById('giveAdult').value=adult;
				
		    	} else if (a==1.2){
				child=child+1;
				peopleCount=adult+baby+child;
				basicTool="승객"+peopleCount+"명, "+radioCheck;
				document.getElementById('seatCount').value=basicTool;
				document.getElementById('childCount').innerHTML=child;
				document.getElementById('giveChild').value=child;
				
				} else if (a==1.3) {
				baby=baby+1;
				peopleCount=adult+baby+child;
				basicTool="승객"+peopleCount+"명, "+radioCheck;
				document.getElementById('seatCount').value=basicTool;
				document.getElementById('babyCount').innerHTML=baby;
				document.getElementById('giveBaby').value=baby;
				}
	
	
		
	
     
	
}
function click_Minus_Event(take_Id) {
	
	var a=0;
	peopleCount=adult+baby+child;
	var basicTool = "/";
	
	a=take_Id.id; // 아이디값 훔치기
	
	if(peopleCount==1) {
		alert("최소 1명이 선택되어야 합니다.");
		take_Id.stopPropagation();
	} 
			if (a==0.1){
				if (adult>1){
				adult=adult-1;
				peopleCount=adult+child+baby;
				basicTool="승객"+peopleCount+"명, "+radioCheck;
				document.getElementById('seatCount').value=basicTool;
				document.getElementById('adultCount').innerHTML=adult;
				document.getElementById('giveAdult').value=adult;
				}
				else{
					alert("0 밑으로는 내려갈수 니ㄴ다.");
					take_Id.stopPropagation();
				}
				
		    	} else if (a==0.2 && child!=0){
				child=child-1;
				peopleCount=adult+baby+child;
				basicTool="승객"+peopleCount+"명, "+radioCheck;
				document.getElementById('seatCount').value=basicTool;
				document.getElementById('childCount').innerHTML=child;
				document.getElementById('giveChild').value=child;
				
				} else if (a==0.3 && baby!=0) {
				baby=baby-1;
				peopleCount=adult+baby+child;
				basicTool="승객"+peopleCount+"명, "+radioCheck;
				document.getElementById('seatCount').value=basicTool;
				document.getElementById('babyCount').innerHTML=baby;
				document.getElementById('giveBaby').value=baby;
				}
}
function radio_Seat_Event(take_Id){
	
	radioCheck = take_Id.id
	basicTool="승객"+peopleCount+"명, "+radioCheck;
	document.getElementById('seatCount').value=basicTool;
	document.getElementById('radiocheck').value=radioCheck;
	 
	 
}



function click_Change_Event() {

	var start = 0;
	start = document.getElementById('start').value;
	arrive = document.getElementById('arrive').value;
	if (start == "출발도시" && arrive == "도착도시") {
		e.preventDefault();
	} else {
		document.getElementById('start').value = arrive;
		document.getElementById('arrive').value = start;
		alert(start);
		alert(arrive);
	}

}
function test() {
	//document.getElementById('myPage').innerHTML=("     ");

	//document.all.myPage.style.visibility="hidden";
	//document.all.myPage.style.visibility="visible";
	alert("9월말 구현");
}

function choiceArea() {

	//화면의 높이와 너비를 구한다.
	var maskHeight = $(document).height();
	var maskWidth = $(window).width();

	//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
	$("#mask").css({
		"width" : maskWidth,
		"height" : maskHeight
	});

	//애니메이션 효과 - 일단 0초동안 까맣게 됐다가 60% 불투명도로 간다.

	$("#mask").fadeIn(0);
	$("#mask").fadeTo("slow", 0.6);

	//윈도우 같은 거 띄운다.
	$(".window").show();

}
function choiceArea2() {

	//화면의 높이와 너비를 구한다.
	var maskHeight = $(document).height();
	var maskWidth = $(window).width();

	//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
	$("#mask3").css({
		"width" : maskWidth,
		"height" : maskHeight
	});

	//애니메이션 효과 - 일단 0초동안 까맣게 됐다가 60% 불투명도로 간다.

	$("#mask3").fadeIn(0);
	$("#mask3").fadeTo("slow", 0.6);

	//윈도우 같은 거 띄운다.
	$(".window3").show();

}

function choicePeople() {

	//화면의 높이와 너비를 구한다.
	var maskHeight = $(document).height();
	var maskWidth = $(window).width();

	//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
	$("#mask_People").css({
		"width" : maskWidth,
		"height" : maskHeight
	});

	//애니메이션 효과 - 일단 0초동안 까맣게 됐다가 60% 불투명도로 간다.

	$("#mask_People").fadeIn(0);
	$("#mask_People").fadeTo("slow", 0.6);

	//윈도우 같은 거 띄운다.
	$(".window2").show();

}

//<![CDATA[


$(document).ready(function () {
	
	
	
	$('#radioCheck').click(function() {
		// getter
		var radioVal = $('input[name="goback"]:checked').val();

		document.all.arrive_Date.style.visibility = "visible";

	});

	$('#radioCheck2').click(function() {
		// getter
		var radioVal = $('input[name="goback"]:checked').val();
		document.all.arrive_Date.style.visibility = "hidden";

	});
	$(".startMask").click(function(e) {
		e.preventDefault(); //중지
		$("#mask, .window").hide();
		$("#mask_People, .window2").hide();
		$("#mask3, .window3").hide();
		choiceArea();
	});
	$(".startMask3").click(function(e) {
		e.preventDefault();
		$("#mask, .window").hide();
		$("#mask_People, .window2").hide();
		$("#mask3, .window3").hide();
		choiceArea2();
	});

	$(".personeel_Seat").click(function(e) {
		e.preventDefault();
		$("#mask, .window").hide();
		$("#mask_People, .window2").hide();
		$("#mask3, .window3").hide();
		choicePeople();
	});

	//닫기 버튼을 눌렀을 때
	$(".window .close").click(function(e) {
		//링크 기본동작은 작동하지 않도록 한다.
		e.preventDefault();
		$("#mask, .window").hide();

	});
	$(".window3 .close").click(function(e) {
		//링크 기본동작은 작동하지 않도록 한다.
		e.preventDefault();

		$("#mask3, .window3").hide();

	});
	$(".window2 .close").click(function(e) {
		//링크 기본동작은 작동하지 않도록 한다.
		e.preventDefault();

		$("#mask_People, .window2").hide();
	});

	//검은 막을 눌렀을 때
	$("#mask").click(function() {
		$(this).hide();
		$(".window").hide();

	});
	$("#mask_People").click(function() {
		$(this).hide();
		$(".window2").hide();

	});
	$("#mask3").click(function() {
		$(this).hide();
		$(".window3").hide();

	});

});


//]]>

</script>
<link href="css/bootstrap.min.css" rel="stylesheet"/> 
    <link rel="stylesheet" type="text/css" href="css/sert.css"/>
    <link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Anton|Do+Hyeon|Nanum+Pen+Script&amp;subset=korean,latin-ext,vietnamese" rel="stylesheet">
<meta charset="UTF-8">


<%!int pageSize = 10;



SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");%>
<%
request.setCharacterEncoding("EUC-KR");
String Slocation=(String) request.getParameter("giveSlocation");
String Alocation=(String) request.getParameter("giveAlocation");
String Sdate=(String) request.getParameter("giveSdate");
String Adate=(String) request.getParameter("giveAdate");
int adultnum=Integer.parseInt(request.getParameter("giveAdult"));
int babynum=Integer.parseInt(request.getParameter("giveBaby"));
int childnum=Integer.parseInt(request.getParameter("giveChild"));
int PersonCount=adultnum+childnum+babynum;
String radiocheck=request.getParameter("radiocheck");


String pageNum = request.getParameter("pageNum");

if (pageNum == null) {
	pageNum = "1";
}

int currentPage = Integer.parseInt(pageNum);
int startRow = (currentPage - 1) * pageSize + 1;
int endRow = currentPage * pageSize;
int count = 0;
int number = 0;
List<selectTicketDataBean> articleList = null;


	selectTicket dbPro = selectTicket.getInstance();
	System.out.println(Sdate);
	System.out.println(Alocation);
	System.out.println(Slocation);
	System.out.println(PersonCount);
	count = dbPro.getArticleCount(Sdate,Slocation,Alocation,PersonCount);
	System.out.println(count);
	System.out.println("Cop");

	if (count > 0) {
		String abc = "";
		articleList = dbPro.getArticles(Sdate,Slocation,Alocation,PersonCount);
		System.out.println(articleList);
	}

	number = count - (currentPage - 1) * pageSize;

%>

	
<title>AirPlan_Ticket</title>
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
		<p>Ticket List</p>
</div>

<br><br>


		<%
			if (count == 0) {
		%>

	<div class="res">
  	<center>
  		<br>
  		<p>항공권이 존재하지 않습니다.</p><br>
  		<h5>다른항공권검색 또는 <a onclick="location.href = '../Q&A/list.jsp'">Q&A 게시판 </a>또는 대표번호로 전화주시면 감사하겠습니다.</h5><br>
  		
  		<div class="form-group text-center">
  		<input type="button" class="btn btn-primary" value="My Page" onclick="Check()">
  		&nbsp;&nbsp;
  		<a href="../SignUp/main.jsp"><button type="button" class="btn btn-primary">Home</button></a>
  		</div>
  		
  	</center>
  </div>
		<%
			} else {
		%>
		
		<center>
		<h1 style="font-size:50px;">
		<b>AIRPLAN_항공권 목록</b></h1>   
		<br>
		
				
				
					<%
					for (int i = 0; i < articleList.size(); i++) {
							selectTicketDataBean article = articleList.get(i);
				%>
				<div class="tik" style="width:800px; height:440px; border: 1pt groove #c8c8c8; font-family: 'Do Hyeon', sans-serif;">
				<form method="post" action="reservation.jsp" onsubmit="return Check1()">
						
						<input type="hidden" value="<%=article.getnum() %>" name="num">
						<input type="hidden" name="airplaneIndex2" value="<%=article.getnum() %>">
						<input type="hidden" value=" <%=session.getAttribute("UserId")%>" id="userid" name="userid">
						
						<div class="container-fluid padding">
						<h2 style="font-size: 40px; color:#03A9F4;">AirPlan_<%=article.getAirPlaneNumber()%></h2>
						<div class="col-12">
							<div class="row">
						<div class="col-md-2 text-center">
							<%=article.getStartArea()%>
						</div>
				
						<div class="col-md-6 text-center">
				　
				</div>
				
				<div class="col-md-2 text-center">
				<%=article.getArrivalArea()%>
				</div>
				
				<div class="col-md-2 text-center">
				<%=article.getPlaneDate()%>
				</div>
				
				</div>
			</div>
			
			<div class="col-12">	
				<div class="row">
				<div class="col-md-1 text-center"></div>
				<div class="col-md-8 text-center">
				<img src="image/tkkkk.JPG" style="width: 100%; object-fit: contain">
				</div>
				<div class="col-md-1 text-center"></div>
				<div class="col-md-1 text-center">
				　
				</div>
				</div>
			</div>
			
				<div class="col-12">
				<div class="row">
				<div class="col-md-2 text-center">
				<%=article.getStartTime()%>
				</div>
				
				<div class="col-md-6 text-center">
				　
				</div>
				
				<div class="col-md-2 text-center">
				<%=article.getArrivalTime()%>
				</div>
				
				<div class="col-md-2 text-center">
				확정
				</div>
				
				</div>
			</div>
		
		<div class="col-12">
		　<hr style="border-top: 2px solid #03A9F4;">
		</div>
		
			<div class="col-12">
				<div class="row">
				
				<div class="col-md-8 text-center">
					<img src="image/tkkk.JPG" style='width: 100%; object-fit: contain'>
				</div>
				
				<div class="col-md-4 text-center">
					<div>
					<br>
					구매전 유류할증표를 확인하세요.<br>
					</div>
					<br>
					<div style="font-size: 20px;">
					<b>총요금(편도)</b><br>
					<%=article.getprice()%>
					</div>
					<br>
					<div class="text-right">
					유류할증,제세공과금,발권수수료<br>
					가격에 포함<br>
					(변동가능)<br>
					</div>
				</div>
				
				</div>
			</div>
		</div>
		
		<div class="col-12 text-center">
						<input type="hidden" value="<%=article.getAirPlaneNumber()%>" name="airplanenum">
						<input type="submit" value="선택" class="btn btn-primary">
		</div>
</form>
</div>	
<div class="container">
	　<BR>
	　<BR>
	</div>
	
					
			
			<%
					}
				%>						
		<br></br>
	</center>
			
		
		<%}%>

		 		
		<div class="Jnb">
			<br>
	 		 <center>ⓒ Airplan2018_2b02 / 문의 : 010-0000-0000 / AirPlan@naver.com / https://blog.naver.com/airplan2018_2b02 <br></center>
	 		 <center>팀장_고진호 / 코더_김민혁 / 웹퍼블리셔_임용섭 / 블로거_박제현</center>
	 	</div>

</body>
</html>