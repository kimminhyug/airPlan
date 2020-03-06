<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "airPlan.noticeBoardDBBean" %>
<%@ page import = "airPlan.BoardDataBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.SimpleDateFormat" %>
	
<%!
    int pageSize = 10;
    SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>

<%
    String pageNum = request.getParameter("pageNum");
String se = (String) session.getAttribute("selectnoticetext");
String se2=(String) session.getAttribute("selectnoticechoice"); 
String a = se;

    if (pageNum == null) {
        pageNum = "1";
    }

    int currentPage = Integer.parseInt(pageNum);
    int startRow = (currentPage - 1) * pageSize + 1;
    int endRow = currentPage * pageSize;
    int count = 0;
    int number = 0;
    List<BoardDataBean> articleList = null; 
   
   
    
    if (a == null) {
    	noticeBoardDBBean dbPro = noticeBoardDBBean.getInstance();
		count = dbPro.getArticleCount();
		if (count > 0) {
	        articleList = dbPro.getArticles(startRow, pageSize);
	    }

		number = count - (currentPage - 1) * pageSize;
	} else {
		  noticeBoardDBBean dbPro = noticeBoardDBBean.getInstance();
		count = dbPro.getArticleCount();

		if (count > 0) {
			String abc = "";
			articleList = dbPro.selectArticle(a,se2);
		}

		number = count - (currentPage - 1) * pageSize;
	}
    noticeBoardDBBean dbPro = noticeBoardDBBean.getInstance();
    count = dbPro.getArticleCount();
    
    
	number = count-(currentPage-1)*pageSize;
%>
<% String name=(String)session.getAttribute("UserId")== null ? "":(String)session.getAttribute("UserId");%>
<%session.removeAttribute("selectnoticetext");%>

<html>
<head>

    <link href="css/bootstrap.min.css" rel="stylesheet"/> 
    <link rel="stylesheet" type="text/css" href="css/list.css"/>
   <link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Anton|Do+Hyeon|Nanum+Pen+Script&amp;subset=korean,latin-ext,vietnamese" rel="stylesheet">

<meta charset="UTF-8">


<title>게시판</title>
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
			
			<%if(session.getAttribute("UserId") != null){ %>
			<li id="id"><a>
			<%= session.getAttribute("UserId") %>님</a></li>
			<%} %>
			<li><a class="menuLink" href="../SignUp/main.jsp" id="">Main</a></li>
				
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
					<center>
         			 <h2>Customer Center <small>_ 공 지 사 항</small></h2>
         			<br>
         			 </center>
         			 <hr>
         	 		</div>
         	 		
<% if (count == 0) { %>

<table class="table">
	<thead>
	 <tr>
    	<td align="center">
              게시판에 저장된 글이 없습니다.
    	</td>
   	</tr>
  </thead>
</table>

<% } else {%>
<table class="table table-hover table table-striped"> 
<thead>
    <tr > 
      <td align="center"  width="50"  ><strong>번 호</strong></td> 
      <td align="center"  width="250" ><strong>제   목</strong></td> 
      <td align="center"  width="100" ><strong>작성자</strong></td>
      <td align="center"  width="150" ><strong>작성일</strong></td> 
      <td align="center"  width="50" ><strong>조 회</strong></td>
    </tr>
<%  
   for (int i = 0 ; i < articleList.size() ; i++) {
       BoardDataBean article = articleList.get(i);
       
%>
  <tr height="30">
    <td  width="50" align="center" > <%=number--%></td>
    <td  width="250" align="left">
<%
	int wid=0; 
	if(article.getRe_level()>0){
	   wid=5*(article.getRe_level());
%>
	  <img src="images/level.png" width="<%=wid%>" height="16">
	  <img src="images/re.png">
<%  }else{%>
	  <img src="images/level.png" width="<%=wid%>" height="16">
<%  }%>
           
      <a href="content.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage%>">
           <%=article.getSubject()%></a> 
<% if(article.getReadcount()>=20){%>
         <img src="images/hot.png" border="0" height="16" ><%}%> </td>
    <td width="100" align="center"> 
                     관리자</a></td>
    <td width="150" align="center"><%= sdf.format(article.getReg_date())%></td>
    <td width="50" align="center"><%=article.getReadcount()%></td>
  </tr>
<%}%>
</thead>
</table>
<%}%>

<center>
<ul class="pagination">
<%
    if (count > 0) {
        int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		int startPage =1;
		
		if(currentPage % 10 != 0)
           startPage = (int)(currentPage/10)*10 + 1;
		else
           startPage = ((int)(currentPage/10)-1)*10 + 1;

		int pageBlock = 10;
        int endPage = startPage + pageBlock - 1;
        if (endPage > pageCount) endPage = pageCount;
        
        if (startPage > 10) { %>
          <li><a href="list.jsp?pageNum=<%= startPage - 10 %>">이전</a></li>
<%      }
        
        for (int i = startPage ; i <= endPage ; i++) {  %>
           <li><a href="list.jsp?pageNum=<%= i %>"><%= i %></a></li>
<%      }
        
        if (endPage < pageCount) {  %>
        <li><a href="list.jsp?pageNum=<%= startPage + 10 %>">다음</a></li>
<%
        }
    }
%>
</ul>
	</center>

<form>
	<table class="table font">
		<thead>
  			<tr>
  				
    			<td align="right">
    			<% 
  				if(name.equals("airPlan")){
  				%>
    			<button type="button" class="btn btn-primary" onclick="document.location.href='writeForm.jsp'">글쓰기</button>
    			<%
  				}
    			%>
    			</td>
  			</tr>
  		</thead>
	</table>
</form>
</div>
</article>


<article class="container">
	<div class="col-md-10 col-md-offset-1 list" style="margin-left:163px;">

	<div class="form-group">
				<form method="post" action="selectpro.jsp">
				<div class="col-md-2">
					
					<select name="select" style="width:100px; height:34px; margin-left:30px;">
					     <option value="title" selected="selected">제목</option>
					     <option value="content" >내용</option>
					     <option value="writer">작성자</option>
					     <option value="all">통합검색</option>
				      
				    </select>
			    
             	</div>
             	<div class="col-md-7">
             			<input type="text" class="form-control" name="text" placeholder="검색란">
             	</div>
             	<div class="col-md-3">
              		<button type="submit" class="btn btn-primary">찾기</button></div>
              	</form>
           	</div>
    </div>
</article>

<br><br>
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