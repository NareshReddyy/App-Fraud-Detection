<%@ page  import="java.sql.*" import="databaseconnection.*" import="CT.*" %>

<%
		String id=request.getParameter("id");
		Eval2.main(id);
		response.sendRedirect("ana3_1.jsp");
		%>
		
		