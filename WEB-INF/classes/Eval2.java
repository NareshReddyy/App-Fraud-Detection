package CT;
import java.sql.*;

import databaseconnection.*;


import java.io.*;
import org.jfree.chart.JFreeChart; 
import org.jfree.chart.ChartFactory; 
import org.jfree.chart.ChartUtilities; 
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;

public class Eval2
{
   public static void main(String id) throws Exception
   {
      DefaultCategoryDataset line_chart_dataset = new DefaultCategoryDataset();
  Connection con1 = databasecon.getconnection();
			Statement st1 = con1.createStatement();
			ResultSet rs=st1.executeQuery("select * from Rating_tab where appid_ct='"+id+"' " );
			while(rs.next()){
	  line_chart_dataset.addValue( rs.getInt(3) , "Ratings" , rs.getString(2) );
	
			}
	  JFreeChart lineChartObject = ChartFactory.createLineChart(
         "Date Vs Ratings","Date",
         "Tot Ratings",
         line_chart_dataset,PlotOrientation.VERTICAL,
         true,true,false);

      int width = 640; /* Width of the image */
      int height = 480; /* Height of the image */ 
            File lineChart = new File( "D://Program Files//Apache Software Foundation//Tomcat 8.0//webapps//App Fraud Detection//images//LineChart.jpeg" ); 
ChartUtilities.saveChartAsJPEG(lineChart ,lineChartObject, width ,height);
   }
}