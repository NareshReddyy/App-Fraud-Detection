<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<%@ page  import="java.sql.*" import="CT.*" import="javax.swing.JOptionPane"%>

<%@ include file="aheader.jsp"%>
<%
Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from provider where status='non' ");
%>	
<h2>
<br>
<font size="" color="#f65900"><b>New Users are</h1></h2>
<table width=700 cellspacing=10 >
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><td>

<tr><td><td><h3><font size="" color="#004f9d"><b><b>User Id<td><h3><font size="" color="#004f9d"><b>Name<td><h3><font size="" color="#004f9d"><b>Phone<td><h3><font size="" color="#004f9d"><b>Email<td><h3><font size="" color="#004f9d"><b>Company<td><h3><font size="" color="#004f9d"><b>Desicion
<%while(rs.next())
	{
		%>
		<tr><td><td><h4><font size="" color="#797979"><b><%=rs.getString(1)%>
		<td><h4><font size="" color="#797979"><b><%=rs.getString(2)%>
		<td><h4><font size="" color="#797979"><b><%=rs.getString(5)%>
		<td><h4><font size="" color="#797979"><b><%=rs.getString(6)%></font>
		<td><h4><font size="" color="#797979"><b><%=rs.getString(7)%>
		<td><font size="" color="#797979"><b><a href="des.jsp?id=<%=rs.getString(1)%>"><h4><font size="" color="#797979"><b>Accept</a> / <a href="des1.jsp?id=<%=rs.getString(1)%>"><font size="" color="#797979"><b>Decline</a>



<%
	}

												


                                               %>
											 
</table></table>
<br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>
