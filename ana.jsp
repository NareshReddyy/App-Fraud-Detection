<%@ page  import="java.sql.*" import="databaseconnection.*" import="CT.*" %>

<%@ include file="uheader.jsp"%>

<br><b>
<font size="+3" color="#ff8000">Results From Session Mining data</font>


<br>
        <section class="content">
<%


String[] data=null;

try{

Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	
String sss1 = "select * from result_tab  ";

	ResultSet rs1=st1.executeQuery(sss1);
	while(rs1.next())
	{
		data=Details.main(rs1.getString(1));

%>

        <!-- Main content -->

          <!-- Info boxes -->
          <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon "><img src="view3.jsp?id=<%=rs1.getString(1)%>" width="72" height="68" border="0" alt=""></span>
                <div class="info-box-content">
                  <span class="info-box-text"><%=data[1]%></span>
                  <span class="info-box-number"><small><%=data[3]%></small></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-red">
				<a href="#" onclick="window.open('ana2.jsp?id=<%=rs1.getString(1)%>', 'newwindow', 'width=720, height=500'); return false;" > 
				<font size="" color="#20ae92"><%
				if(rs1.getString(2).equals("fraud"))
				out.println("<img src=images/fraud_detection_tool.png width=70 height=70>");
			
				if(rs1.getString(2).equals("normal"))
				out.println("<img src=images/header-icon-warranty.png width=70 height=70>");
	
				if(rs1.getString(2).equals("nodata"))
				out.println("<img src=images/forbidden-512.png width=70 height=70>");

				%></a>
				</i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Ranking Session Mining</span>
                  <span class="info-box-number">
				  								<%
				if(rs1.getString(2).equals("fraud"))
				out.println("Fraud App");
			
				if(rs1.getString(2).equals("normal"))
				out.println("Genuine App");
	
				if(rs1.getString(2).equals("nodata"))
				out.println("Insufficient Data");

				%>

</span>
			</div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->

            <!-- fix for small devices only -->


            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-green">
												<a href="#" onclick="window.open('ana3.jsp?id=<%=rs1.getString(1)%>', 'newwindow', 'width=780, height=500'); return false;" > 
<%
				if(rs1.getString(3).equals("fraud"))
				out.println("<img src=images/fraud_detection_tool.png width=70 height=70>");
			
				if(rs1.getString(3).equals("normal"))
				out.println("<img src=images/header-icon-warranty.png width=70 height=70>");
	
				if(rs1.getString(3).equals("nodata"))
				out.println("<img src=images/forbidden-512.png width=70 height=70>");

				%>
</a>
			</span>
                <div class="info-box-content">
                  <span class="info-box-text">Rating Session Mining</span>
                  <span class="info-box-number">
				  								<%
				if(rs1.getString(3).equals("fraud"))
				out.println("Fraud App");
			
				if(rs1.getString(3).equals("normal"))
				out.println("Genuine App");
	
				if(rs1.getString(3).equals("nodata"))
				out.println("Insufficient Data");

				%>

</span>

				</div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->


            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-yellow">
								<%
				if(rs1.getString(4).equals("fraud"))
				out.println("<img src=images/fraud_detection_tool.png width=70 height=70>");
			
				if(rs1.getString(4).equals("normal"))
				out.println("<img src=images/header-icon-warranty.png width=70 height=70>");
	
				if(rs1.getString(4).equals("nodata"))
				out.println("<img src=images/forbidden-512.png width=70 height=70>");

				%>

				</span>
                <div class="info-box-content">
                  <span class="info-box-text">Review Session Mining</span>
                  <span class="info-box-number">
				  								<%
				if(rs1.getString(4).equals("fraud"))
				out.println("Fraud App");
			
				if(rs1.getString(4).equals("normal"))
				out.println("Genuine App");
	
				if(rs1.getString(4).equals("nodata"))
				out.println("Insufficient Data");

				%>

				  </span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
<%

	}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}%>



<%@ include file="footer.jsp"%>