
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>



<%! String name, lname, addr, city, state, zip, tele, email, un, pwd,intr;
	int i=0;
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(id) from register");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Exception Occured");}

name=request.getParameter("name");
lname=request.getParameter("lname");
addr=request.getParameter("addr");


tele=request.getParameter("tele");
 email=request.getParameter("email");
pwd=request.getParameter("pwd");

String cname=request.getParameter("cname");
String des=request.getParameter("des");
//System.out.println(pwd);
%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
un="user"+i;

int q= st.executeUpdate("insert into provider(id,name,lname,address,phone,email,cname,about,pwd,status) values('"+i+"','"+name+"','"+lname+"','"+addr+"','"+tele+"','"+email+"','"+cname+"','"+des
	+"', '"+pwd+"','non')");


if(q>0)
{

//response.sendRedirect("addr.jsp?id="+email+"");
response.sendRedirect("pprofilepic.jsp?id="+email+"");


}
else
	response.sendRedirect("signup.jsp?message=fail");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
