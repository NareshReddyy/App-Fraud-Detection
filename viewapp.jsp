
	<%@ include file="pheader.jsp"%>
	<%@ page  import="java.sql.*" import="databaseconnection.*" %>
&nbsp;&nbsp;&nbsp;&nbsp;<br><br>
	<h1>Your apps
	</h1>
	<table align="center">

<%
try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	
String sss1 = "select * from apps where provider_ct='"+session.getAttribute("email")+"'  ";

	ResultSet rs1=st1.executeQuery(sss1);
	while(rs1.next())
	{
%>
		<tr><td><h3><font size="" color="#c8c431">ID: <%=rs1.getString(1)%></font></h3>
		<h2><font size="" color="#cd3268">Name: <%=rs1.getString(2)%></font>
		<h4><font size="" color="#dd3333">Status: <%=rs1.getString("status_ct")%></font>
		</h2><td><img src="view3.jsp?id=<%=rs1.getString(1)%>" width="220" height="150" border="0" alt="">
		<tr><td>	<br>	<tr><td>---------------------------------------------------------------------------------<td>---------------------------------------------------
<%

	}
}


catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

	</form>	</table>
	<%@ include file="footer.jsp"%>


