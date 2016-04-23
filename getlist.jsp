<%@ page  import="java.sql.*" import="databaseconnection.*" import="CT.*" import="javax.swing.JOptionPane"%>

<%@ include file="uheader.jsp"%>
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


<%
String[] data=null;
while(rs.next())
	{
		data=Details.main(rs.getString(2));
		%>
		
		<tr><td><font size="+2" color="#3ad18a"><b><%=data[1]%>
		<h4><font size="" color="#54cde7"><b>Sponsor by: <%=data[3]%></font>
		<br><br>

		<a href="search3.jsp?id=<%=rs.getString(2)%>" target="_blank" class="small-box-footer"><h4>More info <i class="fa fa-arrow-circle-right"></h4></i></a>
			
			<td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<td ><img src="view3.jsp?id=<%=rs.getString(2)%>" width="150" height="150" border="0" alt="">
		<td><font size="" color="#797979">	

		<tr><td><br><br>	




<%
	}

												


                                               %>
		   <tr><td><form method="post" action="fraud.jsp">
			<input type="submit" Value="Fraud Detection" >
		   </form>
											 
</table></table>
<br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>
