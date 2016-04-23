
<%@ page  import="java.sql.*" import="databaseconnection.*" %>

<%@ include file="uheader.jsp"%>


<br><br><br>
<form  action="search2.jsp" method="post" >   
	<table width="60%" align="center">
<tr>
<td><font size="+2" color="#37c0fb"><b>App Search</font>

</tr>
</table>

 <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null && id.equalsIgnoreCase("succ"))
                                                       {

													         out.println(" <font	color=red><b>Picture Stored Successfully !!</font><br>");

													   }
%>
		

<table  width="60%" align="center">
  <tr>
	<td><br><input  class="form-control" type="text" name="key" size="50"></td>
  </tr>
  <tr>
	<td><br> <button class="btn btn-default">Search</button>      
  </tr>
  </table>

</form>
<br><br><br><br><br>
<%@ include file="footer.jsp"%>