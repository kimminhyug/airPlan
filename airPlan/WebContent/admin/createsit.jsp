<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="css/check.css" rel="stylesheet" type="text/css">
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
    left:3%;
    top:3%;
    margin-left: 100px;
    width:600px;
    height:1160px;
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
    left:3%;
    top:36%;
   
    width:50%;
    height:500px;
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
		
    <script language="javascript" type="text/javascript">
    
    
    function abc(){
    	 var size = document.getElementsByName("sitn").length;
    
    	 
    	
    	 
    	
    	    for(var i = 0; i < size; i++){
    	        if(document.getElementsByName("sitn")[i].checked == true){
    	            var ad=document.getElementsByName("sitn")[i].id;
    	            ad=ad.substr(2);
    	            console.log(ad);
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
    function sitnamemove(){
    	
    	    
    	  
    	
    }
    
    function valuechange(){
    	document.getElementById("sitnum2").value=document.getElementById("sitnum").value;
		 document.getElementById("whatplane2").value=document.getElementById("whatplane").value;
		 document.getElementById("userid2").value=document.getElementById("userid").value;
		document.getElementById("price2").value=document.getElementById("price").value;
		document.getElementById("AirPlaneNumber2").value=document.getElementById("AirPlaneNumber").value;
		}
    
        $(document).ready(function () {
        	
        
         	
         	
        	
         	
        
        	
        	var sitType=document.getElementById("")
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
 <meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="css/ord.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css">
 <link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">
<title>AIRPLAN_좌석등록</title>
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
		<h1><b>AIR PLANE _ SIT Registration</b></h1>
		<br><br>
		<label>비행기 좌석 생성</label>
		<form name="createSit" method="post" action="createpro.jsp">
  		비행기 고유 번호 입력 <input class="form-control" type="text" name="createsitname" id="createsitname" value="">
 		<br>
 		<div class="text-right">
 		<input type="submit" value="check" class="btn btn-primary"></div>
 		</form>
 
 		<br><br>
 		<label>좌석번호 입력</label>
 		<form name="insertSit" method="post" action="insertSit.jsp">
     	<input  type="hidden" id="sitnum" name="sitnum">
  		 비행기 고유 번호 입력
  		 <input class="form-control" type="text" id="insertsitname"  name="insertsitname"><br>
  		비행기 인덱스 넘버 입력
  		<input class="form-control" type="text" id="insertwhatplane"  name="insertwhatplane">
     	<br>
 		<div class="text-right">
     	<input type="button" class="textwindow btn btn-success" value="좌석선택">
     	&nbsp&nbsp&nbsp
     	 <input type="submit" value="check" class="btn btn-waring"></div>
		</form>
		<br><br>
		<div class="text-right">
		 <button class="btn btn-primary" onclick="location='../SignUp/main.jsp'"> Home </button></div>

		</div>


	<div id="mask"></div>
            <div class="window2">
           
            .<a href="#" class="check">확인</a>
            		<h2 style="padding: 2px 32px 0;">좌석 선택</h2><a href="#" style="style:float" class="close">닫기</a>
            	
              <table border="0" id="sittable">
              
           
 <% 
 
 int i=0;
 for(int j=1;j<=10;j++){
	
 %>
 
 <tr>
 
 <% 
 	for(int k=1;k<=10;k++){
 		
 		i=i+1;
 %>
	
	
			
				<td  width="100px" height="100px" id="<%=i%>" onclick="javascript:clickTrEvent(this)">
				<input type="checkbox" name="sitn"  id="cb<%=i%>">
				<label for="cb<%=i%>" style="cursor:hand; "  >.</td> 
				
			
		




<% 
 	}
%>

 </tr>
 
 <% 
}	
 %>
 </table>
            </div>  
</body>
</html>