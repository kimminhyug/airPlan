<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="color.jspf"%>
<html>

<head>

<SCRIPT>
function doSubmit() 
{ 
frm.action = "writePro..jsp"; 
frm.encoding = "application/x-www-form-urlencoded"; 
frm.submit(); 
} 

</SCRIPT>
<script lang="JavaScript" src="airPlan.js"></script>

    <link href="css/bootstrap.min.css" rel="stylesheet"/> 
    <link rel="stylesheet" type="text/css" href="css/list.css"/>
   <link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Anton|Do+Hyeon|Nanum+Pen+Script&amp;subset=korean,latin-ext,vietnamese" rel="stylesheet">

<meta charset="UTF-8">
<title>글작성</title>
</head>

<body>
<% 
  int num = 0, ref = 1, re_step = 0, re_level = 0;
  String strV = "";
  try{
    if(request.getParameter("num")!=null){
	   num=Integer.parseInt(request.getParameter("num"));
	   ref=Integer.parseInt(request.getParameter("ref"));
	   re_step=Integer.parseInt(request.getParameter("re_step"));
	   re_level=Integer.parseInt(request.getParameter("re_level"));
    }
    String userid=(String)session.getAttribute("UserId");
%>

<div class="Jnt">
	<div class="logo">
			<a href="../SignUp/main.jsp">
				<img src="image/logo.png">
			</a>
	</div>
	
	<div id="hd">
				
		<ul>
			
			<li id="id" style="display: inline; visibility: 'hidden';" ><a>
			<%= session.getAttribute("UserId") %>님</a></li>
			
			<li><a class="menuLink" href="../SignUp/main.jsp" id="">Main</a></li>
		
			<li><a href="#">info</a></li>
			
			<li><a class="menuLink" href="../travel/list.jsp" id="">Diary</a></li>
			
			<li><a class="menuLink" href="../Q&A/list.jsp" id="diary">Q&A</a></li>
			
			<li><a class="menuLink" href="../notice/list.jsp" id="diary">Notice</a></li>
			

		</ul>
</div>

</div>



<div class="Pts">
		<p  href="../Q&A/list.jsp">Gallery<small>_Gesipan</small></p>
</div>

<br></br>

<article class="container">
	
	<div class="col-md-10 col-md-offset-1 list">
					<div>
			
         			 <h3>글 작성하기 <small>_ 여행일지</small></h3>
         			 <br>
         			<hr style="border: solid 1px gray;">
         			
         			 <hr>
         	 		</div>
         	 		
<form method="post" name="writeform" enctype="Multipart/form-data"
      action="writePro.jsp" onsubmit="return writeSave()">
      <br>
	<input type="hidden" name="num" value="<%=num%>">
	
		<input type="hidden" class="form-control" name="writer" value="<%=userid%>">
		
		<div class="form-group">
        <label for="subject">제목</label>
				  <input type="text" class="form-control" id="subject" name="subject" placeholder="제목을 입력하세요.">	
        </div>
        
        <div class="form-group">
        <label for="content" >내용</label>
				 <textarea class="form-control" id="content" name="content" rows="9"></textarea>
     	 </div>
				

		<div class="form-group">
		<label for="file">File</label>
		 <input type="file" name="fileName1" class="file">
		</div>
	
		<br><br>
		
		<div class="form-group text-right">
              <button type="submit" class="btn btn-primary" onclick="doSubmit()" >글쓰기</button>
              &nbsp;
              <button type="reset" class="btn btn-info" >지우기</button>
              &nbsp;
              <button type="button" class="btn btn-default" OnClick="window.location='list.jsp'">목록보기</button>
            </div>
			 
	
			
	


 <%
  }catch(Exception e){}
%>     
	</form>
</div>   
</article>

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