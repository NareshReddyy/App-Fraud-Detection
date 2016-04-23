
<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*"  import="java.util.*" import="databaseconnection.*"  import="details.*" import="javax.swing.JOptionPane"%>
<%

try{
	String email=(String)session.getAttribute("email");
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
%>

				
				
				<div class="col-md-15 col-sm-15">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Your Profile
                        </div>
                        <div class="panel-body">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#home" data-toggle="tab">Basic</a>
                                </li>
                                <li class=""><a href="#profile" data-toggle="tab">Profile Pic</a>
                                </li>

                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane fade active in" id="home">
                                    <h4>Basic Profile Information</h4>
                                    <p>
									<%String sql1="SELECT * FROM register where email='"+email+"' ";
											System.out.println(sql1);
											ResultSet rs1=st.executeQuery(sql1);
												while(rs1.next()){



	out.println("<h3>Full Name: "+rs1.getString("name")+" "+rs1.getString("lname")+"</b>");
	out.println("<br>Address: &nbsp;&nbsp;&nbsp;"+rs1.getString("address")+"</b>");
	out.println("<br>Phone: &nbsp;&nbsp;&nbsp;"+rs1.getString("phone")+"</b>");
	out.println("<br>Email: &nbsp;&nbsp;&nbsp;"+rs1.getString("email")+"</b>");

												}
													%>
</p>
                                </div>                    </div>                                    
                                <div class="tab-pane fade" id="profile">
                                    <h4>Profile Picture</h4>
                                    <p>			

<center>
										<img src="view1.jsp?id=<%=email%>"  width="300" />

</center>

									
									</p>
                                </div>                                </div></div>

<%

}

catch(Exception e){
System.out.println(e);
}
%>








<%@ include file="footer.jsp"%>