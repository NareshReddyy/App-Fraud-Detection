<%@ include file="uheader.jsp"%>

<%@ page  import="java.sql.*" import="java.util.Vector"  import="java.io.*" import="databaseconnection.*" import="CT.*" import="javax.swing.JOptionPane"%>



<br><br><br><br>
<h1><font size="" color="#34afb6"><b>3) Caluculating Mining Session data on Review Data Base.</font></h2>

<%
File f=new File("temp.txt");
Vector v=new Vector();
PrintWriter pw =new PrintWriter(f);
Connection con1=databasecon.getconnection();
//System.out.println(con1);
Statement st = con1.createStatement();
Statement st2 = con1.createStatement();
Statement st3 = con1.createStatement();
ResultSet rs=st.executeQuery("select * from rank_tab");

ResultSet rs2=null;
int threshold=5;
int tot=0;
int fr=0;
int n=0;
int c=0;
	rs2=st2.executeQuery("SELECT COUNT(*) FROM review_tab"); 
	if(rs2.next())
	{
		tot=rs2.getInt(1);
	}
%>	
<br><br>
<font size="+3" color="#1bd188"><img src="images/red-check-md.png" width="80" height="80" border="0" alt="">Total Number of iterations on Review Session data: <%=tot%></font>
<%
String sql=null;

while(rs.next())
	{	
		try{
		v=new Vector();
		 pw =new PrintWriter(f);
		sql="SELECT * FROM review_tab WHERE appid_ct='"+rs.getString(2)+"' ";
		System.out.println(sql);
		rs2=st2.executeQuery(sql);
		while(rs2.next()){
		pw.println(rs2.getString(3));
		}							
		pw.close();
		StopWords.main("temp.txt");
		v=Occurance.main("temp.txt");
		System.out.println("-----------------------------------------------------");
		if(v.size()>threshold){
			
			st3.executeUpdate("update result_tab set review_ct='fraud' where appid_ct='"+rs.getString(2)+"'");
			fr++;

		}else{
			st3.executeUpdate("update result_tab set review_ct='normal' where appid_ct='"+rs.getString(2)+"'");
			n++;
		}
		}catch(Exception e){
			st3.executeUpdate("update result_tab set review_ct='nodata' where appid_ct='"+rs.getString(2)+"'");
			c++;
		}
	}

  %><br><br><br>
<table>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<td><font size="+3" color="#2d92ce"><img src="images/red-check-md.png" width="50" height="50" border="0" alt="">Genuine Apps: <%=n%></font><br>
<font size="+3" color="red"><img src="images/red-check-md.png" width="50" height="50" border="0" alt="">Fraud Apps: <%=fr%></font><br>
<font size="+3" color="#d68338"><img src="images/red-check-md.png" width="50" height="50" border="0" alt="">Can't Specify: <%=c%></font>
		
</td>
</tr>

</table><br><br><br>
<a href="fraud4.jsp"><img src="images/nextStepIcon.png" width="100" height="83" border="0" alt=""> <font size="+3" color="#499e9c">Next For Total  Mining Data
</a><br><br><br><br></h1></font>

<%@ include file="footer.jsp"%>