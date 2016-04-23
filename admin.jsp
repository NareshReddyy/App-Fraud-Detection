<%@ include file="header.jsp"%>
<br>





<form method="post" action="alogin.jsp">
	<table align=right cellspacing=20 ><tr><td>
<tr><td><h2>Admin Login..
	<tr><td><input  class="form-control" type="text" name="uid" required size="50" placeholder="UserId"><br>
		<tr><td><input  class="form-control" type="password" name="pwd" required  placeholder="Password">

			<tr><td>	<br><button class="btn btn-default">Login</button>      </div><td>

</tr>
</table>

					<table align=right cellspacing=20 ><tr><td><td>
	                  <%
                                                       String m=request.getParameter("m");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>
											   </table>

</form>
											   <br><br><br><br><br><br><br><br><br><br><br><br><br>

											   
											   <br><br><br><br><br>



<%@ include file="footer.jsp"%>