  <%
    String m=request.getParameter("id");
  if(m!=null && m.equalsIgnoreCase("succ"))
    {
     out.println("<script type=text/javascript>alert('Congratulations, your app uploaded succefully.. '); </script>");
     }
%>

	
	<%@ include file="pheader.jsp"%>
&nbsp;&nbsp;&nbsp;&nbsp;<br><br><br><br><br>	
	<h1>Upload Your app
	</h1>

	<form method="post" action="appupload2.jsp">
		<table align="center">
	<tr>
		<td><h3>App Name</h3><td><h3><input type="text" name="name" size=50 required >
			<tr>
			<td><h3>App Description<td><h3><textarea name="des" rows="5" cols="50" required></textarea>
							<tr>	<td><h3><button class="btn btn-default">Next</button>      

	</tr>
	</table>

	</form>
	<%@ include file="footer.jsp"%>


