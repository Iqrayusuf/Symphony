//IT22902320
//AMRA FARIS

package com.payment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PaymentDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<Payment> validate(String paymentID, String mobileNo) {
		ArrayList<Payment> cus = new ArrayList<>();
		
		
		
		//validate
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
	
			String sql = "select * from payment_gateway where PaymentID = '"+paymentID+"' and MobileNo = '"+mobileNo+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				String PaymentID = rs.getString(1);
				String FullName = rs.getString(2);
				String DateOfPurchase = rs.getString(3);
				String email = rs.getString(4);
				String MobileNo = rs.getString(5);
				String CardType = rs.getString(6);
				String CardNum = rs.getString(7);
				String ExpiryDate = rs.getString(8);
				String CVV = rs.getString(9);
				
				Payment c = new Payment(PaymentID, FullName, DateOfPurchase, email, MobileNo, CardType, CardNum, ExpiryDate, CVV);
				cus.add(c);
			}
		} 
		catch(Exception e) {
			e.printStackTrace();
		
	}
		return cus;
		
	}
	
	public static boolean insertcustomer(String paymentid, String fullname, String dateofpurchase, String email, String mobileno, String cardtype, String cardnum, String expirydate, String cvv) {
		
		boolean isSuccess = false;
		
		
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into payment_gateway values ('"+paymentid+"', '"+fullname+"', '"+dateofpurchase+"', '"+email+"', '"+mobileno+"', '"+cardtype+"', '"+cardnum+"', '"+expirydate+"', '"+cvv+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean updatecustomer(String paymentid, String fullname, String dop, String email, String mobile, String cardtype, String cardnum, String exdate, String cvv) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update payment_gateway set PaymentID='"+paymentid+"', FullName='"+fullname+"', DateOfPurchase='"+dop+"', email='"+email+"', MobileNo='"+mobile+"', CardType='"+cardtype+"', CardNum='"+cardnum+"', ExpiryDate='"+exdate+"', CVV='"+cvv+"'"
					+ " where PaymentID='"+paymentid+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Payment> getCustomerDetails(String paymentID) {
	    ArrayList<Payment> cus = new ArrayList<>();
	    
	    try {
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();
	        String sql = "SELECT * FROM payment_gateway WHERE PaymentID = '" + paymentID + "'";
	        rs = stmt.executeQuery(sql);
	        
	        while(rs.next()) {
	            String PaymentID = rs.getString(1);
	            String FullName = rs.getString(2);
	            String DateOfPurchase = rs.getString(3);
	            String email = rs.getString(4);
	            String MobileNo = rs.getString(5);
	            String CardType = rs.getString(6);
	            String CardNum = rs.getString(7);
	            String ExpiryDate = rs.getString(8);
	            String CVV = rs.getString(9);
	            
	            Payment c = new Payment(PaymentID, FullName, DateOfPurchase, email, MobileNo, CardType, CardNum, ExpiryDate, CVV);
	            cus.add(c);
	        }
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    return cus;
	}

	public static boolean deleteCustomer(String id) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from payment_gateway where PaymentID = '"+id+"'";
			int r = stmt.executeUpdate(sql);
			
			if (r > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
}

