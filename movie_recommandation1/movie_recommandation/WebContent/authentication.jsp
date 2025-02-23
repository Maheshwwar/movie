<title> Authentication Page</title>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%
   	String username=request.getParameter("userid");      
   	String Password=request.getParameter("pass");
	String uloc;
	
    try{
		
			application.setAttribute("uname",username);
			String sql="SELECT * FROM user where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			String utype="";
			if(rs.next()){
				
				int i = rs.getInt(1);
				 uloc=rs.getString(10);
				application.setAttribute("uid",i); 
				application.setAttribute("ulocation",uloc);
				response.sendRedirect("usermain.jsp");
			}
			else
			{
				response.sendRedirect("wronglogin.jsp");
			}
		

	}
	catch(Exception e)
	{
		out.print(e);
	}
%>