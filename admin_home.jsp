<%@ page  import="java.sql.*" import="CT.*" import="javax.swing.JOptionPane"%>
<%@ include file="aheader.jsp"%>
  <%
    String m=request.getParameter("id");
  if(m!=null && m.equalsIgnoreCase("succ"))
    {
     out.println("<script type=text/javascript>alert('Apps Raked Successfully'); </script>");
     }
%>

<center><br>
<font size="" color=""><h2> Administration Home</h2></font>
<br>


<%@ include file="footer.jsp"%>