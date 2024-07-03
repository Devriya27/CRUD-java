package com.school.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.school.dbinfo.DatabaseConnection;

public class LoginDao {
	
	
	@SuppressWarnings("unchecked")
	public JSONObject validate(int uid,String password)
	{
		String message=null;
		JSONObject jobjAll=new JSONObject();
		JSONArray jarr=new JSONArray();
		JSONObject jobj=new JSONObject();
		Connection conn = null;
		DatabaseConnection db=new DatabaseConnection();
		try {	
			conn=db.dbconn();
			Statement stmt = conn.createStatement();
			String pwd=null;
			ResultSet rs=stmt.executeQuery("select * from userdetails where uid="+uid);
			
			while(rs.next())
			{
				
				jobj.put("pwd", rs.getString("password"));
				jobj.put("role", rs.getString("role"));
				pwd=rs.getString("password");
			}
			if(pwd.equals(password))
			{
				message="success";
			}
			else
			{
				message="failure";
			}
			jobj.put("message", message);
			jarr.add(jobj);
			jobjAll.put("loginAccess", jarr);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
		try {
			if(conn!=null)
			conn.close();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		}
		//System.out.println("in dao "+jobjAll);
		return jobjAll;
	}
	
	public long getId()
	{
		long Uid=0;
		DatabaseConnection db=new DatabaseConnection();
		
		try {
			Connection conn=db.dbconn();
			Statement stmt = conn.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT * FROM userdetails ORDER BY uid DESC LIMIT 1");
			while(rs.next())
			{
				Uid=rs.getLong("uid");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println(Uid);
		return Uid;
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
