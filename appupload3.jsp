
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
String email=(String)session.getAttribute("email");
String cname=(String)session.getAttribute("cname");
String appname=(String)session.getAttribute("appname");
String des=(String)session.getAttribute("des");


out.println(email);
	   String saveFile="";
//String contentType=request.getAttribute("file");
String contentType = request.getContentType();
if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
//
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File(saveFile);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
File f=new File(saveFile);
FileInputStream fis=new FileInputStream(saveFile);
//
// System.out.println(ff.getName());
         // open input stream test.txt for reading purpose.
		 
String pname=ff.getName().toString();
//session.setAttribute("pname",pname);
int i=1;
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(id_ct) from apps");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Exception Occured");}



try{

Connection con = databasecon.getconnection();
//b1=new Blob(b);
PreparedStatement pst=con.prepareStatement("insert into apps(id_ct,appname_ct,provider_ct,company_ct,des_ct,pic_ct) values(?,?,?,?,?,?)");
pst.setInt(1,i);
pst.setString(2,appname);
pst.setString(3,email);
pst.setString(4,cname);
pst.setString(5,des);
pst.setBinaryStream(6,(InputStream)fis,(int)(f.length()));
int ii=pst.executeUpdate();
if(ii==1)
	{
 //out.println("update");
response.sendRedirect("appupload4.jsp?id="+i+"");

	}

}catch(Exception e){
	e.printStackTrace();
}
		 
}
%>
