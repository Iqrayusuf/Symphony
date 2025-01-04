/* Name iqra
 * IT22071620
 * Metro
 */
package com.customer;
import java.sql.Connection;
import java.sql.Statement;
import java.util.*;
import java.sql.*;


public class CustomerDBUtil {
	
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static List<Customer> validate (String userName , String password){
 
	ArrayList<Customer> cus = new ArrayList<>();
	
	
	
	// Validate
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from customer where username = '"+userName+"' and password = '"+password+"'";
		 rs = stmt.executeQuery(sql);
		
		if (rs.next()) {
			int Id = rs.getInt(1);
			String name = rs.getString(2);
			String dob = rs.getString(3);
			String gender = rs.getString(4);
			String phone = rs.getString(5);
			String email = rs.getString(6);
			String userU = rs.getString(7);
			String passU = rs.getString(8);
			
			Customer c = new Customer(Id,name,dob,gender,phone,email,userU,passU);
			cus.add(c);
			
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
		
	}
	
	
	return cus;
	
	
}
	public static boolean insertCustomer(String name , String dob,String gender,String phone,String email,String Username, String Password) {
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into customer (name, dob, gender, phone, email, username, password) values ('"+name+"','"+dob+"','"+gender+"','"+phone+"','"+email+"','"+Username+"','"+Password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
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
	
	public static boolean updatecustomer(String id , String name ,String dob,String gender,String phone,String email, String username,String password) {
		boolean isSuccess = false;
		try {
			con=DBConnect.getConnection();
			stmt =con.createStatement();
			String sql ="update customer set name='"+name+"',dob='"+dob+"',gender='"+gender+"',phone = '"+phone+"',email='"+email+"',username = '"+username+"',password = '"+password+"'"
					+"where id = '"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Customer> getCustomerDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<Customer> cus =new  ArrayList<>();
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where id = '"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String dob = rs.getString(3);
				String gender = rs.getString(4);
				String phone = rs.getString(5);
				String email = rs.getString(6);
				String username = rs.getString(7);
				String password = rs.getString(8);
				
				Customer c = new Customer (id,name,dob,gender,phone,email,username,password);
				cus.add(c);
			}
				
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return cus;
	}
	
	public static boolean deleteCustomer(String id) {
		boolean isSuccess = false;
		int convId = Integer.parseInt(id);
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from customer where id= '"+convId+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
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

