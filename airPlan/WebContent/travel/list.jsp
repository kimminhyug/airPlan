<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="airPlan.reviewBoardDBBean"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="airPlan.*"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page session="true"%>


<%!int pageSize = 10;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");%>
<%
	String se = (String) session.getAttribute("selecttext");


String se2=(String) session.getAttribute("selectchoice"); 
	String a = se;

	String pageNum = request.getParameter("pageNum");

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
		reviewBoardDBBean dbPro = reviewBoardDBBean.getInstance();
		count = dbPro.getArticleCount();

		if (count > 0) {

			articleList = dbPro.getArticles(startRow, pageSize);
		}

		number = count - (currentPage - 1) * pageSize;
	} else {
		reviewBoardDBBean dbPro = reviewBoardDBBean.getInstance();
		count = dbPro.getArticleCount();

		if (count > 0) {
			String abc = "";
			articleList = dbPro.selectArticle(a,se2);
		}

		number = count - (currentPage - 1) * pageSize;
	}
%>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">

	
<%String name = (String) session.getAttribute("UserId");%>
	function deleteSearch() {
		<%session.removeAttribute("selecttext");%>
	}
	//]]>
</script>

<html>
<head>
<script>
function Check(){
	var idid = '<%=name%>';
	if(idid == 'null'){
		alert("로그인을 해주세요.");
		location.href = "../SignUp/LoginPage.jsp";
	}else{
		location.href = "writeForm.jsp";
	}
}

</script>

<style>

.list{
	margin-top:50px;
	}
	.font{
	font-size:13px;
	}
	
	#big_Bottom {
	width:100%;
	height:100px;
	background:#FFFFFF;	
	}
	#bottom_Center{
	width:100%;
	height:100px;
	text-align: center;
	}
	
#gallery_Wrap {
	width: 900px;
	height: 100px;
}

#gallery_Box {
	width: 900px;
	
}

#gallery_Form {
	width: 250px;
	margin: 10px;
	background: #ffffff;
	display: inline-block;
}

#click_Heart_Wrap {
	width: 250px;
	height: 60px;
}

#click_Heart {
	width: 50px;
	height: 60px;
	margin: 0 auto;
	padding-top: 10px;
}

#wirte_Date {
	width: 250px;
	height: 20px;
	margin: 0 auto;
	text-align: right;
}

#ssumnail {
	width: 249px;
	height: 176px;
	padding: 0px;
}

#ssumnail img {
	width: 100%;
	height: 100%;
	border: 1px solid skyblue;
}

#title {
	width: 250px;
	height: 26px;
	font-weight: 700;
	font-size: 20px;
	overflow: hidden;
}

#content {
	width: 250px;
	height: 80px;
	overflow: hidden;
}

ul li {
	list-style: none;
	display: inline;
	float: left;
}

#header {
	position: relative;
	width: 100%;
	height: 334px;
	background: white;
	border: 2px solid white
}

#main {
	position: relative;
	width: 98%;
	background: white;
	margin-left: 1%;
	margin-right: 1%;
	display: grid;
}

#wrap {
	min-width: 100%;
	min-height: 1600px;
	margin-left: 0px;
	margin: 0px;
}
</style>

<script lang="JavaScript" src="airPlan.js"></script>

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
		<p  href="../Q&A/list.jsp">Gallery<small>_Gesipan</small></p>
</div>

</br>

	<article class="container">
	<div class="col-md-10 col-md-offset-1 list">
					<div>
					<center>
         			 <h2>Gallery <small>_ 여행일지</small></h2>
         			 <br>
         			 </center>
         			 <hr>
         	 		</div>
		<%
			if (count == 0) {
		%>

		<table class="table">
		<thead>
			<tr>
				
    			<td align="right">
    			<button type="button" class="btn btn-primary" onclick="Check()">글쓰기</button>
    			</td>
    		</tr>
  		</thead>
	</table>
	<center>
	<h4>게시판에 저장된 글이 없습니다.</h4>
	</center>
		<%
			} else {
		%>
	<form>
		<table class="table font">
		<thead>
  			<tr>
  			
    			<td align="right">
    			<button type="button" class="btn btn-primary" onclick="Check()">글쓰기</button>
    			</td>
  			</tr>
  				
  		</thead>
		</table>
	</form>
		
		<div id="gallery_Wrap">
			<div id="gallery_Box">

				<%
					for (int i = 0; i < articleList.size(); i++) {
							BoardDataBean article = articleList.get(i);
				%>

				<ul>
					<li>
						<div id="gallery_Form">
							<div id="top">

								<div id="click_Heart_Wrap">
									<!-- <div id="click_Heart">
										 <img width="50%" src="./images/heart.png"> 
									</div> -->

								</div>
								<div id="wirte_Date"><%=sdf.format(article.getReg_date())%></div>
							</div>
							<div id="ssumnail">


								<a
									href="content.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage%>">
									<img width="100%" src="<%=article.getimgLocation()%> ">
								</a>

							</div>
							<div id="title">
								<a
									href="content.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage%>">
									<%=article.getSubject()%></a>
							</div>
							<div id="content">
								<a
									href="content.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage%>">
									<%=article.getContent()%></a>

							</div>
							<div id="foot">
								<%=article.getWriter()%>,
								<%=article.getReadcount()%>조회
							</div>
						</div>
					</li>
				</ul>
				
				<%
					}
				%>
			</div>
		</div>
		
		<%}%>

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