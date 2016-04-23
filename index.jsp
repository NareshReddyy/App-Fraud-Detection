  <%
    String m=request.getParameter("id");
  if(m!=null && m.equalsIgnoreCase("exp"))
    {
     out.println("<script type=text/javascript>alert('Sorry, your session expired, login again '); </script>");
     }
%>

<%@ include file="header.jsp"%>
<br><br><br>
<center><img src="images/121.jpg" width="732" height="402" border="0" alt=""></center>
<%@ include file="footer.jsp"%>