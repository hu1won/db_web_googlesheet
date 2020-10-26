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
		String sqlpu = "insert into purium(mnumfront,ddate,dlocation,pay_condition) values(?,?,?,?)";
		String sqlps = "insert into puservice(mnumfront,ddate,dlocation,pay_condition) values(?,?,?,?)";
		String sqldp = "insert into drpurium(mnumfront,ddate,dlocation,pay_condition) values(?,?,?,?)";
		String sqlnumpu = "select id from purium order by id desc limit 1";
		String sqlnumps = "select id from puservice order by id desc limit 1";
		String sqlnumdp = "select id from drpurium order by id desc limit 1";
		String mnumfrontpu = "pu-sd-";
		String mnumfrontps = "ps-sd-";
		String mnumfrontdp = "dp-sd-";
		String mnumfront = "";
		String ajdate = "";
		String ajlocation = "";
		String ajcondition = "";
		String ajcustomer = "";
		int i=1;
		String date = request.getParameter("date");
		String location = request.getParameter("location");
		String condition = request.getParameter("condition");
		String customer = request.getParameter("customer");
		String url = "jdbc:mysql://localhost:3306/testdb?serverTimezone=UTC";
		String btnclick = request.getParameter("btnclick");
try {
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	System.out.println("after forName");
	con = DriverManager.getConnection(url,"root","1234");
	if(btnclick.equals("퓨리움")){
		PreparedStatement pstmt = con.prepareStatement(sqlpu);
		pstmt.setString(1,"pu-sd");
		pstmt.setString(2,date);
		pstmt.setString(3,location);
		pstmt.setString(4,condition);
		pstmt.executeUpdate();
		PreparedStatement pstmt1 = con.prepareStatement(sqlnumpu);
		ResultSet rs = pstmt1.executeQuery();
		if(rs.next()){
			String punum = rs.getString("id");
			mnumfront = punum;
			System.out.println(punum);
		}
		ajdate = date;
		ajlocation = location;
		ajcondition = condition;
		ajcustomer = customer;
		//response.sendRedirect("productform.jsp");

	}else if(btnclick.equals("퓨리움 서비스"))
	{
		PreparedStatement pstmt = con.prepareStatement(sqlps);
		System.out.println(btnclick);
		pstmt.setString(1,"ps-sd");
		pstmt.setString(2,date);
		pstmt.setString(3,location);
		pstmt.setString(4,condition);
		pstmt.executeUpdate();
		PreparedStatement pstmt1 = con.prepareStatement(sqlnumpu);
		ResultSet rs = pstmt1.executeQuery();
		if(rs.next()){
			String punum = rs.getString("id");
			mnumfront = punum;
		}
		ajdate = date;
		ajlocation = location;
		ajcondition = condition;
		ajcustomer = customer;
		//response.sendRedirect("productform2.jsp");

	}else {
		PreparedStatement pstmt = con.prepareStatement(sqldp);
		System.out.println(btnclick);
		pstmt.setString(1,"dp-sd");
		pstmt.setString(2,date);
		pstmt.setString(3,location);
		pstmt.setString(4,condition);
		pstmt.executeUpdate();
		PreparedStatement pstmt1 = con.prepareStatement(sqlnumpu);
		ResultSet rs = pstmt1.executeQuery();
		if(rs.next()){
			String punum = rs.getString("id");
			mnumfront = punum;
		}
		ajdate = date;
		ajlocation = location;
		ajcondition = condition;
		ajcustomer = customer;
		//response.sendRedirect("productform3.jsp");

	}
		//System.out.println(customer);
		
	System.out.println("DBMS connection success");
}catch(Exception e)
{
	System.out.println("fail");
}
	con.close();
 %>
 <script type="text/javascript" language="javascript">
var mnumfront = "<%=mnumfront%>"
var ajdate = "<%=date%>"
var ajlocation = "<%=location%>"
var ajcondition = "<%=condition%>"
var ajcustomer = "<%=customer%>"
var ajbtnclick = "<%=btnclick%>"
window.onload = function dosomething(){
$.ajax({
	url: "https://script.google.com/macros/s/AKfycbylj4XLFyCIUttw4wSdIto2A_4n7jVSiLsqRByzSgG__bO5I-a9/exec",
	data: {앞자리:mnumfront,날짜:ajdate,장소:ajlocation,조건:ajcondition,구매자:ajcustomer
	      },
	type: "POST",
	success: function(data){
	alert(ajdate);
	},
	error: function(request,status,error){
	console.log('Error');
	}
	});
	if(ajbtnclick == "퓨리움"){
window.location.href = 'productform3-1.jsp';
	}else if(ajbtnclick =="퓨리움 서비스"){
		window.location.href = 'productform3-2.jsp';
	}else if(ajbtnclick =="닥터퓨리움"){
		window.location.href = 'productform3-3.jsp';
	}
}

	</script>
</body>
</html>