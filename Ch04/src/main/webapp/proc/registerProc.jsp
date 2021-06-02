<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>registerProc</title>
	<!--
		 : 2021/
		 : 
		 :
	-->
</head>
<body>
	<h1>useBean 액션태그 실습하기</h1>
	<%--
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String[] hobbies = request.getParameterValues("hobby");
		String addr = request.getParameter("addr");
	--%>
	
	<jsp:useBean id="rb" class="sub1.ResisterBean">
		<jsp:setProperty name="rb" property="name"/>
		<jsp:setProperty name="rb" property="gender"/>
		<jsp:setProperty name="rb" property="hobby"/>
		<jsp:setProperty name="rb" property="addr"/>
	</jsp:useBean>
	
	<p>
		이름 : <%= rb.getName() %><br>
		성별 : <%= rb.getGender() == 1 ? "남자" : "여자" %><br>
		취미 : 
		<%
			for(String hobby : rb.getHobby()){
				out.print(hobby+", ");
			}
		%><br>
			
		주소 : <%= rb.getAddr() %><br>
	</p>
</body>
</html>