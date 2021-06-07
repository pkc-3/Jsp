<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 파라미터 수신
	request.setCharacterEncoding("utf-8");

	String uid  = request.getParameter("uid");
	String name = request.getParameter("name");
	String gender   = request.getParameter("gender");
	String hp   = request.getParameter("hp");
	String email   = request.getParameter("email");
	String pos  = request.getParameter("pos");
	String dep  = request.getParameter("dep");
	
	
	// DB 정보
	String host = "jdbc:mysql://54.180.160.240:3306/stillclsrn7";
	String user = "stillclsrn7";
	String pass = "1234";
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(host, user, pass);
		Statement stmt = conn.createStatement();
		String sql = "INSERT INTO `Employee` VALUES	('"+uid+"', '"+name+"','"+gender+"', '"+hp+"','"+email+"', '"+pos+"','"+dep+"', NOW());";
		stmt.executeUpdate(sql);
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	// 리다이렉트
//	response.sendRedirect("../test.jsp");

%>