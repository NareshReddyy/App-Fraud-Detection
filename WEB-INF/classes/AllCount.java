package CT;
import databaseconnection.*;
import java.sql.*;

public class  AllCount
{

static Connection con1=null;
static Statement st1=null;


public static int getAppCount() {
int count=0;
try{


	con1 = databasecon.getconnection();
	st1 = con1.createStatement();
	String sql=null;;
	sql="select count(*) from apps where status_ct='Accepted' ";
	//System.out.println(sql);
	ResultSet rs=null;
	rs=st1.executeQuery(sql);
	rs.next();
	count=rs.getInt(1);
}
	catch(Exception e){
		System.out.println(e);
	}
	finally{
		try{
		con1.close();
		st1.close();
//		rs.close();
		}
		catch(Exception e){
		System.out.println(e);
		}
	}
	return count;
}



public static int getUserCount() {
int count=0;
try{


	con1 = databasecon.getconnection();
	st1 = con1.createStatement();
	String sql=null;;
	sql="select count(*) from register";
	//System.out.println(sql);
	ResultSet rs=null;
	rs=st1.executeQuery(sql);
	rs.next();
	count=rs.getInt(1);
}
	catch(Exception e){
		System.out.println(e);
	}
	finally{
		try{
		con1.close();
		st1.close();
//		rs.close();
		}
		catch(Exception e){
		System.out.println(e);
		}
	}
	return count;
}


	public static int getProviderCount() {
int count=0;
try{


	con1 = databasecon.getconnection();
	st1 = con1.createStatement();
	String sql=null;;
	sql="select count(*) from provider where status='accept'";
	//System.out.println(sql);
	ResultSet rs=null;
	rs=st1.executeQuery(sql);
	rs.next();
	count=rs.getInt(1);
}
	catch(Exception e){
		System.out.println(e);
	}
	finally{
		try{
		con1.close();
		st1.close();
//		rs.close();
		}
		catch(Exception e){
		System.out.println(e);
		}
	}
	return count;
}



	
	public static void main(String[] args) 
	{
		
	}





}



