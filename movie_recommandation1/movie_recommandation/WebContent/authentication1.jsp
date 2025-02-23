<title> Authentication Page</title>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%
   	String username=request.getParameter("userid");      
   	String Password=request.getParameter("pass");
	
    try{
		
			
			String sql="SELECT * FROM admin where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			String utype="";
			if(rs.next()){
				
				response.sendRedirect("adminmain.jsp");
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