<%@ page	import="java.util.Date" import="java.util.Calendar" import="java.text.SimpleDateFormat"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String key = request.getParameter("id");
String rating = request.getParameter("rating");
String email = (String)session.getAttribute("email");
String name = (String)session.getAttribute("name");

	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	String date = sdf.format(new Date()); 

try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	
String sss1 = "insert into userrating_tab(appid_ct,rating_ct,name_ct,email_ct,date_ct) values('"+key+"','"+rating+"','"+email+"','"+name+"','"+date+"')";
st1.executeUpdate(sss1);

try{
System.out.println("insert into rating_tab values('"+key+"','"+date+"','1')");

	st1.executeUpdate("insert into rating_tab values('"+key+"','"+date+"','1')");
}
catch(Exception e)
{
System.out.println("in catvch");

	ResultSet rs=st1.executeQuery("select * from rating_tab where appid_ct='"+key+"' and date_ct='"+date+"'");
	if(rs.next()){
		st1.executeUpdate("update rating_tab set count_ct='"+(rs.getInt(3)+1)+"'  where appid_ct='"+key+"' and date_ct='"+date+"'  ");
	}}
response.sendRedirect("search3.jsp?id="+key+"&&m=succ");

		
}
catch(Exception e)
{
System.out.println(e);
}

%>

