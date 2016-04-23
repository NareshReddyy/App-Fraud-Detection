<%@ page  import="java.sql.*" import="databaseconnection.*" import="CT.*" %>

<%@ include file="uheader.jsp"%>

<br><b>
<font size="+3" color="#ff8000">Genuine Apps</font>

          <div class="row">
<br>
<%


String[] data=null;

try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	
String sss1 = "select * from result_tab where ranking_ct like 'normal'  && rating_ct like 'normal' && review_ct like 'normal' ";

	ResultSet rs1=st1.executeQuery(sss1);
	while(rs1.next())
	{
		data=Details.main(rs1.getString(1));

%>

            <div class="col-lg-3 col-xs-6">
			<table align="center">
			<tr>
				<td><img src="view3.jsp?id=<%=rs1.getString(1)%>" width="160" height="162" border="0" alt=""></td>
			</tr>
			<tr>
				<td ><font size="+2" color="#10adbe"><%=data[1]%></font></td>
			</tr>
			<tr>
				<td align="center"><font size="+1" color="#543cdd">Provided by : <%=data[3]%></font></td>
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

<hr>
<br><br>
<font size="+3" color="Red"><b>Fraud Apps</font>

          <div class="row">
<br>
<%




try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	
String sss1 = "select * from result_tab where ranking_ct like 'fraud'  or rating_ct like 'fraud' or review_ct like 'fraud' ";

	ResultSet rs1=st1.executeQuery(sss1);
	while(rs1.next())
	{
		data=Details.main(rs1.getString(1));

%>

            <div class="col-lg-3 col-xs-6">
			<table align="center">
			<tr>
				<td><img src="view3.jsp?id=<%=rs1.getString(1)%>" width="160" height="162" border="0" alt=""></td>
			</tr>
			<tr>
				<td align="center"><font size="+2" color="#10adbe"><%=data[1]%></font></td>
			</tr>
			<tr>
				<td align="center"><font size="+1" color="#543cdd">Provided by : <%=data[3]%></font></td>
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
</div> <br><br>
<h1><a href="ana.jsp" target="_blank">Analysis</a></h1>

<%@ include file="footer.jsp"%>