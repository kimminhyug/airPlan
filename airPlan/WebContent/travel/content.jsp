<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "airPlan.reviewBoardDBBean" %>
<%@ page import = "airPlan.BoardDataBean" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>	
<%@ page import = "java.util.List" %>



<script>
if (self.name != 'reload') {
    self.name = 'reload';
    self.location.reload(true);
}
else self.name = ''; 

</script>
<html>
<head>
<style>
#wrap{
width:1300px;
margin:0 auto;

}
#gallery_Wrap{
width : 1300px;
height : 1300px;
margin: 0 auto;
}
#gallery_Box{
width : 1100px;
height : 1100px;
margin : 0 auto;

}
#gallery_Form{
width : 600xp;
margin : 10px;
border : 1px solid black;
background : #14AFFC;
display : inline-block;

}
#top{
width : 600xp;
height : 90px;
overflow : hidden;


}
#click_Heart_Wrap{
width : 600xp;
height:60px;


}

#click_Heart{
width : 550px;
height:60px;
margin : 0 auto;
padding-top : 10px;

}
#wirte_Date{
width : 600xp;
height : 20px;
margin : 0 auto;
text-align : center;

}
#ssumnail{
width:600xp;
height:176px;
padding : 0px;
}
#ssumnail img {
width  : 70%;
height : 100%;
border : 1px solid skyblue;
}
#title{
width : 600xp;
height : 26px;
font-weight : 700;
font-size : 20px;
overflow : hidden;
margin-bottom: 18px;

}
#content{
width : 600xp;
height : 80px;
overflow : hidden;

}
#foot {
width : 600xp;
height : 25px;
padding-top : 5px;
overflow : hidden;

}

ul li {
list-style : none;
display : inline;

}
#commentBtn{
width:150px;
}
</style>
<title>게시판</title>
<script lang="JavaScript" src="airPlan.js"></script>

    <link href="css/bootstrap.min.css" rel="stylesheet"/> 
    <link rel="stylesheet" type="text/css" href="css/list.css"/>
    <link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Pen+Script" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Anton|Do+Hyeon|Nanum+Pen+Script&amp;subset=korean,latin-ext,vietnamese" rel="stylesheet">
	
<meta charset="UTF-8">

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
		<p>Gallery<small>_Gesipan</small></p>
</div>

<br></br>

	<article class="container">
	<div class="col-md-10 col-md-offset-1 list">
					<div>
					<center>
         			 <h2>글 내용 <small>_ 여행일지</small></h2>
         			 <br>
         			 </center>
         			 <hr>
         	 		</div>

<%!int pageSize = 10;
    SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");
    int count = 0;
    int start=1;
    int end=1000;%>

<%
	int num = Integer.parseInt(request.getParameter("num"));

   String pageNum = request.getParameter("pageNum");

   SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");

   try{
      reviewBoardDBBean dbPro = reviewBoardDBBean.getInstance(); 
      BoardDataBean article =  dbPro.getArticle(num);
  
	  int ref=article.getRef();
	  int re_step=article.getRe_step();
	  int re_level=article.getRe_level();
	  
	  
	 String useridc=(String)session.getAttribute("UserId");
%>


<script type="text/javascript">

function Check(){
	var idid = '<%=useridc%>';
	if(idid == 'null'){
		alert("로그인을 해주세요.");
		location.href = "../SignUp/LoginPage.jsp";
		return false;
	}
}
</script>
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

  		
  		<table class="table font">
		<thead>
  			<tr>
  				<td align="left">
  				<h2> <%=article.getSubject()%></h2>
  				<h5> 글번호 : <%=article.getNum()%> / 작성자 : <%=article.getWriter()%></h5>
  				</td>
  		
  				<td align="right">
    			<h5> 날짜 :  <%=sdf.format(article.getReg_date())%> </h5>
    			</td>
  			</tr>
    			
  		</thead>
		</table>	
		

	<div class="from-group">
	<div class="form-group text-center">
	<img width="70%" src="<%=article.getimgLocation()%>"> </div>
	<br>
	<div class="form-group text-center">
	<%=article.getContent()%> </div>
	
	<% if(session.getAttribute("UserId") != null) {%>
	<% if(session.getAttribute("UserId").equals(article.getWriter())||session.getAttribute("UserId").equals("airPlan")) {%>
	
	</div>
	
	<br>
	<div class="form-group text-left">
	<%String url=article.getimgLocation();
	  String DownloadUrl=url.replace("https://","");
	%>
	<a href="<%=DownloadUrl%>" download>다운받기</a>
	</div>
  
	<div class="form-group text-right">
	
			 
			  <!-- <a href="<%=article.getimgLocation()%>" download>다운받기</a> -->

              <button type="button" class="btn btn-primary" onclick="">글수정</button>
              &nbsp;
              <button type="button" class="btn btn-danger" onclick="deleteCheck()">글삭제</button>
              &nbsp;
              </div>
              <%}
              }%>
    <div class="form-group text-right"> 
              <button type="button" class="btn btn-default" onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'">목록보기</button>
    </div>
  
	<br>
	
    
 
	
	<form method=post id="coco" action="commentpro.jsp">
	  <input type="hidden" value="<%=useridc%>" name="commentwrite">
	  <input type="hidden" value="<%=article.getNum()%>" name="number2">
		
		
		
        <label for="content" >댓글</label> <textarea class="form-control" id="content" name="commentText" rows="5">
		</textarea>
    	
    	<br>
    	
    	<div class="form-group text-right">
    	<button type="submit" class="btn btn-primary" onclick="return Check()">댓글작성</button>
    	</div>
    	
	 </form>
	 
	 <table class="table">
<%
    	int num2=article.getNum();
    int end1=1000;
    List<BoardDataBean> articleList2 = null; 
    List<BoardDataBean> articleList = null; 


    reviewBoardDBBean dbPro2 = reviewBoardDBBean.getInstance(); 


    articleList = dbPro2.getcommentArticle(num2);
      
       for (int i = 0 ; i<articleList.size() ; i++) {
           BoardDataBean article2 = articleList.get(i);
           
            %>
     <tr>
		<form method=post action="commentdeletePro.jsp">
				<Td><%=article2.getcommentWriter()%></td>
				<td><%=article2.getReg_date() %></td>
				<input type="hidden" value="<%=useridc%>" name="loginid">
				<input type="hidden" value="<%=article2.getcommentWriter()%>" name="commentwrite">
			 	 <input type="hidden" value="<%=article.getNum()%>" name="number2">
			   <input type="hidden" value="<%=article2.getReg_date()%>" name="coomentdate">
			   <td>	 <%=article2.getcommentContent()%></td>
				<td align="right"><button type="submit" class="btn btn-danger">삭제</button></td>
				<!-- <input type="submit" style="width:100px;"value="삭제"></td> -->
		</form>
	</tr>
	  
  <%} %>
     </table>  
			</div>
	
	
	</article>
<%
   }catch(Exception e){} 
 %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
</script>
<script type="text/javascript" src="js/bootstrap.js">
</script>
</body>
</html>