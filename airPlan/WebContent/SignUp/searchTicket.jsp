

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
		alert("�α����� ���ּ���.");
		location.href = "../SignUp/LoginPage.jsp";
	}else{
		location.href = "../myPage/proFile.jsp";
	}
}
function Check1(){
	var idid = '<%=name%>';
	if(idid == 'null'){
		alert("�α����� ���ּ���.");
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
			var user=trObj.id;//if�񱳿� a���������پ��� false������ a�� �ٲ�
			var server=1; //c�� ���� �����ε� for���Ἥ �����ſ��ȿ� ���ڵ����� ���ؾ���
			alert(a);
			//Ȧ�� ���� ¦�� ����
		
			
	
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
var radioCheck="�Ϲݼ�"

function click_Take_Id_Event(take_Id) {
	
	var a=0;
	a=take_Id.id; // ���̵� ��ġ��
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
	a=take_Id.id; // ���̵� ��ġ��
	document.getElementById('arrive').value=a;
	
     $("#mask3, .window3").hide();
		
	
}




function click_Plus_Event(take_Id) {
	
	var a=0;
	peopleCount=adult+baby+child;
	var basicTool = "/";
	
	a=take_Id.id; // ���̵� ��ġ��
	
	
			if (a==1.1){
				alert("0 �����δ� �������� .");
				adult=adult+1;
				peopleCount=adult+baby+child;
				basicTool="�°�"+peopleCount+"��, "+ radioCheck;
				document.getElementById('seatCount').value=basicTool;
				document.getElementById('adultCount').innerHTML=adult;
				document.getElementById('giveAdult').value=adult;
				
		    	} else if (a==1.2){
				child=child+1;
				peopleCount=adult+baby+child;
				basicTool="�°�"+peopleCount+"��, "+radioCheck;
				document.getElementById('seatCount').value=basicTool;
				document.getElementById('childCount').innerHTML=child;
				document.getElementById('giveChild').value=child;
				
				} else if (a==1.3) {
				baby=baby+1;
				peopleCount=adult+baby+child;
				basicTool="�°�"+peopleCount+"��, "+radioCheck;
				document.getElementById('seatCount').value=basicTool;
				document.getElementById('babyCount').innerHTML=baby;
				document.getElementById('giveBaby').value=baby;
				}
	
	
		
	
     
	
}
function click_Minus_Event(take_Id) {
	
	var a=0;
	peopleCount=adult+baby+child;
	var basicTool = "/";
	
	a=take_Id.id; // ���̵� ��ġ��
	
	if(peopleCount==1) {
		alert("�ּ� 1���� ���õǾ�� �մϴ�.");
		take_Id.stopPropagation();
	} 
			if (a==0.1){
				if (adult>1){
				adult=adult-1;
				peopleCount=adult+child+baby;
				basicTool="�°�"+peopleCount+"��, "+radioCheck;
				document.getElementById('seatCount').value=basicTool;
				document.getElementById('adultCount').innerHTML=adult;
				document.getElementById('giveAdult').value=adult;
				}
				else{
					alert("0 �����δ� �������� �Ϥ���.");
					take_Id.stopPropagation();
				}
				
		    	} else if (a==0.2 && child!=0){
				child=child-1;
				peopleCount=adult+baby+child;
				basicTool="�°�"+peopleCount+"��, "+radioCheck;
				document.getElementById('seatCount').value=basicTool;
				document.getElementById('childCount').innerHTML=child;
				document.getElementById('giveChild').value=child;
				
				} else if (a==0.3 && baby!=0) {
				baby=baby-1;
				peopleCount=adult+baby+child;
				basicTool="�°�"+peopleCount+"��, "+radioCheck;
				document.getElementById('seatCount').value=basicTool;
				document.getElementById('babyCount').innerHTML=baby;
				document.getElementById('giveBaby').value=baby;
				}
}
function radio_Seat_Event(take_Id){
	
	radioCheck = take_Id.id
	basicTool="�°�"+peopleCount+"��, "+radioCheck;
	document.getElementById('seatCount').value=basicTool;
	document.getElementById('radiocheck').value=radioCheck;
	 
	 
}



function click_Change_Event() {

	var start = 0;
	start = document.getElementById('start').value;
	arrive = document.getElementById('arrive').value;
	if (start == "��ߵ���" && arrive == "��������") {
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
	alert("9���� ����");
}

function choiceArea() {

	//ȭ���� ���̿� �ʺ� ���Ѵ�.
	var maskHeight = $(document).height();
	var maskWidth = $(window).width();

	//����ũ�� ���̿� �ʺ� ȭ�� ������ ����� ��ü ȭ���� ä���.
	$("#mask").css({
		"width" : maskWidth,
		"height" : maskHeight
	});

	//�ִϸ��̼� ȿ�� - �ϴ� 0�ʵ��� ��İ� �ƴٰ� 60% �������� ����.

	$("#mask").fadeIn(0);
	$("#mask").fadeTo("slow", 0.6);

	//������ ���� �� ����.
	$(".window").show();

}
function choiceArea2() {

	//ȭ���� ���̿� �ʺ� ���Ѵ�.
	var maskHeight = $(document).height();
	var maskWidth = $(window).width();

	//����ũ�� ���̿� �ʺ� ȭ�� ������ ����� ��ü ȭ���� ä���.
	$("#mask3").css({
		"width" : maskWidth,
		"height" : maskHeight
	});

	//�ִϸ��̼� ȿ�� - �ϴ� 0�ʵ��� ��İ� �ƴٰ� 60% �������� ����.

	$("#mask3").fadeIn(0);
	$("#mask3").fadeTo("slow", 0.6);

	//������ ���� �� ����.
	$(".window3").show();

}

function choicePeople() {

	//ȭ���� ���̿� �ʺ� ���Ѵ�.
	var maskHeight = $(document).height();
	var maskWidth = $(window).width();

	//����ũ�� ���̿� �ʺ� ȭ�� ������ ����� ��ü ȭ���� ä���.
	$("#mask_People").css({
		"width" : maskWidth,
		"height" : maskHeight
	});

	//�ִϸ��̼� ȿ�� - �ϴ� 0�ʵ��� ��İ� �ƴٰ� 60% �������� ����.

	$("#mask_People").fadeIn(0);
	$("#mask_People").fadeTo("slow", 0.6);

	//������ ���� �� ����.
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
		e.preventDefault(); //����
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

	//�ݱ� ��ư�� ������ ��
	$(".window .close").click(function(e) {
		//��ũ �⺻������ �۵����� �ʵ��� �Ѵ�.
		e.preventDefault();
		$("#mask, .window").hide();

	});
	$(".window3 .close").click(function(e) {
		//��ũ �⺻������ �۵����� �ʵ��� �Ѵ�.
		e.preventDefault();

		$("#mask3, .window3").hide();

	});
	$(".window2 .close").click(function(e) {
		//��ũ �⺻������ �۵����� �ʵ��� �Ѵ�.
		e.preventDefault();

		$("#mask_People, .window2").hide();
	});

	//���� ���� ������ ��
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
  		<p>�װ����� �������� �ʽ��ϴ�.</p><br>
  		<h5>�ٸ��װ��ǰ˻� �Ǵ� <a onclick="location.href = '../Q&A/list.jsp'">Q&A �Խ��� </a>�Ǵ� ��ǥ��ȣ�� ��ȭ�ֽø� �����ϰڽ��ϴ�.</h5><br>
  		
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
		<b>AIRPLAN_�װ��� ���</b></h1>   
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
				��
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
				��
				</div>
				</div>
			</div>
			
				<div class="col-12">
				<div class="row">
				<div class="col-md-2 text-center">
				<%=article.getStartTime()%>
				</div>
				
				<div class="col-md-6 text-center">
				��
				</div>
				
				<div class="col-md-2 text-center">
				<%=article.getArrivalTime()%>
				</div>
				
				<div class="col-md-2 text-center">
				Ȯ��
				</div>
				
				</div>
			</div>
		
		<div class="col-12">
		��<hr style="border-top: 2px solid #03A9F4;">
		</div>
		
			<div class="col-12">
				<div class="row">
				
				<div class="col-md-8 text-center">
					<img src="image/tkkk.JPG" style='width: 100%; object-fit: contain'>
				</div>
				
				<div class="col-md-4 text-center">
					<div>
					<br>
					������ ��������ǥ�� Ȯ���ϼ���.<br>
					</div>
					<br>
					<div style="font-size: 20px;">
					<b>�ѿ��(��)</b><br>
					<%=article.getprice()%>
					</div>
					<br>
					<div class="text-right">
					��������,����������,�߱Ǽ�����<br>
					���ݿ� ����<br>
					(��������)<br>
					</div>
				</div>
				
				</div>
			</div>
		</div>
		
		<div class="col-12 text-center">
						<input type="hidden" value="<%=article.getAirPlaneNumber()%>" name="airplanenum">
						<input type="submit" value="����" class="btn btn-primary">
		</div>
</form>
</div>	
<div class="container">
	��<BR>
	��<BR>
	</div>
	
					
			
			<%
					}
				%>						
		<br></br>
	</center>
			
		
		<%}%>

		 		
		<div class="Jnb">
			<br>
	 		 <center>�� Airplan2018_2b02 / ���� : 010-0000-0000 / AirPlan@naver.com / https://blog.naver.com/airplan2018_2b02 <br></center>
	 		 <center>����_����ȣ / �ڴ�_����� / ���ۺ���_�ӿ뼷 / ��ΰ�_������</center>
	 	</div>

</body>
</html>