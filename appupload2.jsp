	<%@ include file="pheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String name= request.getParameter("name");
String des= request.getParameter("des");
session.setAttribute("appname",name);
session.setAttribute("des",des);

%>
<br><br><br><br><br>
<form  action="appupload3.jsp" ENCTYPE="multipart/form-data" method="post" >   
	<table width="60%" align="center">
<tr>
<td><font size="+2" color="#d2206b"><b>Upload App Pic</font>

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
	<td><br><input  class="form-control" type="file" name="pic" accept="image/*"></td>
  </tr>
  <tr>
	<td><br> <button class="btn btn-default">Upload</button>      
  </tr>
  </table>

</form>

<%@ include file="footer.jsp"%>
