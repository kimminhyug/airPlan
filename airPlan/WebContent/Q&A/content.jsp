<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "airPlan.BoardDBBean" %>
<%@ page import = "airPlan.BoardDataBean" %>
<%@ page import = "java.text.SimpleDateFormat" %>


<%
String UserId =null;
if (session.getAttribute("UserId") != null){
	UserId = (String) session.getAttribute("UserId");
}
%>
<html>
<head>
<%String name=(String)session.getAttribute("UserId");%>

<title>게시판</title>
<script lang="JavaScript" src="airPlan.js"></script>

    <link href="css/bootstrap.min.css" rel="stylesheet"/> 
    <link rel="stylesheet" type="text/css" href="css/list.css"/>
    <link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Anton|Do+Hyeon|Nanum+Pen+Script&amp;subset=korean,latin-ext,vietnamese" rel="stylesheet">
	
<meta charset="UTF-8">

</head>
<body>
<%
   int num = Integer.parseInt(request.getParameter("num"));
   String pageNum = request.getParameter("pageNum");

   SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");

   try{
      BoardDBBean dbPro = BoardDBBean.getInstance(); 
      BoardDataBean article =  dbPro.getArticle(num);
  
	  int ref=article.getRef();
	  int re_step=article.getRe_step();
	  int re_level=article.getRe_level();
%>
<script>
function deleteCheck(){
	if (confirm("삭제 하시겠습니까?")){
		location.href='deletePro.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'
	}else{
		alert("삭제 취소되었습니다.");
		return false;
	}
}
</script>

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
		<p>Q&A<small>_Gesipan</small></p>
</div>

<br></br>

<div class="container">
	<div class="col-md-10 col-md-offset-1 list">
       

      <table class="table font">
		<thead>
  			<tr>
  				<td align="left">
  				<h2> <%=article.getSubject()%></h2>
  				<br>
  				<hr style="border: solid 1px gray;">
  				<h5> 작성자 : <%=article.getWriter()%> </h5>
  				<h5> 글번호 : <%=article.getNum()%> / 조회수 : <%=article.getReadcount()%> </h5>
  				</td>
  		
  				<td align="right">
    			<h5> 작성날짜 :  <%= sdf.format(article.getReg_date())%> </h5>
    			</td>
  			</tr>
    			
  		</thead>
		</table>	
		
	<br><br>
	<div class="from-group">
		<div class="form-group text-left">

		<%=article.getContent()%>

		</div>
	</div>
	
	<br><br><br><br><br><br>
	<!-- 임시 줄  -->
	
	<form>
<% if(session.getAttribute("UserId") != null) {%>
	<% if(session.getAttribute("UserId").equals(article.getWriter())||session.getAttribute("UserId").equals("airPlan")) {%>
 
  	<div class="form-group text-right">
  	
  			 
              <% if(session.getAttribute("UserId").equals("airPlan")) {%>   
              <button type="button" class="btn btn-primary"  onclick="document.location.href='writeForm.jsp?num=<%=num%>&ref=<%=ref%>&re_step=<%=re_step%>&re_level=<%=re_level%>'">
              답글쓰기</button>  &nbsp;         
             <%
			}%>
			
              <button type="button" class="btn btn-primary"
              onclick="document.location.href='updateForm.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'" >
              글수정</button>
              &nbsp;
              
              <button type="button" class="btn btn-danger" onclick="deleteCheck()" >
              글삭제</button>
               &nbsp;
               <% } %>
              <% } %>
            
   </div>


    
	<%
 	}catch(Exception e){} 
 	%>
	</form>  
</div>
</div>
<article class="container">
	<div class="col-md-11">
	
	<div class="form-group text-right">
              <button type="button" class="btn btn-default" onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'">
              목록으로</button>
            </div>
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