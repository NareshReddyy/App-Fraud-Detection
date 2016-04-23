
<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" import="CT.*" import="javax.swing.JOptionPane"%>



<br><br><br><br>
<h1><font size="" color="#34afb6"><b>Caluculating Mining Session data on Ranking Data Base.</font></h2>

<%
Connection con1=databasecon.getconnection();
//System.out.println(con1);
Statement st = con1.createStatement();
Statement st2 = con1.createStatement();
Statement st3 = con1.createStatement();
st3.executeUpdate("delete from result_tab"); 
ResultSet rs=st.executeQuery("select * from rank_tab ");

ResultSet rs2=null;
int threshold=2;
int tot=0;
int f=0;
int n=0;
int c=0;
	rs2=st2.executeQuery("SELECT COUNT(*) FROM ranking_tab"); 
	if(rs2.next())
	{
		tot=rs2.getInt(1);
	}
%>	
<br><br>
<font size="+3" color="#1bd188"><img src="images/red-check-md.png" width="80" height="80" border="0" alt="">Total Number of iterations on Ranking Session data: <%=tot%></font>
<%
String[] data=null;

while(rs.next())
	{
		
		rs2=st2.executeQuery("SELECT COUNT(*) FROM ranking_tab WHERE appid_ct='"+rs.getString(2)+"' AND rank_ct='0'");
		if(rs2.next()){

		if(rs2.getInt(1)>threshold){

			st3.executeUpdate("insert into result_tab(appid_ct,ranking_ct) values('"+rs.getString(2)+"','fraud')");
			f++;
		}else{
			st3.executeUpdate("insert into result_tab(appid_ct,ranking_ct) values('"+rs.getString(2)+"','normal')");
			n++;
		}
			}else{
			st3.executeUpdate("insert into result_tab(appid_ct,ranking_ct) values('"+rs.getString(2)+"','nodata')");
			c++;
		}
		


	}									


  %><br><br><br>
<table>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<td><font size="+3" color="#2d92ce"><img src="images/red-check-md.png" width="50" height="50" border="0" alt="">Genuine Apps: <%=n%></font><br>
<font size="+3" color="red"><img src="images/red-check-md.png" width="50" height="50" border="0" alt="">Fraud Apps: <%=f%></font><br>
<font size="+3" color="#d68338"><img src="images/red-check-md.png" width="50" height="50" border="0" alt="">Can't Specify: <%=c%></font>
		
</td>
</tr>

</table><br><br><br>
<a href="fraud2.jsp"><img src="images/nextStepIcon.png" width="100" height="83" border="0" alt=""> <font size="+3" color="#499e9c">Next For Mining on Rating Data
</a><br><br><br><br>


<%@ include file="footer.jsp"%>
