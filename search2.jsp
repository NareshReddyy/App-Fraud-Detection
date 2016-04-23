<%@ page  import="java.sql.*" import="databaseconnection.*" %>

<%@ include file="uheader.jsp"%>

          <div class="row">
<br><br>
<h1>Search results for '<%=request.getParameter("key")%>'</h1>
<br>
<%
String key = request.getParameter("key");



try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	
String sss1 = "select * from apps where appname_ct like '%"+key+"%'  && status_ct='Accepted'";

	ResultSet rs1=st1.executeQuery(sss1);
	while(rs1.next())
	{
%>

            <div class="col-lg-3 col-xs-6">
			<table align="center">
			<tr>
				<td><img src="view3.jsp?id=<%=rs1.getString(1)%>" width="160" height="162" border="0" alt=""></td>
			</tr>
			<tr>
				<td align="center"><font size="+2" color="#10adbe"><%=rs1.getString("appname_ct")%></font></td>
			</tr>
			<tr>
				<td align="center"><font size="+1" color="#543cdd">Provided by : <%=rs1.getString(4)%></font></td>
			</tr>
			  <tr><td><a href="search3.jsp?id=<%=rs1.getString(1)%>" target="_blank" class="small-box-footer"><h4>More info <i class="fa fa-arrow-circle-right"></h4></i></a>
			</table>

            </div><!-- ./col -->
<%

	}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}%>
</div>
<br><br><br><br><br>
<%@ include file="footer.jsp"%>