	<%@ include file="aheader.jsp"%>
<%@ page	import="java.util.Date" import="java.util.Calendar" import="java.text.SimpleDateFormat"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
	SimpleDateFormat sdf = new SimpleDateFormat("dd/M/yyyy");
	String date = sdf.format(new Date()); 
	
String ids= request.getParameter("ids").trim();;
String s[]=ids.split("\\s+");

System.out.println(s.length);

try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
Statement st2 = con1.createStatement();
ResultSet rs=st1.executeQuery("select * from apps");
while(rs.next())
{
	 try{
		 		 System.out.println("insert into ranking_tab values("+rs.getString(1)+",'"+date+"',0)");
		 st2.executeUpdate("insert into ranking_tab values("+rs.getString(1)+",'"+date+"',0)");

	 }catch(Exception e){System.out.println(e);}
}
st1.executeUpdate("delete from rank_tab");	
int i=1;
for(String s1:s){
st1.executeUpdate("update ranking_tab set rank_ct="+i+" where appid_ct='"+s1+"' and date_ct='"+date+"'");	
st1.executeUpdate("insert into rank_tab values('"+i+"','"+s1+"')");	

++i;
}
response.sendRedirect("admin_home.jsp?id=succ");


}


catch(Exception e1)
{
out.println(e1.getMessage());
}


%>	

<%@ include file="footer.jsp"%>
