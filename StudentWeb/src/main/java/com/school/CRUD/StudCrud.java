package com.school.CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.school.dbinfo.DatabaseConnection;

public class StudCrud {
	
	public String addUser(StudBean sbean) {
		String message="";
		Connection conn = null;
		int result=0;
		String sql="insert into userdetails(uid,username,password,role,email,age,dob,phno,gender,cgpa,course) values(?,?,?,?,?,?,?,?,?,?,?)";
		
		DatabaseConnection db=new DatabaseConnection();
		try {
		conn=db.dbconn();
		PreparedStatement stmt=conn.prepareStatement(sql);
		stmt.setInt(1, sbean.getUid());
		stmt.setString(2, sbean.getUserName());
		stmt.setString(3, sbean.getUserPwd());
		stmt.setString(4, "user");
		stmt.setString(5, sbean.getEmail());
		stmt.setInt(6,  sbean.getAge());
		stmt.setString(7, sbean.getDob());
		stmt.setLong(8, sbean.getPhno());
		stmt.setString(9, sbean.getGender());
		stmt.setInt(10, sbean.getCgpa());
		stmt.setString(11, sbean.getCourse());
		result=stmt.executeUpdate();
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally {
			try {
				conn.close();
			} catch (SQLException e) {
			
				e.printStackTrace();
			}
	
		}
		if(result>0)
		{
			message="success";
			
		}
		else {
			message="failure";
		}
		return message;
		
	}

	@SuppressWarnings("unchecked")
	public JSONObject ViewUser()
	{
		DatabaseConnection dbcon=new DatabaseConnection();
		JSONObject jobjAll=new JSONObject();
		try {
			Connection conn=dbcon.dbconn();
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery("select * from userdetails");
			JSONArray jarr=new JSONArray();
			while(rs.next())
			{
				JSONObject jobj=new JSONObject();
				jobj.put("uid", rs.getInt("uid"));
				jobj.put("uname", rs.getString("username"));
				jobj.put("pwd", rs.getString("password"));
				jobj.put("role", rs.getString("role"));
				jobj.put("email", rs.getString("email"));
				jobj.put("age", rs.getInt("age"));
				jobj.put("dob", rs.getString("dob"));
				jobj.put("phno", rs.getInt("phno"));
				jobj.put("gender", rs.getString("gender"));
				jobj.put("cgpa", rs.getInt("cgpa"));
				jobj.put("course", rs.getString("course"));
				jarr.add(jobj);
			}
			jobjAll.put("studDetails",jarr);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return jobjAll;
	}

	public String updateUser(StudBean sbean) {
	
		String message="";
		Connection conn = null;
		int result=0;
		String sql="update userdetails set password=?,email=?,age=?,dob=?,phno=?,gender=?,cgpa=?,course=? where uid=?";
		
		DatabaseConnection db=new DatabaseConnection();
		try {
		conn=db.dbconn();
		PreparedStatement stmt=conn.prepareStatement(sql);
		
		stmt.setString(1, sbean.getUserPwd());
		stmt.setString(2, sbean.getEmail());
		stmt.setInt(3,  sbean.getAge());
		stmt.setString(4, sbean.getDob());
		stmt.setLong(5, sbean.getPhno());
		stmt.setString(6, sbean.getGender());
		stmt.setInt(7, sbean.getCgpa());
		stmt.setString(8, sbean.getCourse());
		stmt.setInt(9, sbean.getUid());
		result=stmt.executeUpdate();
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally {
			try {
				conn.close();
			} catch (SQLException e) {
			
				e.printStackTrace();
			}
		}
		if(result>0)
		{
			message="success";
		}
		else {
			message="failure";
		}
		return message;
		
	}

	public String deleteUser(StudBean sbean) {
		// TODO Auto-generated method stub
		String message="";
		Connection conn = null;
		int result=0;
		String sql="delete from userdetails where uid=?";
		DatabaseConnection db=new DatabaseConnection();
		try {
			conn=db.dbconn();
			PreparedStatement stmt=conn.prepareStatement(sql);
			stmt.setInt(1, sbean.getUid());
			result=stmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally {
			try {
				conn.close();
			} catch (SQLException e) {
			
				e.printStackTrace();
			}
		}
		if(result>0)
		{
			message="success";
		}
		else {
			message="failure";
		}
		return message;
	}

	@SuppressWarnings("unchecked")
	public JSONObject UserDetails(int id) {
		Connection conn=null;
		DatabaseConnection dbcon=new DatabaseConnection();
		JSONObject jobjAll=new JSONObject();
		try {
			conn=dbcon.dbconn();
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery("select * from userdetails where uid="+id);
			JSONArray jarr=new JSONArray();
			while(rs.next())
			{
				JSONObject jobj=new JSONObject();
				jobj.put("Id", rs.getInt("uid"));
				jobj.put("Name", rs.getString("username"));
				jobj.put("Password", rs.getString("password"));
				jobj.put("Role", rs.getString("role"));
				jobj.put("Email", rs.getString("email"));
				jobj.put("Age", rs.getInt("age"));
				jobj.put("Dob", rs.getString("dob"));
				jobj.put("Phno", rs.getInt("phno"));
				jobj.put("Gender", rs.getString("gender"));
				jobj.put("Cgpa", rs.getInt("cgpa"));
				jobj.put("Course", rs.getString("course"));
				jarr.add(jobj);
			}
			
			jobjAll.put("userDetails",jarr);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				conn.close();
			} catch (SQLException e) {
			
				e.printStackTrace();
			}
		}
		
		return jobjAll;
	}

}
