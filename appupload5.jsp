
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Registration Form</title>
  <link rel="stylesheet" href="css/style.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

</head>
<%@ page   import="databaseconnection.*" %>
<%@ page import="java.io.*,java.sql.*"%>
<%
///
String id=request.getParameter("id");
String app=request.getParameter("app");


try{


Connection con = databasecon.getconnection();
Statement st=con.createStatement();
st.executeUpdate("update apps set app_ct='"+app+"' where id_ct='"+id+"'");
response.sendRedirect("appupload.jsp?id=succ");
}
catch(Exception e){
System.out.println("Exception Occured"+e);}


%>
