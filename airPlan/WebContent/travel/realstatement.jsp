<%@ page  contentType="text/html;charset=euc-kr" 
        import="java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
<%
request.setCharacterEncoding("utf-8");  //Set encoding
String add  =  request.getParameter("add");    //add= 사용자가원하는 테이블의 이름 즉 좌석배치도의 이름을 가저옴 (비행기1호등)        

 try{
  Class.forName("com.mysql.jdbc.Driver");
  String url = "jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf-8";//내 디비명을입력
  Connection con = DriverManager.getConnection(url,"root","1234"); //내디비비번
  Statement stat = con.createStatement();//사용선언
 

  String query = "create table "+add+" (user char(15), phonr char(10))"; //보면 암
// String query = "create table abcdef (user char(15), phonr char(10))"; //테스트

  //String main=query.replace("'", " "); //add변수 넣을때 작은따음표 생김 그거 삭제함(필요없는걸로 알게됨 내 오타로 생긴겨)
  //out.println(main);
 
  stat.executeUpdate(query); //실행해라 쿼리 
  
  stat.close(); //반환해라 
  con.close(); //아껴야산다

 




 }
 catch(Exception e){
  out.println( e ); //걸리지마라
 }
%>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>