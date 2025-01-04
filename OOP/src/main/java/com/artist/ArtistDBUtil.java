package com.artist;

/*
Name W. J. K. FERNANDO
ITNUMBER IT22232472
Metro
*/ 

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ArtistDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	public static boolean isSuccess;
	
	public static boolean validate(String userName, String password){
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from artist where username= '"+userName+"' and password= '"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}


	public static boolean insertartist(String name, String a_name, String dob, String gender, String phone, String email,
		String qualification, String username, String password) {
	
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "INSERT into artist values (0, '"+name+"', '"+a_name+"', '"+dob+"', '"+gender+"', '"+phone+"',"
						+ " '"+email+"', '"+qualification+"', '"+username+"', '"+password+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs>0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
				
			}catch (Exception e) {
				e.printStackTrace();
			}
	
			return isSuccess;
	}


	public static boolean updateartist(String id, String name, String a_name, String dob, String gender,
			String phone, String email, String qualification, String uname) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "UPDATE artist set name= '"+name+"', artist_name= '"+a_name+"', dob= '"+dob+"', "
					+ "gender= '"+gender+"', phone= '"+phone+"', email= '"+email+"', qualification= '"+qualification+"', "
							+ "username= '"+uname+"' where AID= '"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
	
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	
	}
	
	
	public static List<Artist> getartist(String uname){
		
		//int convertedID = Integer.parseInt(Id);
		
		ArrayList<Artist> art = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * from artist where username='"+uname+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String artist_name = rs.getString(3);
				String dob = rs.getString(4);
				String gender = rs.getString(5);
				String phone = rs.getString(6);
				String email = rs.getString(7);
				String qualification = rs.getString(8);
				String username = rs.getString(10);
				
				Artist a = new Artist(id,name,artist_name,dob,gender,phone,email,qualification,username);
				art.add(a);
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	
		return art;
	}
	
	
	public static boolean deleteartist(String id) {
		
		int convertID = Integer.parseInt(id);
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "DELETE from artist where AID= '"+convertID+"'";
			int rs = stmt.executeUpdate(sql);
			
			if (rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
}

