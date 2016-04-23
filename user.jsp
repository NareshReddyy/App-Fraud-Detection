<%@ include file="header.jsp"%>

<br><br><br>
<h1>Login Page for User</h1></font>

<b>

					<table  cellspacing=20 ><tr><td>
	                  <%
                                                       String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>
											   </table>



<form method="post" action="ulogin.jsp">
	<table  align="center" cellpadding=20><tr><td>

	<tr><td><input type="text" name="uid"  class="form-control"required placeholder="Your Email"  size="50"><br>
		<tr><td><input type="password" name="pwd"  class="form-control" required placeholder="Password" size="30"><br>

			<tr><td>		 <button class="btn btn-default">Login</button>      
			<tr><td align="center">	     <h3><a href="signup.jsp">Sign Up</a></h2>
</form>

</tr>
</table>						

											   



<br><br><br>
<%@ include file="footer.jsp"%>