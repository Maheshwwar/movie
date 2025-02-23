<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 
	Template 2047 Brown Field
	by www.tooplate.com 
-->

<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />


</head>
<body>



<%
			//Connection connection = null;
     int itemid= Integer.parseInt(request.getParameter("imgid"));
	     	String itemtitle=request.getParameter("tag");
			String itemcolor=request.getParameter("color");
            String itemdescription=request.getParameter("desc");
            String itemuses=request.getParameter("uses");
			String itemprice=request.getParameter("location");
			//out.println(uname);
			//out.println(uemail);
			//out.println(ugen);
			//system.out.println(uname+uemail+upass+ugen);
           		
		try
		{
			String query="update images set itemtitle='"+itemtitle+"',itemcolor='"+itemcolor+"',itemdescription='"+itemdescription+"',itemuses='"+itemuses+"',itemprice='"+itemprice+"' where id='"+itemid+"'";
	
	

 Statement st=connection.createStatement();

st.executeUpdate(query);
		//out.print("USER UPADATED SUCCESSFULLY");
		}
		catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
		
		%>
			<jsp:forward page="ViewAllItems.jsp" />

	</body>
	</html>