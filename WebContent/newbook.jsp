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
	String bookname=request.getParameter("bookname");
	String author=request.getParameter("author");
	String edition=request.getParameter("edition");
	String dept=request.getParameter("dept");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","");
    Statement st=con.createStatement();		
    st.executeUpdate("INSERT INTO books VALUES('"+bookid+"','"+bookname+"','"+author+"','"+edition+"','"+dept+"')");
}
catch(Exception e)
{
	e.printStackTrace();}
%>
      <script type="text/javascript">
      	alert("Book added to library!");
      	window.location="main.html";
      </script>
</body>
</html>