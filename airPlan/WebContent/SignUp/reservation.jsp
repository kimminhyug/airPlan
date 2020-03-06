<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<%  request.setCharacterEncoding("euc-kr"); %> 



    <%@page import="airPlan.selectTicket.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="test.css" rel="stylesheet" type="text/css">
<style type="text/css">
        .hidden
        {
            display: none;
        }
        .bold
        {
            font-weight: bold;
        }
        .DivCss
        {
            background-color: #FFFFCC; border: thin dotted #000000; padding: 2px; margin: 0px; width: 1500px;
        }
        
        
 .window2{
    display: none;
    position:absolute;  
    margin-left: 200px;
    width:700px;
    height:900px;
    background-color:#FFF;
    z-index:10000;   
    border:1px solid black; 
 }
 #mask {  
    position:absolute;  
    z-index:0;  
    background-color:#fff;  
     
    left:0;
    top:0;
}


 .buywindow{
    display: none;
    position:absolute;  
    left:200px;
    top:1000px;
    width:500px;
    height:800px;
    background-color:#FFF;
    z-index:10000;   
    border:1px solid black; 
 }
 #buymask {  
    position:absolute;  
    z-index:0;  
    background-color:#fff;  
     
    left:0;
    top:0;
}
#cardnumber{
width:70px;
height:50px;	
}
 
    </style>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
    <script type="text/javascript">
	
	
			function clickTrEvent(trObj) {

				
				
				var a;
				a=trObj.id;
			
				


			

						

		
						
				

						
				
			
					
					
				
				
				
				
				
				//홀수 선택 짝수 ㄴㄴ
			
				
		
			//<label for="cb1" style="cursor:hand; color:red; display:none"  >
			//		if(a==server){
			//			alert(a);
			//		}
			//		else{
				//		user.attr('onclick', '');
			//		}
				
					
				
			}
		</script>
		<%
		int test=Integer.parseInt(request.getParameter("airplaneIndex2"));
		int test2=test;
		System.out.println(test2);



		List<selectTicketDataBean> articleList = null;

		
		int ab=2;
		selectTicket dbPro = selectTicket.getInstance();
		
		
		String airplanenum=(String)request.getParameter("airplanenum");
		String whatplane=(String)request.getParameter("num");
		
		 HashMap sitmap=new HashMap();
		 HashMap sitmapReserv=new HashMap();
		 String[] array;
		 String[] arrayResrv;
		 
		 array=new String[100];
		 arrayResrv=new String[100];
	
		 sitmap=dbPro.selectSitData(airplanenum,whatplane);
		 Object[] sitkey=sitmap.keySet(). toArray();
		 for(int j=1;j<=sitkey.length;j++){
				String number=(String)sitmap.get(sitkey[j-1]);
				
				array[j-1]=number;
				
				
			 }
		 
		 sitmapReserv=dbPro.selectSitDataReserv(airplanenum,whatplane);
		 Object[] sitkeyReserv=sitmapReserv.keySet(). toArray();
		 System.out.println("whatplan2e:"+whatplane);
		 for(int j=1;j<=sitkeyReserv.length;j++){
				String number=(String)sitmapReserv.get(sitkey[j-1]);
				
				arrayResrv[j-1]=number;
				
				
			 }
		
		%>
    <script language="javascript" type="text/javascript">
    
    
    function abc(){
    	 var size = document.getElementsByName("sitn").length;
    
    	 
    	
    	 
    	
    	    for(var i = 0; i < size; i++){
    	        if(document.getElementsByName("sitn")[i].checked == true){
    	            var ad=document.getElementsByName("sitn")[i].id;
    	            ad=ad.substr(2);
    	           
    	            document.getElementById("sitnum").value=document.getElementById("sitnum").value+ad+"num";
    	       
    	        }
    	    }


    	






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
    	$(".window2").show();

    }
    
    function buyArea() {

    	//화면의 높이와 너비를 구한다.
    	var maskHeight = $(document).height();
    	var maskWidth = $(window).width();

    	//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
    	$("#buymask").css({
    		"width" : maskWidth,
    		"height" : maskHeight
    	});

    	//애니메이션 효과 - 일단 0초동안 까맣게 됐다가 60% 불투명도로 간다.

    	$("#buymask").fadeIn(0);
    	$("#buymask").fadeTo("slow", 0.6);

    	//윈도우 같은 거 띄운다.
    	$(".buywindow").show();

    }
    
    function valuechange(){
    	document.getElementById("sitnum2").value=document.getElementById("sitnum").value;
		 document.getElementById("whatplane2").value=document.getElementById("whatplane").value;
		 document.getElementById("userid2").value=document.getElementById("userid").value;
		document.getElementById("price2").value=document.getElementById("price").value;
		document.getElementById("AirPlaneNumber2").value=document.getElementById("AirPlaneNumber").value;
		}
    
        $(document).ready(function () {
        	
        	var tmpArr = new Array();

        	<%for(int i=0;i<sitkey.length;i++){
        		
        	%>
        	tmpArr[<%=i%>]='<%=array[i]%>';
        	
        	
        	
         	<%}%>
         	
         	
        	
         	for(var i=0;i<tmpArr.length;i++){ 
        		
        		document.getElementById("cb"+tmpArr[i]).type='checkbox';
        	}	
         	
         	
         	
         	var tmpArrReservation = new Array();

        	<%for(int i=0;i<sitkeyReserv.length;i++){
        		
        	%>
        	tmpArrReservation[<%=i%>]='<%=arrayResrv[i]%>';
        	
        	
        	
         	<%}%>
         	
         	
        	
         	for(var i=0;i<tmpArrReservation.length;i++){ 
        		
        		document.getElementById("cb"+tmpArrReservation[i]).disabled='true';
        		
         	}	
        	
        	
        	
        	
        	
        	
        	
        	
            var toggleStyleSwitcher = function () {
                $('#terms').addClass('bold');
            };
            $('#termpannel').addClass('hidden');
 
            $('#Button1').click(function (event) {
                $('#termpannel').toggleClass('hidden');
            });
 
            $('div:contains("내용 펼치기와 접기")').click(toggleStyleSwitcher);
            
            $(".buywindowbtn").click(function(e) {
        		e.preventDefault(); //중지
        	
        		buyArea();
        	});
           
            
            $(".textwindow").click(function(e) {
        		e.preventDefault(); //중지
        	
        		choiceArea();
        	});
            
            $(".window2 .close").click(function(e) {
    			//링크 기본동작은 작동하지 않도록 한다.
    			e.preventDefault();

    			$("#mask, .window2").hide();
    		});
            $(".window2 .check").click(function(e) {
    			//링크 기본동작은 작동하지 않도록 한다.
    			e.preventDefault();

    			abc();
    		});
            
            $(".buywindow .close").click(function(e) {
    			//링크 기본동작은 작동하지 않도록 한다.
    			e.preventDefault();

    			$("#buymask, .buywindow").hide();
    		});
            
            
            
            
        });
        
        
    </script>
<link href="css/bootstrap.min.css" rel="stylesheet"/> 
    <link rel="stylesheet" type="text/css" href="css/sert.css"/>
    <link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Anton|Do+Hyeon|Nanum+Pen+Script&amp;subset=korean,latin-ext,vietnamese" rel="stylesheet">
<title>Insert title here</title>
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
		<p>Ticketing</p>
</div>
<br><br>
<div>

</div>
<div style="margin-left:200px;">
	<h1 style="font-size: 50px; font-family: 'Nanum Pen Script', cursive; font-family: 'Anton', sans-serif;">Final settlement phase</h1>
	<br>
	
    <br>
	<input type="button" class="textwindow btn btn-primary" value="좌석보기" style="width:400px;">
</div>
	<form name="ticket" method="post" action="takeMoney.jsp"  >
	 <input type="hidden" id="sitnum" name="sitnum" class="form-control" style="width:400px;" readonly>
	<input type="hidden" value="<%= session.getAttribute("UserId") %>" id="userid" name="userid" class="form-control" style="width:400px;" readonly>
	 <div id="mask"></div>
	  <div class="window2">
            <div class="container">
            <h1 style="padding: 2px 32px 0;"><b>좌석 선택</b></h1>
            </div>
            　　　- 정확환 좌석을 선택 해주세요. 다른 좌석을 원하실땐 취소하고 다시 결제 하셔야합니다.<br>
            　　　- 좌석을 정하셨으면 우측 선택하기 버튼을 클릭해주세요<br>
            　　　- 좌석을 선택하셨으면 약관동의후 결제를 진행해주세요 <br>
            <div class="back">
            
            <div class="container text-center">
            <a href="#" class="check"><button class="btn btn-primary">좌석 선택하기</button></a>
            &nbsp&nbsp&nbsp
            <a href="#" class="close" style="opacity: 1; float: none;"><button class="btn btn-danger">닫기</button></a>
        	</div>
            
            <br><br><br><br><br>		
            	
            <center>
              <table id="sittable">
	
	<tr style="height: 70px;">
				<td   id="01" onclick="javascript:clickTrEvent(this)">
				<input type="hidden" name="sitn"  id="cb1">
				<label for="cb1" style="cursor:hand;">　　</label></td> 
			
				<td id="02"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb2">
				<label for="cb2" style="cursor:hand"  >　　　　　　</label></td>
								
				<td id="03"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb3">
				<label for="cb3" style="cursor:hand"  >　</label></td>
								
				<td id="04"  onclick="" >
				<input type="hidden" id="cb4">
				<label for="cb4" style="cursor:hand"  >　</label></td>
								
				<td id="05"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb5">
				<label for="cb5" style="cursor:hand"  >　</label></td>
												
				<td id="06"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb6">
				<label for="cb6" style="cursor:hand"  >　</label></td>
												
				<td id="07"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb7">
				<label for="cb7" style="cursor:hand"  >　　　　　　</label></td>
												
				<td id="08"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb8">
				<label for="cb8" style="cursor:hand"  >　</label></td>
												
				<td id="09"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb9">
				<label for="cb9" style="cursor:hand"  >　　</label></td>
				
				<td id="10"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb10">
				<label for="cb10" style="cursor:hand"  >　</label></td>
				
			</tr>
			
			<tr style="height: 70px;">
				<td  id="11" onclick="javascript:clickTrEvent(this)">
				<input type="hidden" name="sitn"  id="cb11">
				<label for="cb11" style="cursor:hand; color:red;"  ></td> 
				
				<td id="12"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb12">
				<label for="cb12" style="cursor:hand"  ></td>
				
				<td id="13"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb13">
				<label for="cb13" style="cursor:hand"  ></td>
								
				<td id="14"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb14">
				<label for="cb14" style="cursor:hand"  ></td>
								
				<td id="15"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb15">
				<label for="cb15" style="cursor:hand"  ></td>
								
				<td id="16"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb16">
				<label for="cb16" style="cursor:hand"  ></td>
												
				<td id="17"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb17">
				<label for="cb17" style="cursor:hand"  ></td>
												
				<td id="18"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb18">
				<label for="cb18" style="cursor:hand"  ></td>
												
				<td id="19"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb19">
				<label for="cb19" style="cursor:hand"  ></td>
												
				<td id="20"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb20">
				<label for="cb20" style="cursor:hand"  ></td>
			</tr>
			
			
			<tr style="height: 70px;">
				<td  id="21" onclick="javascript:clickTrEvent(this)">
				<input type="hidden" name="sitn"  id="cb21">
				<label for="cb21" style="cursor:hand; color:red;"  ></td> 
				
				<td id="22"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb22">
				<label for="cb22" style="cursor:hand"  ></td>
				
				<td id="23"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb23">
				<label for="cb23" style="cursor:hand"  ></td>
								
				<td id="24"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb24">
				<label for="cb24" style="cursor:hand"  ></td>
								
				<td id="25"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb25">
				<label for="cb25" style="cursor:hand"  ></td>
								
				<td id="26"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb26">
				<label for="cb26" style="cursor:hand"  ></td>
												
				<td id="27"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb27">
				<label for="cb27" style="cursor:hand"  ></td>
												
				<td id="28"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb28">
				<label for="cb28" style="cursor:hand"  ></td>
												
				<td id="29"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb29">
				<label for="cb29" style="cursor:hand"  ></td>
												
				<td id="30"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb30">
				<label for="cb30" style="cursor:hand"  ></td>
			</tr>
			
			<tr style="height: 120px;">
				<td   id="31" onclick="javascript:clickTrEvent(this)">
				<input type="hidden" name="sitn"  id="cb31">
				<label for="cb31" style="cursor:hand; color:red;"  ></td> 
				
				<td id="32"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb32">
				<label for="cb32" style="cursor:hand"  ></td>
				
				<td id="33"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb33">
				<label for="cb33" style="cursor:hand"  ></td>
								
				<td id="34"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb34">
				<label for="cb34" style="cursor:hand"  ></td>
								
				<td id="35"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb35">
				<label for="cb35" style="cursor:hand"  ></td>
								
				<td id="36"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb36">
				<label for="cb36" style="cursor:hand"  ></td>
												
				<td id="37"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb37">
				<label for="cb37" style="cursor:hand"  ></label></td>
												
				<td id="38"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb38">
				<label for="cb38" style="cursor:hand"  ></td>
												
				<td id="39"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb39">
				<label for="cb39" style="cursor:hand"  ></td>
												
				<td id="40"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb40">
				<label for="cb40" style="cursor:hand"  ></td>
			</tr>
			
			<tr style="height: 40px;">
				<td  id="41" onclick="javascript:clickTrEvent(this)">
				<input type="hidden" name="sitn"  id="cb41">
				<label for="cb41" style="cursor:hand; color:red;"  ></td> 
				
				<td id="42"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb42">
				<label for="cb42" style="cursor:hand"  ></td>
				
				<td id="43"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb43">
				<label for="cb43" style="cursor:hand"  ></td>
								
				<td id="44"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb44">
				<label for="cb44" style="cursor:hand"  ></td>
								
				<td id="45"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb45">
				<label for="cb45" style="cursor:hand"  ></td>
								
				<td id="46"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb46">
				<label for="cb46" style="cursor:hand"  ></td>
												
				<td id="47"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb47">
				<label for="cb47" style="cursor:hand"  ></td>
												
				<td id="48"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb48">
				<label for="cb48" style="cursor:hand"  ></td>
												
				<td id="49"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb49">
				<label for="cb49" style="cursor:hand"  ></td>
												
				<td id="50"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb50">
				<label for="cb50" style="cursor:hand"  ></td>
			</tr>
			
			<tr style="height: 40px;">
				<td   id="51" onclick="javascript:clickTrEvent(this)">
				<input type="hidden" name="sitn"  id="cb51">
				<label for="cb51" style="cursor:hand; color:red;"  ></td> 
				
				<td id="52"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb52">
				<label for="cb52" style="cursor:hand"  ></td>
				
				<td id="53"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb53">
				<label for="cb53" style="cursor:hand"  ></td>
								
				<td id="54"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb54">
				<label for="cb54" style="cursor:hand"  ></td>
								
				<td id="55"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb55">
				<label for="cb55" style="cursor:hand"  ></td>
								
				<td id="56"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb56">
				<label for="cb56" style="cursor:hand"  ></td>
												
				<td id="57"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb57">
				<label for="cb57" style="cursor:hand"  ></td>
												
				<td id="58"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb58">
				<label for="cb58" style="cursor:hand"  ></td>
												
				<td id="59"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb59">
				<label for="cb59" style="cursor:hand"  ></td>
												
				<td id="60"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb60">
				<label for="cb60" style="cursor:hand"  ></td>
			</tr>
			
			<tr style="height: 40px;">
				<td   id="61" onclick="javascript:clickTrEvent(this)">
				<input type="hidden" name="sitn"  id="cb61">
				<label for="cb61" style="cursor:hand; color:red;"  ></td> 
				
				<td id="62"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb62">
				<label for="cb62" style="cursor:hand"  ></td>
				
				<td id="63"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb63">
				<label for="cb63" style="cursor:hand"  ></td>
								
				<td id="64"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb64">
				<label for="cb64" style="cursor:hand"  ></td>
								
				<td id="65"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb65">
				<label for="cb65" style="cursor:hand"  ></td>
								
				<td id="66"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb66">
				<label for="cb66" style="cursor:hand"  ></td>
												
				<td id="67"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb67">
				<label for="cb67" style="cursor:hand"  ></td>
												
				<td id="68"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb68">
				<label for="cb68" style="cursor:hand"  ></td>
												
				<td id="69"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb69">
				<label for="cb69" style="cursor:hand"  ></td>
												
				<td id="70"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb70">
				<label for="cb70" style="cursor:hand"  ></td>
			</tr>
	
			<tr style="height: 40px;">
				<td   id="71" onclick="javascript:clickTrEvent(this)">
				<input type="hidden" name="sitn"  id="cb71">
				<label for="cb71" style="cursor:hand; color:red;"  ></td> 
				
				<td id="72"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb72">
				<label for="cb72" style="cursor:hand"  ></td>
				
				<td id="73"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb73">
				<label for="cb73" style="cursor:hand"  ></td>
								
				<td id="74"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb74">
				<label for="cb74" style="cursor:hand"  ></td>
								
				<td id="75"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb75">
				<label for="cb75" style="cursor:hand"  ></td>
								
				<td id="76"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb76">
				<label for="cb76" style="cursor:hand"  ></td>
												
				<td id="77"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb77">
				<label for="cb77" style="cursor:hand"  ></td>
												
				<td id="78"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb78">
				<label for="cb78" style="cursor:hand"  ></td>
												
				<td id="79"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb79">
				<label for="cb79" style="cursor:hand"  ></td>
												
				<td id="80"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb80">
				<label for="cb80" style="cursor:hand"  ></td>
			</tr>
			
			<tr style="height: 40px;">
				<td   id="81" onclick="javascript:clickTrEvent(this)">
				<input type="hidden" name="sitn"  id="cb81">
				<label for="cb81" style="cursor:hand; color:red;"  ></td> 
				
				<td id="82"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb82">
				<label for="cb82" style="cursor:hand"  ></td>
				
				<td id="83"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb83">
				<label for="cb83" style="cursor:hand"  ></td>
								
				<td id="84"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb84">
				<label for="cb84" style="cursor:hand"  ></td>
								
				<td id="85"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb85">
				<label for="cb85" style="cursor:hand"  ></td>
								
				<td id="86"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb86">
				<label for="cb86" style="cursor:hand"  ></td>
												
				<td id="87"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb87">
				<label for="cb87" style="cursor:hand"  ></td>
												
				<td id="88"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb88">
				<label for="cb88" style="cursor:hand"  ></td>
												
				<td id="89"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb89">
				<label for="cb89" style="cursor:hand"  ></td>
												
				<td id="90"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb90">
				<label for="cb90" style="cursor:hand"  ></td>
			</tr>
			
			<tr style="height: 40px;">
				<td  id="91" onclick="javascript:clickTrEvent(this)">
				<input type="hidden" name="sitn"  id="cb91">
				<label for="cb91" style="cursor:hand; color:red;"  ></td> 
				
				<td id="92"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb92">
				<label for="cb92" style="cursor:hand"  ></td>
				
				<td id="93"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb93">
				<label for="cb93" style="cursor:hand"  ></td>
								
				<td id="94"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb94">
				<label for="cb94" style="cursor:hand"  ></td>
								
				<td id="95"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb95">
				<label for="cb95" style="cursor:hand"  ></td>
								
				<td id="96"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb96">
				<label for="cb96" style="cursor:hand"  ></td>
												
				<td id="97"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb97">
				<label for="cb97" style="cursor:hand"  ></td>
												
				<td id="98"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb98">
				<label for="cb98" style="cursor:hand"  ></td>
												
				<td id="99"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb99">
				<label for="cb99" style="cursor:hand"  ></td>
												
				<td id="100"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb100">
				<label for="cb100" style="cursor:hand"  ></td>
			</tr>
		</table>
		</center>
		</div>
</div>
	
<br><br>
<%

%>
<div style="margin-left:200px;">
<h1 style="font-size: 25px; font-family: 'Nanum Pen Script', cursive; font-family: 'Anton', sans-serif;">
		<b><%= session.getAttribute("UserId") %>님께선_선택한 항공권</b></h1> 
</div>
<%
articleList=dbPro.selectTicketInfo2(test2);
					for (int k = 0; k < articleList.size(); k++) {
							selectTicketDataBean article = articleList.get(k);
				%>
<div style="margin-left:200px;">			
				<div class="tik" style="width:800px; height:440px; border: 1pt groove #c8c8c8; font-family: 'Do Hyeon', sans-serif;">
			
						
						<input type="hidden" value="<%=article.getnum() %>" name="num">
						<input type="hidden" name="airplaneIndex" value="<%=article.getnum() %>">
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
					<%=article.getCount() %> / <%=article.getTotalNumber() %>
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
					　
		</div>

<input type="hidden"  value="<%=article.getnum() %>" id="whatplane" name="whatplane">
<input type="hidden" value="<%=article.getAirPlaneNumber()%>" id="AirPlaneNumber" name="AirPlaneNumber">
<input type="hidden" value="<%=article.getprice() %>" id="price" name="price">
</div>
			
</div>		
			
			<%
					}
				%>		
	<br>
	<div style="margin-left:200px;">
    <label>결제약관</label><br>
    <input type=button  id="Button1" value='결제약관 보기' align="bottom" class="btn btn-warning" style="width:400px;"></div>
    
    <div id="termpannel"  class="DivCss">이용약관
   <pre>
제1조(목적)
이 약관은 ㈜AirPlan(이하 "AirPlan"이라 합니다)이 운영하는 AirPlan 인터넷 웹사이트 이하 
"www.jejuair.net"이라 합니다)에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 합니다)를 이용함에 있어 AirPlan과 이용자의 권리.의무 및 책임사항을 규정함을 목적으로 합니다.,

제2조(정의)
① "www.jejuair.net"이란 AirPlan이 컴퓨터 등 정보통신설비와 정보통신망을 이용하여 정보 및 서비스를 이용자에게 제공하고 재화 또는 용역을 거래할 수 있도록 설정한 가상의 영업장을 말합니다.
② "이용자"란 www.jejuair.net에 접속하여 이 약관에 따라 AirPlan이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
③ "회원"이라 함은 www.jejuair.net에 개인정보를 제공하여 회원등록을 한 자로서,
 AirPlan이 www.jejuair.net을 통하여 지속적으로 제공하는 정보 및 서비스를 계속적으로 이용할 수 있는 자를 말합니다.
④ "비회원"이라 함은 회원으로 가입하지 않고 AirPlan이 제공하는 정보 및 서비스를 이용하는 자를 말합니다.

제3조 (약관의 명시와 개정)
① AirPlan은 이 약관의 내용과 상호, 연락처(전자우편주소, 전화번호, 팩스번호 등) 등을 이용자가 알 수 있도록 www.jejuair.net의 초기 서비스화면(전면)에 게시합니다.
② AirPlan은 약관의 규제 등에 관한 법률, 전자거래기본법, 전자서명법, 
정보통신망 이용촉진 및 정보보호등에 관한 법률, 방문판매등에 관한 법률, 소비자보호법 등 관련법령을 위반하지 않는 범위에서 이 약관을 개정할 수 있습니다.
③ 약관을 개정할 경우에는 개정사유 및 적용일자를 명시하여 현행약관과 함께 www.jejuair.net의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다.
④ 개정약관은 그 적용일자 전에 체결된 계약에 대해서도 적용됩니다. 다만 개정약관의 적용을 거절하는 뜻을 AirPlan에 명시적으로 통지한 이용자에 대해서는 개정전의 약관조항이 적용됩니다.
⑤ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자거래소비자보호지침, 관계법령 또는 상관례에 따릅니다.

제4조(www.jejuair.net의 업무사항)
AirPlan이 www.jejuair.net을 통하여 수행하는 업무는 아래와 같습니다.
1. 항공권, 여행 등 관련 정보.서비스 제공
2. 항공권 구매계약 등 계약의 체결
3. 기타 AirPlan이 정하는 업무

제5조(서비스의 중단)
① AirPlan은 컴퓨터 등 정보통신설비의 점검.보수.교체 등의 경우에 www.jejuair.net의 서비스 제공을 일시적으로 중단할 수 있습니다.
② 제1항에 의한 서비스 중단의 경우 AirPlan은 본 약관 제8조에서 정한 방법으로 이용자에게 통지합니다.
③ AirPlan은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해를 배상합니다. 다만 AirPlan에 고의 또는 중대한 과실이 없는 경우에는 그러하지 아니합니다.

제6조(회원가입)
① 이용자는 www.jejuair.net에 정해진 가입양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 하는 방법으로 회원가입을 신청합니다.
② AirPlan은 이용자가 다음 각호의 1에 해당하지 않는 한 회원가입신청을 승낙합니다. 
1. 가입신청자가 이 약관 제7조 제4항에 의하여 회원자격을 상실 한 경우. 다만 회원자격 상실 후 3년이 경과한 자로서 AirPlan의 회원 재가입 승낙을 얻은 경우는 예외로 합니다.
2. 등록 내용에 허위, 기재누락, 오기가 있는 경우
3. 기타 회원으로 등록하는 것이 기술적으로 현저히 지장이 있다고 판단되는 경우
③ 회원가입계약의 성립시기는 AirPlan의 승낙이 회원에게 도달한 시점으로 합니다.
④ 회원은 제13조 제1항에 열거된 등록사항에 변경이 있는 경우, 즉시 전자우편 기타 이에 준하는 방법으로 www.jejuair.net에 그 변경사항을 알려야 합니다.

제7조(회원탈퇴 및 자격상실 등)
① 회원은 www.jejuair.net에 언제든지 탈퇴신청을 할 수 있으며, 이 경우 AirPlan은 즉시 회원탈퇴를 처리합니다.
② 회원이 다음 각호의 1에 해당하는 경우 AirPlan은 서비스이용을 제한 또는 정지시킬 수 있습니다. 
1. 가입 신청 시 허위 내용을 기재하거나 2 이상의 I.D.로 이중등록한 경우
2. www.jejuair.net에서 구매한 항공권 등의 대금지급채무 기타 www.jejuair.net 이용과 관련 회원이 부담하는 채무를 불이행하는 경우
3. 타인의 www.jejuair.net 이용을 방해하거나 타인의 개인정보를 도용하는 등 전자거래질서를 침해.위협하는 경우
4. www.jejuair.net을 이용하여 이 약관이 금지하는 행위 또는 법령, 공서양속 등에 반하는 행위를 하는 경우
③ AirPlan이 서비스 이용을 제한.정지하고자 할 때에는 미리 그 사유, 일시, 기간을 전자우편, 전화, 서면 등으로 당해 이용자에게 통지합니다. 다만 긴급을 요할 경우에는 조치 후에 통지할 수 있습니다.
④ AirPlan이 서비스이용을 제한.정지시킨 후 그 제재사유가 된 행위가 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 AirPlan은 회원자격을 박탈할 수 있습니다.
⑤ AirPlan이 회원자격을 박탈하는 경우에는 회원등록을 말소하며, 이 경우 말소 전에 회원에게 이를 통지합니다.
⑥ 서비스이용의 제한.정지, 회원자격의 박탈로 인한 손해에 대해서 AirPlan은 책임을 지지 않습니다.

제8조(회원에 대한 통지)
① AirPlan이 회원에 대한 통지를 하는 경우 회원이 제출한 전자우편주소로 할 수 있습니다.
② AirPlan은 불특정 다수의 회원에게 통지하는 경우, 1주일 이상 www.jejuair.net에 공시함으로써 개별통지에 갈음할 수 있습니다.

제9조(구매신청)
이용자는 www.jejuair.net에서 아래 방법에 의하여 구매신청을 할 수 있습니다.
1. 성명, 주소, 전화번호 입력
2. 재화 또는 용역의 선택
3. 결제방법의 선택
4. 이 약관에 동의한다는 표시(예: 마우스 클릭)

제10조 (계약의 성립)
① AirPlan은 제 9조에 정한 방법에 의한 구매신청에 대하여 다음 각 호의 1에 해당하지 않는 한 승낙합니다. 
1. 신청 내용에 허위, 기재누락, 오기가 있는 경우
2. 구매신청에 대한 승낙이 영업상 또는 기술상 현저히 지장이 있다고 판단되는 경우
② AirPlan의 승낙이 제 12조 제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.

제11조(결제방법)
www.jejuair.net에서 구매한 재화.용역에 대한 대금결제는 아래의 방법으로 할 수 있습니다.
1. 신용카드결제
2. 실시간 계좌이체

제12조(수신확인통지.구매신청 변경 및 취소)
① AirPlan은 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.
② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있습니다.

제13조(개인정보보호)
① "회사"는 "정보통신망법" 등 관계 법령이 정하는 바에 따라 "회원"의 개인정보를 보호하기 위해 노력합니다. 
개인정보의 보호 및 사용에 대해서는 관련법 및 "회사"의 개인정보처리방침이 적용됩니다. 다만, "회사"의 공식 사이트 이외의 링크된 사이트에서는 "회사"의 개인정보처리방침이 적용되지 않습니다.

제14조(AirPlan의 의무)
① AirPlan은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고 안정적인 서비스 제공 및 재화.용역의 공급에 노력합니다.
② AirPlan은 이용자가 안전하게 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추겠습니다.
③ AirPlan이 상품이나 용역에 관하여 「표시.광고의공정화에관한법률」 제 3조 소정의 부당한 표시.광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.
④ AirPlan은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.

제15조(회원의 I.D. 및 비밀번호에 대한 의무)
① 제 13조의 경우를 제외한 I.D.와 비밀번호에 대한 관리책임은 회원에게 있습니다.
② 회원은 제 3자에게 자신의 I.D. 및 비밀번호를 이용하게 해서는 안됩니다.
③ 회원이 자신의 I.D. 및 비밀번호를 도용 당하거나 제 3자가 사용하고 있음을 인지한 경우에는 즉시 AirPlan에 통보하여 그 안내에 따라야 합니다.

제16조(이용자의 의무)
이용자는 이 약관 및 관계법령을 준수하여야 하며, 다음의 행위를 해서는 안됩니다.
1. 신청 또는 변경 시 허위내용의 기재
2. www.jejuair.net에 게시된 정보의 임의변경
3. AirPlan이 허용하고 있지 않은 정보나 컴퓨터 프로그램 등을 무단으로 송신 또는 게시하는 행위
4. AirPlan 기타 제 3자의 저작권 등 지적재산권 침해
5. AirPlan 기타 제 3자의 프라이버시를 침해하거나 업무를 방해하는 행위
6. 외설적 또는 폭력적 메시지.화상.음성 기타 공서양속에 반하는 정보를 송신 또는 게시하는 행위

제17조(www.jejuair.net과 하위 웹사이트 간의 관계)
www.jejuair.net이 하위 웹사이트와 하이퍼 링크(하이퍼 링크의 대상에는 문자, 그림 및 동화상 등이 포함)방식 등으로 연결된 경우, 
AirPlan은 하위 웹사이트가 이용자와 독자적으로 체결한 재화.용역 공급계약 등 거래에 관하여 보증책임을 지지 않습니다.

제18조(저작권의 귀속 및 이용제한)
① AirPlan이 작성한 저작물에 대한 저작권 기타 지적재산권은 AirPlan에 귀속합니다.
② 이용자는 www.jejuair.net을 이용함으로써 얻은 정보를 AirPlan의 사전 승낙없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제 3자로 하여금 이용하게 해서는 안됩니다.

제19조(분쟁해결)
① AirPlan은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치.운영합니다.
② AirPlan은 이용자가 제기하는 불만사항 및 의견을 신속.적정하게 처리합니다. 다만 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 지체 없이 통보해 드립니다.
③ AirPlan과 이용자간에 분쟁 발생시 전자거래기본법 제 28조 및 동 시행령 제 15조에 근거하여 설치된 전자거래분쟁조정위원회의 조정에 따를 수 있습니다.

제20조(관할법원 및 준거법)
① AirPlan과 이용자간에 발생한 전자거래 분쟁에 관한 소는 서울지방법원에 제기합니다.
② AirPlan과 이용자간에 제기된 전자거래 소송에는 한국법을 적용합니다.

AirPlan JJ Club기본 규정(약관)

제 1 조
㈜AirPlan의 JJ Club회원이라 함은, ㈜AirPlan이 제시하는 본 약관을 승인하고 ㈜AirPlan 홈페이지 (http://jejuair.net)에서 
회원으로 가입하거나 소정의 가입신청서를 작성 한 후 ㈜AirPlan에 제출하여 회원가입을 완료하신 분을 말합니다. 실물회원카드는 발급되지 않으며 회원가입 시 등록해주신 E-mail 과 휴대전화로 회원번호와 이미지카드를 받아 보실 수 있습니다.
 (휴대전화 핸드폰으로의 회원번호 전송은 한국지역에서 수신 가능한 휴대전화 번호에만 해당됩니다.)

제 2 조
회원의 주소, 이메일 주소(e-mail address) 및 전화번호 등 개인정보의 변경이 있을 때에는 ㈜AirPlan으로 즉시 알려야 하며, 
개인정보 변경 사실을 알리는 것을 게을리 함으로써 ㈜AirPlan으로부터의 통지 또는 송부서류 등이 연착하거나 도착하지 않음으로 인하여 가입하신 회원에게 발생한 손해에 대해서는 ㈜AirPlan은 책임을 지지 않습니다.

제 3 조
회원자격 및 혜택은 JJ Club 회원가입일로부터 회원 본인에게만 제공되며, 중복가입 할 수 없으며 제 3자에게 양도될 수 없습니다. 
또한 회원카드번호의 분실, 도난, 노출로 인한 피해는 AirPlan이 책임을 지지 않습니다.

제 4 조
JJ Club 에 가입하신 후 회원께서 탑승하신 내역에 대한 포인트만 적립이 됩니다.

제 5 조
㈜AirPlan 회원제 포인트는 대표자 회원 본인 포함하여 최대 5인까지 직계 가족(본인, 배우자, 자녀, 친부모, 배우자부모 한정)에 대해서만 가족회원제 등록가능하며, 
가족 구성원 변경은 최대 1회에 한해 적용되고 새구성원에 대한 가족증빙서류를 제출하셔야 합니다. 적립된 포인트를 등록된 직계가족을 제외하고 타인에게 제공/양도할 수 없으며, 금전적으로 환산되거나 타인에게 판매할 수 없습니다. 
상기 사항이 적발될 경우 적립된 모든 포인트와 미사용 보너스가 말소되며 회원 자격도 취소될 수 있습니다.

제 6 조
포인트 적립은 지불운임에 비례하여 해당 항공편 탑승을 완료하신 회원에게만 적립됩니다.
 즉, 천재지변, 기상조건, 불가항력, 파업, 폭동, 소요, 출입국 금지, 동란, 전쟁, 기재 고장 등의 사유로 항공편 탑승이 완료되지 않은 경우도 포인트는 적립되지 않습니다.

제 7 조
AirPlan은 회원 구좌를 검색하여 회원의 제반 실적이 잘못된 경우에는 이를 임의로 정정할 수 있으며, 부당한 방법에 의해 적립된 실적은 인정되지 않습니다.

제 8 조
보너스 항공권의 사용은 여유좌석 이용이 원칙이기 때문에 보너스 좌석 수와 사용은 제한될 수 있습니다.

제 9 조
AirPlan의 정책 변경이나 사정에 따라 포인트 적립 및 사용기준은 달라질 수 있으며, 회원으로 등록된 국가 및 주소지에 따라 혜택과 적용 규정이 다를 수 있습니다.

제 10 조
회원제 제휴사 프로그램은 제휴사 사정에 따라 사전 통보 없이 변경되거나 중단될 수 있습니다.

제 11 조
AirPlan 이용실적 또는 보너스와 관련된 제반 이의는 해당 항공편 탑승일 또는 보너스 발행일로부터 1년 이내에 제기하셔야 합니다.

제 12 조
적립된 포인트와 발행된 보너스 항공권 쿠폰 및 티켓은 일정기간의 유효기간을 가지며 기간 내 사용하지 않으시면 자동 소멸됩니다.

제 13 조
JJ Club 회원 혹은 대리인이 각종 증빙서류 위.변조, 서류의 허위기재, 회원 규정위반 혹은 악용 시에는 회원자격 박탈, 회원계좌 폐쇄, 
적립 포인트 삭제 혹은 발급된 보너스를 취소시킬 수 있으며, 해당 회원 및 대리인에 대해 (재)가입을 불허할 수 있습니다. 또한 부당한 방법에 의해 보너스를 발급, 
사용한 경우 AirPlan은 유상 운임에 상응하는 현금 배상 청구 및 필요한 법적 조치를 취할 수 있습니다.

제 14 조
회원 개인의 신상에 변동이 생기더라도 누적된 포인트는 제 3자에게 양도되지 않으며 사망한 회원의 누적 포인트는 상속될 수 없으며 소멸됩니다.

제 15 조
본 회원제와 관련한 제반 규정은, 관련 법령의 개정 및 폐지된 경우, 국가 신인도의 급격한 하락, 
국가 경제의 심각한 악화 또는 이에 준하는 경제상황의 중대한 변동으로 인하여 불가피한 경우, 업무제휴 항공사의 규정과 균형, 격차해소를 위해 불가피한 경우, 
운임의 변동 등으로 인한 보너스 수요의 노선 별 편중 현상이 심각하여 이를 수정하기 위해 필요한 경우, 예상치 못한 항공 수요의 급격한 변화, 
기타 항공산업의 중대한 위기를 초래할 우려가 있는 불가항력적인 사정이 지속되는 경우 등 상당한 이유가 있는 경우 ㈜AirPlan이 해당 회원에게 3개월 전에 이메일(e-mail)
 또는 휴대전화의 문자메시지 등의 방법으로 사전 고지한 후 변경될 수 있습니다. 
 다만, 규정변경 발효일 이전까지 회원님께서 취득한 포인트의 경우에는 포인트 공제로 지급되는 보너스에 대하여 규정변경 발효일로부터 6개월까지는 변경전의 제도가 적용되고 그 이후에는 변경된 제도가 적용됩니다.

제 16 조
㈜AirPlan은 일정 기간 포인트 누적기록이 없는 회원에 대하여 ㈜AirPlan의 프로모션 홍보물, 누적포인트, 현황, 뉴스레터 등을 발송하지 않을 수도 있습니다.
 또한 동일내용의 우편물을 회원의 정보내용, 지리적 위치 등에 따라 선별적으로 제공할 수 있습니다.

제 17 조
본 약관과 관련하여 가장 최근에 발행된 회원안내서 또는 ㈜AirPlan 홈페이지에 등재된 내용이 이전의 모든 규정과 조건보다 우선합니다.

PC 버전
여객운송약관
이용약관
개인정보처리방침
Copyright ⓒ JEJUair Inc. All rights reserved.</pre>
 </div>
<br>


<div style="margin-left:200px;">
<label>카드 결제하기</label><br>
<input type="button" class="buywindowbtn btn btn-success" value="결제" style="width:400px;"><br>
<h5 style="color: #a8a8a8; "><b>* 카드결제만 가능합니다</b></h5></div>

<br><br><br><br><br>
			
			
				
			<div id="buymask"></div>
            <div class="buywindow">
           
          <div class="fom">
	<div class="fom2">

<br>
<div class="logo2">
<img src="image/logo.png">
</div>
<h2><b> 　카드결제</b></h2>

<br>
<div class="container-fluid padding">
    <label for="exampleFormControlTextarea1">약관동의</label>
    <div class="row text-center padding">
    <div class="col-md-12">
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="4">
전자금융거래 기본약관(이용자용)

제1조 (목적) 

이 약관은 전자지급결제대행서비스 및 결제대금예치서비스를 제공하는 주식회사 LG유플러스(이하 '회사'라 합니다)과 이용자 사이의전자금융거래에 관한 기본적인 사항을 정함으로써 전자금융거래의 안정성과 신뢰성을 확보함에 그 목적이 있습니다.

제2조 (용어의 정의)

이 약관에서 정하는 용어의 정의는 다음과 같습니다. 
① 전자금융거래'라 함은 회사가 전자적 장치를 통하여 전자지급결제대행서비스 및결제대금예치서비스(이하 '전자금융거래 서비스'라고 합니다)를 제공하고, 이용자가 회사의 구성원과 직접대면하거나 의사소통을 하지 아니하고 전산화된 방식으로 이를 이용하는 거래를 말합니다. 
② '전자지급결제대행 서비스'라 함은 전자적 방법으로 재화의 구입 또는 용역의 이용에 있어서 지급결제정보를 송신하거나수신하는 것 또는 그 대가의 정산을 대행하거나 매개하는 서비스를 말합니다. 
③ ‘결제대금예치서비스'라 함은 이용자가 재화의 구입 또는 용역의 이용에 있어서 그 대가(이하 '결제대금'이라 한다)의 전부또는 일부를 재화 또는 용역(이하 '재화 등'이라 합니다)을 공급받기 전에 미리 지급하는 경우, 회사가 이용자의 물품수령 또는 서비스이용 확인 시점까지 결제대금을 예치하는 서비스를 말합니다. 
④ '이용자'라 함은 이 약관에 동의하고 회사가 제공하는 전자지급결제대행 서비스를 이용하는 자를 말합니다.
⑤ '접근매체'라 함은 전자금융거래에 있어서 거래지시를 하거나 이용자 및 거래내용의 진실성과 정확성을 확보하기 위하여 사용되는수단 또는 정보로서 전자식 카드 및 이에 준하는 전자적 정보(신용카드번호를 포함한다), '전자서명법'상의 인증서, 금융기관 또는전자금융업자에 등록된 이용자번호, 이용자의 생체정보, 이상의 수단이나 정보를 사용하는데 필요한 비밀번호 등 전자금융거래법 제2조제10호에서 정하고 있는 것을 말합니다.
⑥ '거래지시'라 함은 이용자가 전자금융거래계약에 따라 금융기관 또는 전자금융업자에게 전자금융거래의 처리를 지시하는 것을말합니다.
⑦ '오류'라 함은 이용자의 고의 또는 과실 없이 전자금융거래가 전자금융거래계약 또는 이용자의 거래지시에 따라 이행되지 아니한경우를 말합니다.

제3조 (약관의 명시 및 변경)
① 회사는 이용자가 전자지급결제대행 서비스를 이용하기 전에 이 약관을 게시하고 이용자가 이 약관의 중요한 내용을 확인할 수있도록 합니다.
② 회사는 이용자의 요청이 있는 경우 서면제공 방식 또는 전자문서의 전송방식에 의하여 본 약관의 사본을 이용자에게교부합니다.
③ 회사가 약관을 변경하는 때에는 그 시행일 1월 전에 변경되는 약관을 지급결제정보 입력화면 및 회사의 홈페이지에 게시함으로써이용자에게 공지합니다.

제4조 (전자지급결제대행서비스의 종류)

회사가 제공하는 전자지급결제대행서비스는 지급결제수단에 따라 다음과 같이 구별됩니다. 
① 신용카드결제대행서비스: 이용자가 결제대금의 지급을 위하여 제공한 지급결제수단이 신용카드인 경우로서, 회사가 전자결제시스템을통한 신용카드 지불정보의 송,수신 및 결제대금의 정산을 대행하거나 매개하는 서비스를 말합니다. 
② 계좌이체대행서비스: 이용자가 결제대금을 회사의 전자결제시스템을 통하여 금융기관에 등록한 자신의 계좌에서 출금하여 원하는계좌로 이체할 수 있는 실시간 송금 서비스를 말합니다. 
③ 가상계좌서비스: 이용자가 결제대금을 현금으로 결제하고자 경우 회사의 전자결제시스템을 통하여 자동으로 이용자만의 고유한 일회용계좌의 발급을 통하여 결제대금의 지급이 이루어지는 서비스를 말합니다. 
④ 기타: 회사가 제공하는 서비스로서 지급결제수단의 종류에 따라 '휴대폰 결제대행서비스','KT전화(ARS,폰빌)결제대행서비스', '상품권결제대행서비스'등이 있습니다.
    
  </textarea>
  </div>
  </div>
</div>

<br>
<div class="form-group text-right">
		<div>
			<label>
				<input type="checkbox" name="event"> 　동의합니다　
	  		</label>
		</div>
	</div>


<div class="container-fluid padding">
    <label for="exampleFormControlTextarea1">약관동의</label>
    <div class="row text-center padding">
    <div class="col-md-12">
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="4">
개인정보 수집 및 이용 동의
LG유플러스(이하 ‘회사’라 함)는 전자금융거래법 및 동법 시행령 상의 제반 사항, 전자상거래 등에서의 소비자보호에 관한 법률 및 전자상거래 등에서의 소비자보호 지침, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 법률 제22조(개인정보의 수집 이용 동의 등) 및 개인정보보호법 제15조(개인정보의 수집 이용)에 의해 통신과금/전자금융서비스 이용자(이하 “이용자”라 합니다)로부터 아래와 같이 개인정보를 수집 및 이용합니다.
1. 수집하는 개인정보의 항목 가. 회사는 회원가입, 상담, 서비스 신청 등을 위해 아래와 같은 개인정보를 수집하고있습니다.
- 이름, 생년월일, 전화번호, 휴대폰번호, 이메일, 사용자 IP Address, 쿠키, 서비스 이용기록, 결제기록, 결제정보, 정산계좌정보, 주소 등
나. “결제정보”라 함은 ”이용자”가 고객사의 상품 및 서비스를 구매하기 위하여 “회사”가 제공하는 ‘서비스’를 통해 제시한 각 결제수단 별 제반 정보를 의미하며 신용카드 번호, 신용카드 유효기간, 성명, 계좌번호, 주민등록번호, 휴대폰번호, 유선전화번호, 상품권번호 등을말합니다.
다. 회사는 서비스 이용과 관련한 대금결제, 물품배송 및 환불 등에 필요한 정보를 추가로수집할 수 있습니다.

2. 개인정보의 수집 및 이용 목적 가. 회사는 다음과 같은 목적 하에 “결제서비스”와 관련한 개인정보를 수집합니다.
- 사고 및 리스크 관리, 통계 활용, 결제결과 통보
- 신용카드, 계좌이체, 가상계좌, 휴대폰결제, 유선전화결제 등 결제서비스 제공, 결제결과 조회 및 통보
나. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산
- 서비스 가입, 변경 및 해지, 요금정산, A/S 등 서비스 관련 문의 등을 포함한이용계약관련 사항의 처리
- 청구서 등의 발송, 금융거래 본인 인증 및 금융서비스, 요금추심 등
다. 회사가 제공하는 서비스의 이용에 따르는 본인확인, 이용자간 거래의 원활한 진행, 본인의사의 확인, 불만처리, 새로운 정보와 고지사항의 안내, 상품 배송을 위한 배송지 확인, 대금결제서비스의 제공 및 환불입금 정보 등 서비스 제공을 원할하게 하기 위해 필요한 최소한의 정보제공만을 받고 있습니다.

3. 개인정보의 보유 및 이용기간
이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다. 가. 회사 내부 방침에 의한 정보 보유 사유
- 본 전자결제서비스 계약상의 권리, 의무의 이행
나. 관련법령에 의한 정보보유 사유
상법, 전자상거래 등에서의 소비자보호에 관한 법률 등관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령에서 정한 일정한 기간 동안 회원정보를보관합니다. 이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다
* 계약 또는 청약철회 등에 관한 기록
- 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률
- 보존 기간 : 5 년
* 대금결제 및 재화 등의 공급에 관한 기록
- 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률
- 보존 기간 : 5 년
* 소비자의 불만 또는 분쟁처리에 관한 기록
- 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률
- 보존 기간 : 3 년
* 본인확인에 관한 기록
- 보존 이유 : 정보통신 이용촉진 및 정보보호 등에 관한 법률
- 보존 기간 : 6 개월
 
    </textarea>
    </div>
    </div>
</div>

<br>
<div class="form-group text-right">
		<div>
			<label>
				<input type="checkbox" name="event"> 　동의합니다　
	  		</label>
		</div>
</div>


       <div class="container-fluid padding">
       <label>카드선택</label> 
  			<div class="row text-center padding">
  			<div class="col-md-4">
  					 <select name="card"  class="form-control" style="color:#000;">
					  <option value="신한카드">신한카드</option>
					  <option value="국민카드">국민카드</option>
					  <option value="씨티카드">씨티카드</option>
					  <option value="NH카드">NH카드</option>
					  <option value="우리카드">우리카드</option>
					</select>
			</div>
		
			<div class="col-md-7"></div>
		
		</div>
	</div>
		<br>
		
		<div class="container-fluid padding">
		<label>카드번호</label>
			<div class="row text-center padding">
			<div class="col-md-3">
			<input type="text" class="form-control" id="cardnum" maxlength="4">
			</div>
			<div class="col-md-3">
			<input type="text" class="form-control" id="cardnum" maxlength="4">
			</div>
			<div class="col-md-3">
			<input type="text" class="form-control" id="cardnum" maxlength="4">
			</div>
			<div class="col-md-3">
			<input type="password" class="form-control" id="cardnum" maxlength="4">
			</div>	
			</div>
		</div>
		<br>
		
		<div class="container-fluid padding">
		<label>유효기간 (YY / MM / CVC)</label>
			<div class="row text-center padding">
			<div class="col-md-4">
			<input type="text" class="form-control" id="cardnum" value="YY" maxlength="2">
			</div>
			<div class="col-md-4">
			<input type="text" class="form-control" id="cardnum" value="MM" maxlength="2">
			</div>
			<div class="col-md-4">
			<input type="text" class="form-control" id="cardnum"  PLACEHOLDER="카드 뒷면 3자리" maxlength="3">
			</div>	
			</div>
		</div>
		<br>
		
		<div class="container-fluid padding">
		<label>비밀번호</label>
			<div class="row text-center padding">
			<div class="col-md-6">
			<input type="password" class="form-control" id="cardnum" PLACEHOLDER="뒤 두자리만 입력해주세요" maxlength="2">
			</div>
			<div class="col-md-2">
			</div>
			<div class="col-md-2">
			<input type="submit" value="결제" class="btn btn-primary"></submit>
			</div>
			<div class="col-md-2">
			<a href="#" class="close" style="opacity: 1; float: none;"><button class="btn btn-danger">닫기</button></a>
			</div>	
			</div>
		</div>
		

	</div>
</div>
</form>		
			
			</div>
			<div style="margin-left:200px;">
<h3><b>* 결제하기</b></h3><br>
<label>항공권 결제대기</label><br>
<form name="ticket" method="post" action="takelater.jsp"  >
			
			  <input type="hidden"  value="" id="whatplane2" name="whatplane2">
				<input type="hidden" value="" id="userid2" name="userid2">
				<input type="hidden" value="" id="AirPlaneNumber2" name="AirPlaneNumber2">
				<input type="hidden" value="" id="price2" name="price2">
            	<input type="submit" onclick="valuechange()" value="나중에하기" style="width:400px;" class="btn btn-primary">
            	<input type="hidden" id="sitnum2" name="sitnum2">
            	</form>
</div>
<br><br><br><br>
		<div class="Jnb">
			<br>
	 		 <center>ⓒ Airplan2018_2b02 / 문의 : 010-0000-0000 / AirPlan@naver.com / https://blog.naver.com/airplan2018_2b02 <br></center>
	 		 <center>팀장_고진호 / 코더_김민혁 / 웹퍼블리셔_임용섭 / 블로거_박제현</center>
	 	</div>
				
</body>
</html>