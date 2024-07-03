package com.school.dbinfo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DatabaseConnection
{
	public Connection dbconn()
	{
		Connection conn=null;
		String url="jdbc:sqlite:C://sqldb/CourseManagement.db";
		try {
			Class.forName("org.sqlite.JDBC");
			conn=DriverManager.getConnection(url);
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally {
			
		}
		return conn;
	}
	
	public static void main(String args[])throws IOException
	{
		DatabaseConnection db=new DatabaseConnection();
		try {
			Connection conn=db.dbconn();
			System.out.println("db "+conn);
			conn=DriverManager.getConnection("jdbc:sqlite:C://sqldb/CourseManagement.db");
			
			Statement stmt = conn.createStatement();
		
		String pwd=null;
		ResultSet rs=stmt.executeQuery("select * from login where uid="+1000);
		while(rs.next())
		{
			pwd=rs.getString("password");
		}
		if(pwd.equals("riadia"))
		{
			System.out.println("success");
		}
		else
		{
			System.out.println("failure");
		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
