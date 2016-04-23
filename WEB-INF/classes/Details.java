package CT;
import databaseconnection.*;
import java.sql.*;

public class  Details
{

static Connection con1=null;
static Statement st1=null;

static String[] res=new String[6];


public static String[] main(String id) {
try{


System.out.println("------"+id);
con1 = databasecon.getconnection();
st1 = con1.createStatement();
 String sql=null;;
sql="select * from apps where id_ct='"+id+"'";
//System.out.println(sql);
ResultSet rs=null;
rs=st1.executeQuery(sql);

while(rs.next())
{
//System.out.println(rs.getString("user"));
	res[0]=rs.getString(1);

	res[1]=rs.getString("appname_ct");
	res[2]=rs.getString(3);
	res[3]=rs.getString(4);
	res[4]=rs.getString(5);
	res[5]=rs.getString("app_ct");
}
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
	return res;
}


	
	
	public static void main(String[] args) 
	{
		
String[] r=Details.main("1");
for(String rr:r)
		{
System.out.println(rr);
}



	}

}



