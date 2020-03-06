<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "airPlan.noticeBoardDBBean" %>
<%@ page import = "airPlan.BoardDataBean" %>

<html>
<head>
<script lang="JavaScript" src="airPlan.js"></script>

    <link href="css/bootstrap.min.css" rel="stylesheet"/> 
    <link rel="stylesheet" type="text/css" href="css/list.css"/>
   <link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Anton|Do+Hyeon|Nanum+Pen+Script&amp;subset=korean,latin-ext,vietnamese" rel="stylesheet">

<meta charset="UTF-8">
<title>글수정</title>

</head>

<body>
<%
  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum");
  try{
	  noticeBoardDBBean dbPro = noticeBoardDBBean.getInstance(); 
      BoardDataBean article =  dbPro.updateGetArticle(num);
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
		<p  href="../Q&A/list.jsp">Notice<small>_Gesipan</small></p>
</div>

<br></br>

<article class="container">
	<div class="col-md-10 col-md-offset-1 list">
					<div>
         			 <h3>글 수정하기 <small>_ 공 지 사 항</small></h3>
         			 <br>
         			<hr style="border: solid 2px gray;">
         	 		</div>

<form method="post" name="writeform" 
action="updatePro.jsp" onsubmit="return writeSave()">

<br>
  
    <div class="form-group">
        <label for="subject">제목</label>
    <input type="hidden" name="pageNum" value="<%=pageNum %>">
    <input type="hidden" name="num" value="<%=num %>">
    <input type="hidden" name="writer" value="<%=article.getWriter() %>">
    <input type="text" class="form-control" id="subject" 
    			name="subject" value="<%=article.getSubject()%>">	
     </div>
     
     <div class="form-group">
        <label for="content" >내용</label>
        <textarea class="form-control" id="content" name="content" rows="9">
        <%=article.getContent()%></textarea>
      </div>
      
     	<div class="form-group text-right">
              <button type="submit" class="btn btn-primary" >글수정</button>
              &nbsp;
              <button type="reset" class="btn btn-info" >지우기</button>
              &nbsp;
              <button type="button" class="btn btn-default" 
              onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'">
             목록보기</button>
            </div>
</form>
</div>
</article>
<%
}catch(Exception e){}%>      
     
     
<br></br>
		 		
		<div class="Jnb">
		
			<br>
	 		 <center>ⓒ Airplan2018_2b02 / 문의 : 010-0000-0000 / AirPlan@naver.com / https://blog.naver.com/airplan2018_2b02 <br></center>
	 		 <center>팀장_고진호 / 코더_김민혁 / 웹퍼블리셔_임용섭 / 블로거_박제현</center>
	 	</div>
 
</body>
</html>