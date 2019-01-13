<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%
try {
	String bookid=request.getParameter("bookid");
	String rollno=request.getParameter("rollno");
	String date=request.getParameter("date");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","");
    Statement st=con.createStatement();		
    st.executeUpdate("INSERT INTO issue(book_id,issue_date,roll_no) VALUES('"+bookid+"','"+date+"','"+rollno+"')");
}
catch(Exception e)
{
	e.printStackTrace();}
%>
      <script type="text/javascript">
      	alert("Book Issued!");
      	window.location="main.html";
      </script>
</body>
</html>