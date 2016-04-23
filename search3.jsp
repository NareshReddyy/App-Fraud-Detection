<%@ page  import="java.sql.*" import="databaseconnection.*" %>

<%@ include file="uheader.jsp"%>
<link rel="stylesheet" href="stylesheet.css">
          <div class="row">
<br><br>

<br><h1>
App Details</h1>
<%
String key = request.getParameter("id");



try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	
String sss1 = "select * from apps where id_ct='"+key+"'";

	ResultSet rs1=st1.executeQuery(sss1);
	while(rs1.next())
	{
%>

          <div class="row">
            <!-- Left col -->
            <div class="col-md-12">
              <!-- MAP & BOX PANE -->
              <div class="box box-success">
                <div class="box-header with-border">
                  <h3 class="box-title"><%=rs1.getString("appname_ct")%></h3>
                  <div class="box-tools pull-right">
                  </div>
                </div><!-- /.box-header -->

                <div class="box-body no-padding">
                  <div class="row">
                    <div class="col-md-9 col-sm-8">
                      <div class="pad">
						<center><img src="view3.jsp?id=<%=rs1.getString(1)%>" width="260" height="262" border="0" alt="">	
						</center>
					<h4>About App: <%=rs1.getString("des_ct")%></h4>
                        <!-- Map will be created here -->

                      </div>
                    </div><!-- /.col -->
                    <div class="col-md-3 col-sm-4">
                      <div class="pad box-pane-right bg-green" style="min-height: 280px">
                        <div class="description-block margin-bottom">
                          <div class="sparkbar pad" data-color="#fff">No. of downloads</div>
                          <h5 class="description-header"><%=rs1.getString("down_ct")%></h5>

                        </div><!-- /.description-block -->
                        <div class="description-block margin-bottom">
                          <div class="sparkbar pad" data-color="#fff">Manufacture By</div>
                          <h5 class="description-header"><%=rs1.getString("company_ct")%></h5>

                        </div><!-- /.description-block -->
                        <div class="description-block">
                          <div class="sparkbar pad" data-color="#fff">You can Download Here</div>
                          <h5 class="description-header"><a href="download?id=<%=rs1.getString("app_ct")%>&&id2=<%=rs1.getString(1)%>&&c=<%=rs1.getString("down_ct")%>"><font size="" color="#ffffff">Download</font></a></h5>

                        </div><!-- /.description-block -->
                      </div>
                    </div><!-- /.col -->
                  </div><!-- /.row -->
                </div><!-- /.box-body -->
              </div><!-- /.box -->              </div><!-- /.box -->
<%

	}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}%>
</div>



	  
	  <form method="post" action="rating.jsp">
<input type="hidden" name="id" value="<%=key%>">
	<table align="left">
<tr>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><h4>Like to collect Rating for this app:</h3>
  <h1>    <span class="starRating">
        <input id="rating5" type="radio" name="rating" value="5">
        <label for="rating5">5</label>
        <input id="rating4" type="radio" name="rating" value="4">
        <label for="rating4">4</label>
        <input id="rating3" type="radio" name="rating" value="3" checked>
        <label for="rating3">3</label>
        <input id="rating2" type="radio" name="rating" value="2">
        <label for="rating2">2</label>
        <input id="rating1" type="radio" name="rating" value="1">
        <label for="rating1">1</label>
      </span>
    </p>
</td>
</tr>
<tr><td><td><input type="submit" value="rate ->">
</table>

</form>
</h1></font>	  


	  <br>
	  <form method="post" action="review.jsp">
<input type="hidden" name="id" value="<%=key%>">
	<table align="right">
<tr>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><textarea  class="form-control" name="rev" rows="" cols="50" placeholder="Enter your Review/Comments "></textarea>
</td>
</tr>
<tr><td><td><input type="submit" value="Finish ->">
</table>

</form>
<br><br><h3>Reviews</h2></center>
<div id="tbody"><table align="center">
<%
try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	
String sss1 = "select * from userreview_tab  where appid_ct='"+key+"'";

	ResultSet rs1=st1.executeQuery(sss1);
	while(rs1.next())
	{
%>
<tr><td width="70%"><%=rs1.getString(2)%><td><%=rs1.getString(3)%><td><%=rs1.getString(5)%>
<tr><td ><br>
<%
	}	}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%></table>
</div>
					
					
					<table  cellspacing=20 ><tr><td>
	                  <%
                                                       String m=request.getParameter("m");
                                                       if(m!=null && m.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thank you :) for ur feedback   !! </blink></font></h3>");
                                                       }
                                               %>
											   </table>

<br><br><br><br><br><br><br><br>

<%@ include file="footer.jsp"%>