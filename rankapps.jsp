<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>

<%@ include file="aheader.jsp"%>
<%
Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from apps where status_ct='Accepted' ");
%>	
<h2>
<br>
<form method="post" action="rankapps2.jsp" name="form2" id="form2" onsubmit="return validate()">
<font size="" color="#f65900"><b>Rank Apps..</h1></h2>
<font size="+1" color="#cf4989"><b>Choose Top 10..</h1></h2>
<table align="center">


<%
int i=0;
while(rs.next())
	{
		%>
		<tr><td><h4><font size=""  color="#27baa4"><b><h4><input  type=checkbox name=ckb onclick='chkcontrol(<%=i%>)' value="<%=rs.getString(1)%>">&nbsp;&nbsp;&nbsp;<%=rs.getString(1)%>: <%=rs.getString(2)%>
	
		<tr><td>



<%
	i=i+1;
	}
   %>

<tr><td><br><br>
<textarea  rows="3" cols="50" id="ids"  placeholder="Selected Apps" name="ids"  class="special" readonly required></textarea><br>
<input type="text" name="len" id="len"  placeholder="count of select, choose 10" readonly size="40"><br>
</table><br>
<table align="center">
<tr><td  colspan="1"> <input type="submit" value="Rank"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;



<script type="text/javascript">
var s="";
var c=0;

function chkcontrol(j) {

	//alert(document.form2.ckb[j].value)
	if(document.form2.ckb[j].checked){	
	s=s+" "+document.form2.ckb[j].value;
	c=c+1;
	document.getElementById("ids").value =  s;
	document.getElementById("len").value =  c;
	}else{
	alert("Please Reset..")
	s='';
	c='';
	}
	//alert(s);
	
}


</script>


<script>
function validate() {
    submitFlag = true;
    if(document.form2.len.value==10)  {
    }
	else{
		        submitFlag=false;
	document.getElementById("ids").value = '';
		document.getElementById("len").value =  '';
        alert("Choose 10 Appps");

	}
	
	
    return submitFlag;
}
</script>
</form><form method="post" action="rankapps.jsp">
	<td><input type="submit" value="Reset">
</form>

											 
</table></table>
<br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>
