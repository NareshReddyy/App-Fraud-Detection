	<%@ include file="pheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String id= request.getParameter("id");
%><br><br><br>
<form  action="appupload5.jsp"  method="post" >   
	<table width="60%" align="center">
<tr>
<td><font size="+2" color="#b9bd0d"><b>Upload your App</font>

</tr>
</table>


<table  width="60%" align="center">
  <tr>
	<td><br><input  class="form-control" type="file" name="app" accept=".apk"></td>
  </tr><input type="hidden" name="id" value="<%=id%>">
  <tr>
	<td><br> <button class="btn btn-default">Upload</button>      
  </tr>
  </table>

</form>

<%@ include file="footer.jsp"%>
