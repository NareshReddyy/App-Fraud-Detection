<%@ page  import="java.sql.*" import="databaseconnection.*" import="CT.*" %>

<%
		String id=request.getParameter("id");
		Eval.main(id);
response.sendRedirect("ana2_1.jsp");
		%>
		
		