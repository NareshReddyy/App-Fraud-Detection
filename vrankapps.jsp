<%@ page  import="java.sql.*" import="databaseconnection.*" import="CT.*" import="javax.swing.JOptionPane"%>

<%@ include file="aheader.jsp"%>
<%
Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from rank_tab ");
%>	
<h2>
<br>
<font size="" color="#dad63a"><b>Ranked Apps..</h1></h2></font>
<table  cellspacing=10  align="center" >
<tr bgcolor="#eeccdc"><th width="20%"><h2>Rank<th width="20%"><h2>ID<th width="20%"><h2>Name<th width="20%"><h2>Company

<%
String[] data=null;
while(rs.next())
	{
		data=Details.main(rs.getString(2));
		%>
		<tr bgcolor="#f7d7f4"><th align="center"><h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(1)%><h4><th><%=data[0]%><th><h4><%=data[1]%><th><h4><%=data[3]%>



<%
	}

												


                                               %>
											 
</table></table>
<br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>
