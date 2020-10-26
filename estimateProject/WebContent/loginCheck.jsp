<%@page import="java.sql.*" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
 <script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<%		
		Connection con = null;
		String sql = "select * from login where id = ?";
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String manager = "";
		String email = "";
		String phone = "";
String url = "jdbc:mysql://localhost:3306/testdb?serverTimezone=UTC";
try {
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	System.out.println("after forName");
	con = DriverManager.getConnection(url,"root","1234");
	System.out.println("database connect");
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	ResultSet rs = pstmt.executeQuery();
	if(rs.next()){
		String cid = rs.getString("id");
		String cpass = rs.getString("password");
		String cmanager = rs.getString("manager");
		String cemail = rs.getString("memail");
		String cphone = rs.getString("mphone");
		manager = cmanager;
		email = cemail;
		phone = cphone;
		if(id.equals(cid) && password.equals(cpass))
		{
			if(id.equals("purium.sales1")){
				response.sendRedirect("deliveryform1.jsp");
			}else if(id.equals("purium.sales2"))
			{
				response.sendRedirect("deliveryform2.jsp");
			}else if(id.equals("purium.sales3"))
			{
				response.sendRedirect("deliveryform3.jsp");
			}
		}else{
			%>
			<script>
			alert('비밀번호를 다시 입력해주세요.');
			history.go(-1);
			</script>
			<%
			
		}
		}else{
			%>
			<script>
			alert('아이디가 존재하지 않습니다.');
			history.go(-1);
			</script>
			<%
		}
	
	System.out.println("DBMS connection success");
}catch(Exception e)
{
	System.out.println("fail");
}
	con.close();
 %>

</body>

</html>