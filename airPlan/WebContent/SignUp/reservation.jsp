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
			
				


			

						

		
						
				

						
				
			
					
					
				
				
				
				
				
				//Ȧ�� ���� ¦�� ����
			
				
		
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
    	$(".window2").show();

    }
    
    function buyArea() {

    	//ȭ���� ���̿� �ʺ� ���Ѵ�.
    	var maskHeight = $(document).height();
    	var maskWidth = $(window).width();

    	//����ũ�� ���̿� �ʺ� ȭ�� ������ ����� ��ü ȭ���� ä���.
    	$("#buymask").css({
    		"width" : maskWidth,
    		"height" : maskHeight
    	});

    	//�ִϸ��̼� ȿ�� - �ϴ� 0�ʵ��� ��İ� �ƴٰ� 60% �������� ����.

    	$("#buymask").fadeIn(0);
    	$("#buymask").fadeTo("slow", 0.6);

    	//������ ���� �� ����.
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
 
            $('div:contains("���� ��ġ��� ����")').click(toggleStyleSwitcher);
            
            $(".buywindowbtn").click(function(e) {
        		e.preventDefault(); //����
        	
        		buyArea();
        	});
           
            
            $(".textwindow").click(function(e) {
        		e.preventDefault(); //����
        	
        		choiceArea();
        	});
            
            $(".window2 .close").click(function(e) {
    			//��ũ �⺻������ �۵����� �ʵ��� �Ѵ�.
    			e.preventDefault();

    			$("#mask, .window2").hide();
    		});
            $(".window2 .check").click(function(e) {
    			//��ũ �⺻������ �۵����� �ʵ��� �Ѵ�.
    			e.preventDefault();

    			abc();
    		});
            
            $(".buywindow .close").click(function(e) {
    			//��ũ �⺻������ �۵����� �ʵ��� �Ѵ�.
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
	<input type="button" class="textwindow btn btn-primary" value="�¼�����" style="width:400px;">
</div>
	<form name="ticket" method="post" action="takeMoney.jsp"  >
	 <input type="hidden" id="sitnum" name="sitnum" class="form-control" style="width:400px;" readonly>
	<input type="hidden" value="<%= session.getAttribute("UserId") %>" id="userid" name="userid" class="form-control" style="width:400px;" readonly>
	 <div id="mask"></div>
	  <div class="window2">
            <div class="container">
            <h1 style="padding: 2px 32px 0;"><b>�¼� ����</b></h1>
            </div>
            ������- ��Ȯȯ �¼��� ���� ���ּ���. �ٸ� �¼��� ���ϽǶ� ����ϰ� �ٽ� ���� �ϼž��մϴ�.<br>
            ������- �¼��� ���ϼ����� ���� �����ϱ� ��ư�� Ŭ�����ּ���<br>
            ������- �¼��� �����ϼ����� ��������� ������ �������ּ��� <br>
            <div class="back">
            
            <div class="container text-center">
            <a href="#" class="check"><button class="btn btn-primary">�¼� �����ϱ�</button></a>
            &nbsp&nbsp&nbsp
            <a href="#" class="close" style="opacity: 1; float: none;"><button class="btn btn-danger">�ݱ�</button></a>
        	</div>
            
            <br><br><br><br><br>		
            	
            <center>
              <table id="sittable">
	
	<tr style="height: 70px;">
				<td   id="01" onclick="javascript:clickTrEvent(this)">
				<input type="hidden" name="sitn"  id="cb1">
				<label for="cb1" style="cursor:hand;">����</label></td> 
			
				<td id="02"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb2">
				<label for="cb2" style="cursor:hand"  >������������</label></td>
								
				<td id="03"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb3">
				<label for="cb3" style="cursor:hand"  >��</label></td>
								
				<td id="04"  onclick="" >
				<input type="hidden" id="cb4">
				<label for="cb4" style="cursor:hand"  >��</label></td>
								
				<td id="05"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb5">
				<label for="cb5" style="cursor:hand"  >��</label></td>
												
				<td id="06"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb6">
				<label for="cb6" style="cursor:hand"  >��</label></td>
												
				<td id="07"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb7">
				<label for="cb7" style="cursor:hand"  >������������</label></td>
												
				<td id="08"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb8">
				<label for="cb8" style="cursor:hand"  >��</label></td>
												
				<td id="09"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb9">
				<label for="cb9" style="cursor:hand"  >����</label></td>
				
				<td id="10"  onclick="javascript:clickTrEvent(this)" >
				<input type="hidden" name="sitn" id="cb10">
				<label for="cb10" style="cursor:hand"  >��</label></td>
				
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
		<b><%= session.getAttribute("UserId") %>�Բ���_������ �װ���</b></h1> 
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
					<%=article.getCount() %> / <%=article.getTotalNumber() %>
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
					��
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
    <label>�������</label><br>
    <input type=button  id="Button1" value='������� ����' align="bottom" class="btn btn-warning" style="width:400px;"></div>
    
    <div id="termpannel"  class="DivCss">�̿���
   <pre>
��1��(����)
�� ����� ��AirPlan(���� "AirPlan"�̶� �մϴ�)�� ��ϴ� AirPlan ���ͳ� ������Ʈ ���� 
"www.jejuair.net"�̶� �մϴ�)���� �����ϴ� ���ͳ� ���� ����(���� "����"�� �մϴ�)�� �̿��Կ� �־� AirPlan�� �̿����� �Ǹ�.�ǹ� �� å�ӻ����� �������� �������� �մϴ�.,

��2��(����)
�� "www.jejuair.net"�̶� AirPlan�� ��ǻ�� �� ������ż���� ������Ÿ��� �̿��Ͽ� ���� �� ���񽺸� �̿��ڿ��� �����ϰ� ��ȭ �Ǵ� �뿪�� �ŷ��� �� �ֵ��� ������ ������ �������� ���մϴ�.
�� "�̿���"�� www.jejuair.net�� �����Ͽ� �� ����� ���� AirPlan�� �����ϴ� ���񽺸� �޴� ȸ�� �� ��ȸ���� ���մϴ�.
�� "ȸ��"�̶� ���� www.jejuair.net�� ���������� �����Ͽ� ȸ������� �� �ڷμ�,
 AirPlan�� www.jejuair.net�� ���Ͽ� ���������� �����ϴ� ���� �� ���񽺸� ��������� �̿��� �� �ִ� �ڸ� ���մϴ�.
�� "��ȸ��"�̶� ���� ȸ������ �������� �ʰ� AirPlan�� �����ϴ� ���� �� ���񽺸� �̿��ϴ� �ڸ� ���մϴ�.

��3�� (����� ��ÿ� ����)
�� AirPlan�� �� ����� ����� ��ȣ, ����ó(���ڿ����ּ�, ��ȭ��ȣ, �ѽ���ȣ ��) ���� �̿��ڰ� �� �� �ֵ��� www.jejuair.net�� �ʱ� ����ȭ��(����)�� �Խ��մϴ�.
�� AirPlan�� ����� ���� � ���� ����, ���ڰŷ��⺻��, ���ڼ����, 
������Ÿ� �̿����� �� ������ȣ� ���� ����, �湮�Ǹŵ ���� ����, �Һ��ں�ȣ�� �� ���ù����� �������� �ʴ� �������� �� ����� ������ �� �ֽ��ϴ�.
�� ����� ������ ��쿡�� �������� �� �������ڸ� ����Ͽ� �������� �Բ� www.jejuair.net�� �ʱ�ȭ�鿡 �� �������� 7�� �������� �������� ���ϱ��� �����մϴ�.
�� ��������� �� �������� ���� ü��� ��࿡ ���ؼ��� ����˴ϴ�. �ٸ� ��������� ������ �����ϴ� ���� AirPlan�� ��������� ������ �̿��ڿ� ���ؼ��� �������� ��������� ����˴ϴ�.
�� �� ������� ������ �ƴ��� ���װ� �� ����� �ؼ��� ���Ͽ��� ���ڰŷ��Һ��ں�ȣ��ħ, ������� �Ǵ� ����ʿ� �����ϴ�.

��4��(www.jejuair.net�� ��������)
AirPlan�� www.jejuair.net�� ���Ͽ� �����ϴ� ������ �Ʒ��� �����ϴ�.
1. �װ���, ���� �� ���� ����.���� ����
2. �װ��� ���Ű�� �� ����� ü��
3. ��Ÿ AirPlan�� ���ϴ� ����

��5��(������ �ߴ�)
�� AirPlan�� ��ǻ�� �� ������ż����� ����.����.��ü ���� ��쿡 www.jejuair.net�� ���� ������ �Ͻ������� �ߴ��� �� �ֽ��ϴ�.
�� ��1�׿� ���� ���� �ߴ��� ��� AirPlan�� �� ��� ��8������ ���� ������� �̿��ڿ��� �����մϴ�.
�� AirPlan�� ��1���� ������ ������ ������ �Ͻ������� �ߴܵ����� ���Ͽ� �̿��� �Ǵ� ��3�ڰ� ���� ���ظ� ����մϴ�. �ٸ� AirPlan�� ���� �Ǵ� �ߴ��� ������ ���� ��쿡�� �׷����� �ƴ��մϴ�.

��6��(ȸ������)
�� �̿��ڴ� www.jejuair.net�� ������ ���Ծ�Ŀ� ���� ȸ�������� ������ �� �� ����� �����Ѵٴ� �ǻ�ǥ�ø� �ϴ� ������� ȸ�������� ��û�մϴ�.
�� AirPlan�� �̿��ڰ� ���� ��ȣ�� 1�� �ش����� �ʴ� �� ȸ�����Խ�û�� �³��մϴ�. 
1. ���Խ�û�ڰ� �� ��� ��7�� ��4�׿� ���Ͽ� ȸ���ڰ��� ��� �� ���. �ٸ� ȸ���ڰ� ��� �� 3���� ����� �ڷμ� AirPlan�� ȸ�� �簡�� �³��� ���� ���� ���ܷ� �մϴ�.
2. ��� ���뿡 ����, ���紩��, ���Ⱑ �ִ� ���
3. ��Ÿ ȸ������ ����ϴ� ���� ��������� ������ ������ �ִٰ� �ǴܵǴ� ���
�� ȸ�����԰���� �����ñ�� AirPlan�� �³��� ȸ������ ������ �������� �մϴ�.
�� ȸ���� ��13�� ��1�׿� ���ŵ� ��ϻ��׿� ������ �ִ� ���, ��� ���ڿ��� ��Ÿ �̿� ���ϴ� ������� www.jejuair.net�� �� ��������� �˷��� �մϴ�.

��7��(ȸ��Ż�� �� �ڰݻ�� ��)
�� ȸ���� www.jejuair.net�� �������� Ż���û�� �� �� ������, �� ��� AirPlan�� ��� ȸ��Ż�� ó���մϴ�.
�� ȸ���� ���� ��ȣ�� 1�� �ش��ϴ� ��� AirPlan�� �����̿��� ���� �Ǵ� ������ų �� �ֽ��ϴ�. 
1. ���� ��û �� ���� ������ �����ϰų� 2 �̻��� I.D.�� ���ߵ���� ���
2. www.jejuair.net���� ������ �װ��� ���� �������ä�� ��Ÿ www.jejuair.net �̿�� ���� ȸ���� �δ��ϴ� ä���� �������ϴ� ���
3. Ÿ���� www.jejuair.net �̿��� �����ϰų� Ÿ���� ���������� �����ϴ� �� ���ڰŷ������� ħ��.�����ϴ� ���
4. www.jejuair.net�� �̿��Ͽ� �� ����� �����ϴ� ���� �Ǵ� ����, ������� � ���ϴ� ������ �ϴ� ���
�� AirPlan�� ���� �̿��� ����.�����ϰ��� �� ������ �̸� �� ����, �Ͻ�, �Ⱓ�� ���ڿ���, ��ȭ, ���� ������ ���� �̿��ڿ��� �����մϴ�. �ٸ� ����� ���� ��쿡�� ��ġ �Ŀ� ������ �� �ֽ��ϴ�.
�� AirPlan�� �����̿��� ����.������Ų �� �� ��������� �� ������ �ݺ��ǰų� 30�� �̳��� �� ������ �������� �ƴ��ϴ� ��� AirPlan�� ȸ���ڰ��� ��Ż�� �� �ֽ��ϴ�.
�� AirPlan�� ȸ���ڰ��� ��Ż�ϴ� ��쿡�� ȸ������� �����ϸ�, �� ��� ���� ���� ȸ������ �̸� �����մϴ�.
�� �����̿��� ����.����, ȸ���ڰ��� ��Ż�� ���� ���ؿ� ���ؼ� AirPlan�� å���� ���� �ʽ��ϴ�.

��8��(ȸ���� ���� ����)
�� AirPlan�� ȸ���� ���� ������ �ϴ� ��� ȸ���� ������ ���ڿ����ּҷ� �� �� �ֽ��ϴ�.
�� AirPlan�� ��Ư�� �ټ��� ȸ������ �����ϴ� ���, 1���� �̻� www.jejuair.net�� ���������ν� ���������� ������ �� �ֽ��ϴ�.

��9��(���Ž�û)
�̿��ڴ� www.jejuair.net���� �Ʒ� ����� ���Ͽ� ���Ž�û�� �� �� �ֽ��ϴ�.
1. ����, �ּ�, ��ȭ��ȣ �Է�
2. ��ȭ �Ǵ� �뿪�� ����
3. ��������� ����
4. �� ����� �����Ѵٴ� ǥ��(��: ���콺 Ŭ��)

��10�� (����� ����)
�� AirPlan�� �� 9���� ���� ����� ���� ���Ž�û�� ���Ͽ� ���� �� ȣ�� 1�� �ش����� �ʴ� �� �³��մϴ�. 
1. ��û ���뿡 ����, ���紩��, ���Ⱑ �ִ� ���
2. ���Ž�û�� ���� �³��� ������ �Ǵ� ����� ������ ������ �ִٰ� �ǴܵǴ� ���
�� AirPlan�� �³��� �� 12�� ��1���� ����Ȯ���������·� �̿��ڿ��� ������ ������ ����� ������ ������ ���ϴ�.

��11��(�������)
www.jejuair.net���� ������ ��ȭ.�뿪�� ���� ��ݰ����� �Ʒ��� ������� �� �� �ֽ��ϴ�.
1. �ſ�ī�����
2. �ǽð� ������ü

��12��(����Ȯ������.���Ž�û ���� �� ���)
�� AirPlan�� �̿����� ���Ž�û�� �ִ� ��� �̿��ڿ��� ����Ȯ�������� �մϴ�.
�� ����Ȯ�������� ���� �̿��ڴ� �ǻ�ǥ���� ����ġ ���� �ִ� ��쿡�� ����Ȯ�������� ���� �� ��� ���Ž�û ���� �� ��Ҹ� ��û�� �� �ֽ��ϴ�.

��13��(����������ȣ)
�� "ȸ��"�� "������Ÿ���" �� ���� ������ ���ϴ� �ٿ� ���� "ȸ��"�� ���������� ��ȣ�ϱ� ���� ����մϴ�. 
���������� ��ȣ �� ��뿡 ���ؼ��� ���ù� �� "ȸ��"�� ��������ó����ħ�� ����˴ϴ�. �ٸ�, "ȸ��"�� ���� ����Ʈ �̿��� ��ũ�� ����Ʈ������ "ȸ��"�� ��������ó����ħ�� ������� �ʽ��ϴ�.

��14��(AirPlan�� �ǹ�)
�� AirPlan�� ���ɰ� �� ����� �����ϰų� ������ӿ� ���ϴ� ������ ���� ������ �� ����� ���ϴ� �ٿ� ���� �������̰� �������� ���� ���� �� ��ȭ.�뿪�� ���޿� ����մϴ�.
�� AirPlan�� �̿��ڰ� �����ϰ� ���񽺸� �̿��� �� �ֵ��� �̿����� ��������(�ſ����� ����)��ȣ�� ���� ���� �ý����� ���߰ڽ��ϴ�.
�� AirPlan�� ��ǰ�̳� �뿪�� ���Ͽ� ��ǥ��.�����ǰ���ȭ�����ѹ����� �� 3�� ������ �δ��� ǥ��.���������� �����ν� �̿��ڰ� ���ظ� ���� ������ �̸� ����� å���� ���ϴ�.
�� AirPlan�� �̿��ڰ� ������ �ʴ� ���������� ���� ���ڿ����� �߼����� �ʽ��ϴ�.

��15��(ȸ���� I.D. �� ��й�ȣ�� ���� �ǹ�)
�� �� 13���� ��츦 ������ I.D.�� ��й�ȣ�� ���� ����å���� ȸ������ �ֽ��ϴ�.
�� ȸ���� �� 3�ڿ��� �ڽ��� I.D. �� ��й�ȣ�� �̿��ϰ� �ؼ��� �ȵ˴ϴ�.
�� ȸ���� �ڽ��� I.D. �� ��й�ȣ�� ���� ���ϰų� �� 3�ڰ� ����ϰ� ������ ������ ��쿡�� ��� AirPlan�� �뺸�Ͽ� �� �ȳ��� ����� �մϴ�.

��16��(�̿����� �ǹ�)
�̿��ڴ� �� ��� �� ��������� �ؼ��Ͽ��� �ϸ�, ������ ������ �ؼ��� �ȵ˴ϴ�.
1. ��û �Ǵ� ���� �� ���������� ����
2. www.jejuair.net�� �Խõ� ������ ���Ǻ���
3. AirPlan�� ����ϰ� ���� ���� ������ ��ǻ�� ���α׷� ���� �������� �۽� �Ǵ� �Խ��ϴ� ����
4. AirPlan ��Ÿ �� 3���� ���۱� �� �������� ħ��
5. AirPlan ��Ÿ �� 3���� �����̹��ø� ħ���ϰų� ������ �����ϴ� ����
6. �ܼ��� �Ǵ� ������ �޽���.ȭ��.���� ��Ÿ ������ӿ� ���ϴ� ������ �۽� �Ǵ� �Խ��ϴ� ����

��17��(www.jejuair.net�� ���� ������Ʈ ���� ����)
www.jejuair.net�� ���� ������Ʈ�� ������ ��ũ(������ ��ũ�� ��󿡴� ����, �׸� �� ��ȭ�� ���� ����)��� ������ ����� ���, 
AirPlan�� ���� ������Ʈ�� �̿��ڿ� ���������� ü���� ��ȭ.�뿪 ���ް�� �� �ŷ��� ���Ͽ� ����å���� ���� �ʽ��ϴ�.

��18��(���۱��� �ͼ� �� �̿�����)
�� AirPlan�� �ۼ��� ���۹��� ���� ���۱� ��Ÿ ���������� AirPlan�� �ͼ��մϴ�.
�� �̿��ڴ� www.jejuair.net�� �̿������ν� ���� ������ AirPlan�� ���� �³����� ����, �۽�, ����, ����, ��� ��Ÿ ����� ���Ͽ� ������������ �̿��ϰų� �� 3�ڷ� �Ͽ��� �̿��ϰ� �ؼ��� �ȵ˴ϴ�.

��19��(�����ذ�)
�� AirPlan�� �̿��ڰ� �����ϴ� ������ �ǰ��̳� �Ҹ��� �ݿ��ϰ� �� ���ظ� ����ó���ϱ� ���Ͽ� ���غ���ó���ⱸ�� ��ġ.��մϴ�.
�� AirPlan�� �̿��ڰ� �����ϴ� �Ҹ����� �� �ǰ��� �ż�.�����ϰ� ó���մϴ�. �ٸ� �ż��� ó���� ����� ��쿡�� �̿��ڿ��� �� ������ ó�������� ��ü ���� �뺸�� �帳�ϴ�.
�� AirPlan�� �̿��ڰ��� ���� �߻��� ���ڰŷ��⺻�� �� 28�� �� �� ����� �� 15���� �ٰ��Ͽ� ��ġ�� ���ڰŷ�������������ȸ�� ������ ���� �� �ֽ��ϴ�.

��20��(���ҹ��� �� �ذŹ�)
�� AirPlan�� �̿��ڰ��� �߻��� ���ڰŷ� ���￡ ���� �Ҵ� ������������� �����մϴ�.
�� AirPlan�� �̿��ڰ��� ����� ���ڰŷ� �Ҽۿ��� �ѱ����� �����մϴ�.

AirPlan JJ Club�⺻ ����(���)

�� 1 ��
��AirPlan�� JJ Clubȸ���̶� ����, ��AirPlan�� �����ϴ� �� ����� �����ϰ� ��AirPlan Ȩ������ (http://jejuair.net)���� 
ȸ������ �����ϰų� ������ ���Խ�û���� �ۼ� �� �� ��AirPlan�� �����Ͽ� ȸ�������� �Ϸ��Ͻ� ���� ���մϴ�. �ǹ�ȸ��ī��� �߱޵��� ������ ȸ������ �� ������ֽ� E-mail �� �޴���ȭ�� ȸ����ȣ�� �̹���ī�带 �޾� ���� �� �ֽ��ϴ�.
 (�޴���ȭ �ڵ��������� ȸ����ȣ ������ �ѱ��������� ���� ������ �޴���ȭ ��ȣ���� �ش�˴ϴ�.)

�� 2 ��
ȸ���� �ּ�, �̸��� �ּ�(e-mail address) �� ��ȭ��ȣ �� ���������� ������ ���� ������ ��AirPlan���� ��� �˷��� �ϸ�, 
�������� ���� ����� �˸��� ���� ������ �����ν� ��AirPlan���κ����� ���� �Ǵ� �ۺμ��� ���� �����ϰų� �������� �������� ���Ͽ� �����Ͻ� ȸ������ �߻��� ���ؿ� ���ؼ��� ��AirPlan�� å���� ���� �ʽ��ϴ�.

�� 3 ��
ȸ���ڰ� �� ������ JJ Club ȸ�������Ϸκ��� ȸ�� ���ο��Ը� �����Ǹ�, �ߺ����� �� �� ������ �� 3�ڿ��� �絵�� �� �����ϴ�. 
���� ȸ��ī���ȣ�� �н�, ����, ����� ���� ���ش� AirPlan�� å���� ���� �ʽ��ϴ�.

�� 4 ��
JJ Club �� �����Ͻ� �� ȸ������ ž���Ͻ� ������ ���� ����Ʈ�� ������ �˴ϴ�.

�� 5 ��
��AirPlan ȸ���� ����Ʈ�� ��ǥ�� ȸ�� ���� �����Ͽ� �ִ� 5�α��� ���� ����(����, �����, �ڳ�, ģ�θ�, ����ںθ� ����)�� ���ؼ��� ����ȸ���� ��ϰ����ϸ�, 
���� ������ ������ �ִ� 1ȸ�� ���� ����ǰ� ���������� ���� �������������� �����ϼž� �մϴ�. ������ ����Ʈ�� ��ϵ� ���谡���� �����ϰ� Ÿ�ο��� ����/�絵�� �� ������, ���������� ȯ��ǰų� Ÿ�ο��� �Ǹ��� �� �����ϴ�. 
��� ������ ���ߵ� ��� ������ ��� ����Ʈ�� �̻�� ���ʽ��� ���ҵǸ� ȸ�� �ڰݵ� ��ҵ� �� �ֽ��ϴ�.

�� 6 ��
����Ʈ ������ ���ҿ��ӿ� ����Ͽ� �ش� �װ��� ž���� �Ϸ��Ͻ� ȸ�����Ը� �����˴ϴ�.
 ��, õ������, �������, �Ұ��׷�, �ľ�, ����, �ҿ�, ���Ա� ����, ����, ����, ���� ���� ���� ������ �װ��� ž���� �Ϸ���� ���� ��쵵 ����Ʈ�� �������� �ʽ��ϴ�.

�� 7 ��
AirPlan�� ȸ�� ���¸� �˻��Ͽ� ȸ���� ���� ������ �߸��� ��쿡�� �̸� ���Ƿ� ������ �� ������, �δ��� ����� ���� ������ ������ �������� �ʽ��ϴ�.

�� 8 ��
���ʽ� �װ����� ����� �����¼� �̿��� ��Ģ�̱� ������ ���ʽ� �¼� ���� ����� ���ѵ� �� �ֽ��ϴ�.

�� 9 ��
AirPlan�� ��å �����̳� ������ ���� ����Ʈ ���� �� �������� �޶��� �� ������, ȸ������ ��ϵ� ���� �� �ּ����� ���� ���ð� ���� ������ �ٸ� �� �ֽ��ϴ�.

�� 10 ��
ȸ���� ���޻� ���α׷��� ���޻� ������ ���� ���� �뺸 ���� ����ǰų� �ߴܵ� �� �ֽ��ϴ�.

�� 11 ��
AirPlan �̿���� �Ǵ� ���ʽ��� ���õ� ���� ���Ǵ� �ش� �װ��� ž���� �Ǵ� ���ʽ� �����Ϸκ��� 1�� �̳��� �����ϼž� �մϴ�.

�� 12 ��
������ ����Ʈ�� ����� ���ʽ� �װ��� ���� �� Ƽ���� �����Ⱓ�� ��ȿ�Ⱓ�� ������ �Ⱓ �� ������� �����ø� �ڵ� �Ҹ�˴ϴ�.

�� 13 ��
JJ Club ȸ�� Ȥ�� �븮���� ���� �������� ��.����, ������ ��������, ȸ�� �������� Ȥ�� �ǿ� �ÿ��� ȸ���ڰ� ��Ż, ȸ������ ���, 
���� ����Ʈ ���� Ȥ�� �߱޵� ���ʽ��� ��ҽ�ų �� ������, �ش� ȸ�� �� �븮�ο� ���� (��)������ ������ �� �ֽ��ϴ�. ���� �δ��� ����� ���� ���ʽ��� �߱�, 
����� ��� AirPlan�� ���� ���ӿ� �����ϴ� ���� ��� û�� �� �ʿ��� ���� ��ġ�� ���� �� �ֽ��ϴ�.

�� 14 ��
ȸ�� ������ �Ż� ������ ������� ������ ����Ʈ�� �� 3�ڿ��� �絵���� ������ ����� ȸ���� ���� ����Ʈ�� ��ӵ� �� ������ �Ҹ�˴ϴ�.

�� 15 ��
�� ȸ������ ������ ���� ������, ���� ������ ���� �� ������ ���, ���� ���ε��� �ް��� �϶�, 
���� ������ �ɰ��� ��ȭ �Ǵ� �̿� ���ϴ� ������Ȳ�� �ߴ��� �������� ���Ͽ� �Ұ����� ���, �������� �װ����� ������ ����, �����ؼҸ� ���� �Ұ����� ���, 
������ ���� ������ ���� ���ʽ� ������ �뼱 �� ���� ������ �ɰ��Ͽ� �̸� �����ϱ� ���� �ʿ��� ���, ����ġ ���� �װ� ������ �ް��� ��ȭ, 
��Ÿ �װ������ �ߴ��� ���⸦ �ʷ��� ����� �ִ� �Ұ��׷����� ������ ���ӵǴ� ��� �� ����� ������ �ִ� ��� ��AirPlan�� �ش� ȸ������ 3���� ���� �̸���(e-mail)
 �Ǵ� �޴���ȭ�� ���ڸ޽��� ���� ������� ���� ������ �� ����� �� �ֽ��ϴ�. 
 �ٸ�, �������� ��ȿ�� �������� ȸ���Բ��� ����� ����Ʈ�� ��쿡�� ����Ʈ ������ ���޵Ǵ� ���ʽ��� ���Ͽ� �������� ��ȿ�Ϸκ��� 6���������� �������� ������ ����ǰ� �� ���Ŀ��� ����� ������ ����˴ϴ�.

�� 16 ��
��AirPlan�� ���� �Ⱓ ����Ʈ ��������� ���� ȸ���� ���Ͽ� ��AirPlan�� ���θ�� ȫ����, ��������Ʈ, ��Ȳ, �������� ���� �߼����� ���� ���� �ֽ��ϴ�.
 ���� ���ϳ����� ������ ȸ���� ��������, ������ ��ġ � ���� ���������� ������ �� �ֽ��ϴ�.

�� 17 ��
�� ����� �����Ͽ� ���� �ֱٿ� ����� ȸ���ȳ��� �Ǵ� ��AirPlan Ȩ�������� ����� ������ ������ ��� ������ ���Ǻ��� �켱�մϴ�.

PC ����
������۾��
�̿���
��������ó����ħ
Copyright �� JEJUair Inc. All rights reserved.</pre>
 </div>
<br>


<div style="margin-left:200px;">
<label>ī�� �����ϱ�</label><br>
<input type="button" class="buywindowbtn btn btn-success" value="����" style="width:400px;"><br>
<h5 style="color: #a8a8a8; "><b>* ī������� �����մϴ�</b></h5></div>

<br><br><br><br><br>
			
			
				
			<div id="buymask"></div>
            <div class="buywindow">
           
          <div class="fom">
	<div class="fom2">

<br>
<div class="logo2">
<img src="image/logo.png">
</div>
<h2><b> ��ī�����</b></h2>

<br>
<div class="container-fluid padding">
    <label for="exampleFormControlTextarea1">�������</label>
    <div class="row text-center padding">
    <div class="col-md-12">
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="4">
���ڱ����ŷ� �⺻���(�̿��ڿ�)

��1�� (����) 

�� ����� �������ް������༭�� �� ������ݿ�ġ���񽺸� �����ϴ� �ֽ�ȸ�� LG���÷���(���� 'ȸ��'�� �մϴ�)�� �̿��� ���������ڱ����ŷ��� ���� �⺻���� ������ �������ν� ���ڱ����ŷ��� �������� �ŷڼ��� Ȯ���Կ� �� ������ �ֽ��ϴ�.

��2�� (����� ����)

�� ������� ���ϴ� ����� ���Ǵ� ������ �����ϴ�. 
�� ���ڱ����ŷ�'�� ���� ȸ�簡 ������ ��ġ�� ���Ͽ� �������ް������༭�� �װ�����ݿ�ġ����(���� '���ڱ����ŷ� ����'��� �մϴ�)�� �����ϰ�, �̿��ڰ� ȸ���� �������� ��������ϰų� �ǻ������ ���� �ƴ��ϰ� ����ȭ�� ������� �̸� �̿��ϴ� �ŷ��� ���մϴ�. 
�� '�������ް������� ����'�� ���� ������ ������� ��ȭ�� ���� �Ǵ� �뿪�� �̿뿡 �־ ���ް��������� �۽��ϰų������ϴ� �� �Ǵ� �� �밡�� ������ �����ϰų� �Ű��ϴ� ���񽺸� ���մϴ�. 
�� ��������ݿ�ġ����'�� ���� �̿��ڰ� ��ȭ�� ���� �Ǵ� �뿪�� �̿뿡 �־ �� �밡(���� '�������'�̶� �Ѵ�)�� ���ζǴ� �Ϻθ� ��ȭ �Ǵ� �뿪(���� '��ȭ ��'�̶� �մϴ�)�� ���޹ޱ� ���� �̸� �����ϴ� ���, ȸ�簡 �̿����� ��ǰ���� �Ǵ� �����̿� Ȯ�� �������� ��������� ��ġ�ϴ� ���񽺸� ���մϴ�. 
�� '�̿���'�� ���� �� ����� �����ϰ� ȸ�簡 �����ϴ� �������ް������� ���񽺸� �̿��ϴ� �ڸ� ���մϴ�.
�� '���ٸ�ü'�� ���� ���ڱ����ŷ��� �־ �ŷ����ø� �ϰų� �̿��� �� �ŷ������� ���Ǽ��� ��Ȯ���� Ȯ���ϱ� ���Ͽ� ���Ǵ¼��� �Ǵ� �����μ� ���ڽ� ī�� �� �̿� ���ϴ� ������ ����(�ſ�ī���ȣ�� �����Ѵ�), '���ڼ����'���� ������, ������� �Ǵ����ڱ������ڿ� ��ϵ� �̿��ڹ�ȣ, �̿����� ��ü����, �̻��� �����̳� ������ ����ϴµ� �ʿ��� ��й�ȣ �� ���ڱ����ŷ��� ��2����10ȣ���� ���ϰ� �ִ� ���� ���մϴ�.
�� '�ŷ�����'�� ���� �̿��ڰ� ���ڱ����ŷ���࿡ ���� ������� �Ǵ� ���ڱ������ڿ��� ���ڱ����ŷ��� ó���� �����ϴ� �������մϴ�.
�� '����'�� ���� �̿����� ���� �Ǵ� ���� ���� ���ڱ����ŷ��� ���ڱ����ŷ���� �Ǵ� �̿����� �ŷ����ÿ� ���� ������� �ƴ��Ѱ�츦 ���մϴ�.

��3�� (����� ��� �� ����)
�� ȸ��� �̿��ڰ� �������ް������� ���񽺸� �̿��ϱ� ���� �� ����� �Խ��ϰ� �̿��ڰ� �� ����� �߿��� ������ Ȯ���� ���ֵ��� �մϴ�.
�� ȸ��� �̿����� ��û�� �ִ� ��� �������� ��� �Ǵ� ���ڹ����� ���۹�Ŀ� ���Ͽ� �� ����� �纻�� �̿��ڿ��Ա����մϴ�.
�� ȸ�簡 ����� �����ϴ� ������ �� ������ 1�� ���� ����Ǵ� ����� ���ް������� �Է�ȭ�� �� ȸ���� Ȩ�������� �Խ������ν��̿��ڿ��� �����մϴ�.

��4�� (�������ް������༭���� ����)

ȸ�簡 �����ϴ� �������ް������༭�񽺴� ���ް������ܿ� ���� ������ ���� �����˴ϴ�. 
�� �ſ�ī��������༭��: �̿��ڰ� ��������� ������ ���Ͽ� ������ ���ް��������� �ſ�ī���� ���μ�, ȸ�簡 ���ڰ����ý��������� �ſ�ī�� ���������� ��,���� �� ��������� ������ �����ϰų� �Ű��ϴ� ���񽺸� ���մϴ�. 
�� ������ü���༭��: �̿��ڰ� ��������� ȸ���� ���ڰ����ý����� ���Ͽ� ��������� ����� �ڽ��� ���¿��� ����Ͽ� ���ϴ°��·� ��ü�� �� �ִ� �ǽð� �۱� ���񽺸� ���մϴ�. 
�� ������¼���: �̿��ڰ� ��������� �������� �����ϰ��� ��� ȸ���� ���ڰ����ý����� ���Ͽ� �ڵ����� �̿��ڸ��� ������ ��ȸ������� �߱��� ���Ͽ� ��������� ������ �̷������ ���񽺸� ���մϴ�. 
�� ��Ÿ: ȸ�簡 �����ϴ� ���񽺷μ� ���ް��������� ������ ���� '�޴��� �������༭��','KT��ȭ(ARS,����)�������༭��', '��ǰ�ǰ������༭��'���� �ֽ��ϴ�.
    
  </textarea>
  </div>
  </div>
</div>

<br>
<div class="form-group text-right">
		<div>
			<label>
				<input type="checkbox" name="event"> �������մϴ١�
	  		</label>
		</div>
	</div>


<div class="container-fluid padding">
    <label for="exampleFormControlTextarea1">�������</label>
    <div class="row text-center padding">
    <div class="col-md-12">
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="4">
�������� ���� �� �̿� ����
LG���÷���(���� ��ȸ�硯�� ��)�� ���ڱ����ŷ��� �� ���� ����� ���� ���� ����, ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ���� �� ���ڻ�ŷ� ����� �Һ��ں�ȣ ��ħ, ������Ÿ� �̿����� �� ������ȣ � ���� ���� ���� ��22��(���������� ���� �̿� ���� ��) �� ����������ȣ�� ��15��(���������� ���� �̿�)�� ���� ��Ű���/���ڱ������� �̿���(���� ���̿��ڡ��� �մϴ�)�κ��� �Ʒ��� ���� ���������� ���� �� �̿��մϴ�.
1. �����ϴ� ���������� �׸� ��. ȸ��� ȸ������, ���, ���� ��û ���� ���� �Ʒ��� ���� ���������� �����ϰ��ֽ��ϴ�.
- �̸�, �������, ��ȭ��ȣ, �޴�����ȣ, �̸���, ����� IP Address, ��Ű, ���� �̿���, �������, ��������, �����������, �ּ� ��
��. �������������� ���� ���̿��ڡ��� ������ ��ǰ �� ���񽺸� �����ϱ� ���Ͽ� ��ȸ�硱�� �����ϴ� �����񽺡��� ���� ������ �� �������� �� ���� ������ �ǹ��ϸ� �ſ�ī�� ��ȣ, �ſ�ī�� ��ȿ�Ⱓ, ����, ���¹�ȣ, �ֹε�Ϲ�ȣ, �޴�����ȣ, ������ȭ��ȣ, ��ǰ�ǹ�ȣ �������մϴ�.
��. ȸ��� ���� �̿�� ������ ��ݰ���, ��ǰ��� �� ȯ�� � �ʿ��� ������ �߰��μ����� �� �ֽ��ϴ�.

2. ���������� ���� �� �̿� ���� ��. ȸ��� ������ ���� ���� �Ͽ� ���������񽺡��� ������ ���������� �����մϴ�.
- ��� �� ����ũ ����, ��� Ȱ��, ������� �뺸
- �ſ�ī��, ������ü, �������, �޴�������, ������ȭ���� �� �������� ����, ������� ��ȸ �� �뺸
��. ���� ������ ���� ��� ���� �� ���� ������ ���� �������
- ���� ����, ���� �� ����, �������, A/S �� ���� ���� ���� ���� �������̿������ ������ ó��
- û���� ���� �߼�, �����ŷ� ���� ���� �� ��������, ����߽� ��
��. ȸ�簡 �����ϴ� ������ �̿뿡 ������ ����Ȯ��, �̿��ڰ� �ŷ��� ��Ȱ�� ����, �����ǻ��� Ȯ��, �Ҹ�ó��, ���ο� ������ ���������� �ȳ�, ��ǰ ����� ���� ����� Ȯ��, ��ݰ��������� ���� �� ȯ���Ա� ���� �� ���� ������ �����ϰ� �ϱ� ���� �ʿ��� �ּ����� ������������ �ް� �ֽ��ϴ�.

3. ���������� ���� �� �̿�Ⱓ
�̿����� ���������� ��Ģ������ ���������� ���� �� �̿������ �޼��Ǹ� ��ü ���� �ı��մϴ�. ��, ������ ������ ���ؼ��� �Ʒ��� ������ ����� �Ⱓ ���� �����մϴ�. ��. ȸ�� ���� ��ħ�� ���� ���� ���� ����
- �� ���ڰ������� ������ �Ǹ�, �ǹ��� ����
��. ���ù��ɿ� ���� �������� ����
���, ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ���� ���������� ������ ���Ͽ� ������ �ʿ䰡 �ִ� ��� ȸ��� ������ɿ��� ���� ������ �Ⱓ ���� ȸ�������������մϴ�. �� ��� ȸ��� �����ϴ� ������ �� ������ �������θ� �̿��ϸ� �����Ⱓ�� �Ʒ��� �����ϴ�
* ��� �Ǵ� û��öȸ � ���� ���
- ���� ���� : ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ����
- ���� �Ⱓ : 5 ��
* ��ݰ��� �� ��ȭ ���� ���޿� ���� ���
- ���� ���� : ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ����
- ���� �Ⱓ : 5 ��
* �Һ����� �Ҹ� �Ǵ� ����ó���� ���� ���
- ���� ���� : ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ����
- ���� �Ⱓ : 3 ��
* ����Ȯ�ο� ���� ���
- ���� ���� : ������� �̿����� �� ������ȣ � ���� ����
- ���� �Ⱓ : 6 ����
 
    </textarea>
    </div>
    </div>
</div>

<br>
<div class="form-group text-right">
		<div>
			<label>
				<input type="checkbox" name="event"> �������մϴ١�
	  		</label>
		</div>
</div>


       <div class="container-fluid padding">
       <label>ī�弱��</label> 
  			<div class="row text-center padding">
  			<div class="col-md-4">
  					 <select name="card"  class="form-control" style="color:#000;">
					  <option value="����ī��">����ī��</option>
					  <option value="����ī��">����ī��</option>
					  <option value="��Ƽī��">��Ƽī��</option>
					  <option value="NHī��">NHī��</option>
					  <option value="�츮ī��">�츮ī��</option>
					</select>
			</div>
		
			<div class="col-md-7"></div>
		
		</div>
	</div>
		<br>
		
		<div class="container-fluid padding">
		<label>ī���ȣ</label>
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
		<label>��ȿ�Ⱓ (YY / MM / CVC)</label>
			<div class="row text-center padding">
			<div class="col-md-4">
			<input type="text" class="form-control" id="cardnum" value="YY" maxlength="2">
			</div>
			<div class="col-md-4">
			<input type="text" class="form-control" id="cardnum" value="MM" maxlength="2">
			</div>
			<div class="col-md-4">
			<input type="text" class="form-control" id="cardnum"  PLACEHOLDER="ī�� �޸� 3�ڸ�" maxlength="3">
			</div>	
			</div>
		</div>
		<br>
		
		<div class="container-fluid padding">
		<label>��й�ȣ</label>
			<div class="row text-center padding">
			<div class="col-md-6">
			<input type="password" class="form-control" id="cardnum" PLACEHOLDER="�� ���ڸ��� �Է����ּ���" maxlength="2">
			</div>
			<div class="col-md-2">
			</div>
			<div class="col-md-2">
			<input type="submit" value="����" class="btn btn-primary"></submit>
			</div>
			<div class="col-md-2">
			<a href="#" class="close" style="opacity: 1; float: none;"><button class="btn btn-danger">�ݱ�</button></a>
			</div>	
			</div>
		</div>
		

	</div>
</div>
</form>		
			
			</div>
			<div style="margin-left:200px;">
<h3><b>* �����ϱ�</b></h3><br>
<label>�װ��� �������</label><br>
<form name="ticket" method="post" action="takelater.jsp"  >
			
			  <input type="hidden"  value="" id="whatplane2" name="whatplane2">
				<input type="hidden" value="" id="userid2" name="userid2">
				<input type="hidden" value="" id="AirPlaneNumber2" name="AirPlaneNumber2">
				<input type="hidden" value="" id="price2" name="price2">
            	<input type="submit" onclick="valuechange()" value="���߿��ϱ�" style="width:400px;" class="btn btn-primary">
            	<input type="hidden" id="sitnum2" name="sitnum2">
            	</form>
</div>
<br><br><br><br>
		<div class="Jnb">
			<br>
	 		 <center>�� Airplan2018_2b02 / ���� : 010-0000-0000 / AirPlan@naver.com / https://blog.naver.com/airplan2018_2b02 <br></center>
	 		 <center>����_����ȣ / �ڴ�_����� / ���ۺ���_�ӿ뼷 / ��ΰ�_������</center>
	 	</div>
				
</body>
</html>