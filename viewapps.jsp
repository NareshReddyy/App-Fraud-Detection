<%@ page  import="java.sql.*" import="databaseconnection.*" import="CT.*" import="javax.swing.JOptionPane"%>

<%@ include file="aheader.jsp"%>
<%
Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from apps where status_ct='Accepted' ");
%>	
<h2>
<br>
<font size="" color="#f65900"><b>New Apps..</h1></h2>
<table  cellspacing=10 >
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><td>

<%while(rs.next())
	{
		%>
		<tr><td><td><h4><font size="" color="#1c81f0"><b>ID: <%=rs.getString(1)%>
		<h4><font size="" color="#3ea5d7"><b>AppName: <%=rs.getString(2)%>
		<h4><font size="" color="#59b6e8"><b>Provider: <%=rs.getString(3)%>
		<h4><font size="" color="#54cde7"><b>Company: <%=rs.getString(4)%></font>
		<td width="40%"><h4><font size="" color="#3ad18a"><b><%=rs.getString(5)%>
		<td ><img src="view3.jsp?id=<%=rs.getString(1)%>" width="150" height="150" border="0" alt="">
		<td><font size="" color="#797979"><b><a href="acc.jsp?id=<%=rs.getString(1)%>"><h4><img src="images/Verify.png" width="42" height="42" border="0" alt="">
		<tr><td><br><br>



<%
	}

                                               %>
											 
</table></table>
<br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>
