<%@ page  contentType="text/html;charset=euc-kr" 
        import="java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
<%
request.setCharacterEncoding("utf-8");  //Set encoding
String add  =  request.getParameter("add");    //add= ����ڰ����ϴ� ���̺��� �̸� �� �¼���ġ���� �̸��� ������ (�����1ȣ��)        

 try{
  Class.forName("com.mysql.jdbc.Driver");
  String url = "jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf-8";//�� �������Է�
  Connection con = DriverManager.getConnection(url,"root","1234"); //�������
  Statement stat = con.createStatement();//��뼱��
 

  String query = "create table "+add+" (user char(15), phonr char(10))"; //���� ��
// String query = "create table abcdef (user char(15), phonr char(10))"; //�׽�Ʈ

  //String main=query.replace("'", " "); //add���� ������ ��������ǥ ���� �װ� ������(�ʿ���°ɷ� �˰Ե� �� ��Ÿ�� �����)
  //out.println(main);
 
  stat.executeUpdate(query); //�����ض� ���� 
  
  stat.close(); //��ȯ�ض� 
  con.close(); //�Ʋ��߻��

 




 }
 catch(Exception e){
  out.println( e ); //�ɸ�������
 }
%>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>