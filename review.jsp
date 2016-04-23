<%@ page	import="java.util.Date" import="java.util.Calendar" import="java.text.SimpleDateFormat"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String key = request.getParameter("id");
String rev= request.getParameter("rev");

String email = (String)session.getAttribute("email");
String name = (String)session.getAttribute("name");

	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	String date = sdf.format(new Date()); 

try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	
String sss1 = "insert into userreview_tab(appid_ct,review_ct,name_ct,email_ct,date_ct) values('"+key+"','"+rev+"','"+email+"','"+name+"','"+date+"')";
st1.executeUpdate(sss1);

try{
	st1.executeUpdate("insert into review_tab values('"+key+"','"+date+"','"+rev+"')");
}
catch(Exception e)
{

	}

		

response.sendRedirect("search3.jsp?id="+key+"&&m=succ");
}

catch(Exception e1)
{
out.println(e1.getMessage());
}%>

