<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
  <script type='text/javascript' src='dwr/engine.js'></script>
  <script type='text/javascript' src='dwr/util.js'></script>
  <script type='text/javascript' src='dwr/interface/Intro.js'></script>
  <script>
  function testDWR() {
	  var name = document.getElementById("name").value;

	  
      Tutorial.sayHello(name) {
    	    alert(name);
      });
       
  }


</script>

<meta charset="EUC-KR">
<title>Insert title here</title>

</head>
<body>
<input type="text" id="name"/><br/>
    <input type="text" id="title"/><br/>
    <button onclick="testDWR()">테스트</button>



</body>
</html>