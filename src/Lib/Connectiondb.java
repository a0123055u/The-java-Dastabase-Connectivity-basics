package Lib;
import java.sql.*;
public class Connectiondb

{
public static void main(String args[])
{ 
	try{
		Class.forName("com.mysql.jdbc.Driver");

	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trail", "root", "password");
	Statement sta= con.createStatement();
	 Statement sa= con.createStatement();
	 Statement up= con.createStatement();
	ResultSet rs = sta.executeQuery("select * from books ");
	String sql = "insert into books  values(\"java\", \"helbertshelt\",\"Magmillin\",\"java\",\"java se 6\",99.98);";
	 int rr= sa.executeUpdate(sql);
	 System.out.print(rr);
	 
	 
	System.out.println("Title    "+"author        "+"publisher   "+"Description  "+"price  ");
	while(rs.next())
	{
		
		System.out.println(rs.getString("title"));
		System.out.println(rs.getString("author"));
		System.out.println(rs.getString("publisher"));
		System.out.println(rs.getString("Description"));
		System.out.println(rs.getFloat("price"));
	}
	
	 System.out.print(rr);
	}catch (Exception ex)
	{
		System.out.println(ex);
	}
	
	
	
	
	
}


}
