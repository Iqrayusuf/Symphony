/* Name iqra
 * IT22071620
 * Metro
 */
package com.customer;
import java.sql.*;

public class DBConnect {
	

	private static String url = "jdbc:mysql://localhost:3306/musicstore";
	private static String userName = "root";
	private static String password = "kaushalya";
	
	private static Connection con;

	
	private DBConnect() { }

	
	public static Connection getConnection() {
	
		if (con == null) {
			
			synchronized (DBConnect.class) {
				
				if (con == null) {
					try {
						// Load the MySQL JDBC driver
						Class.forName("com.mysql.jdbc.Driver");
						// Create the connection using the provided URL, username, and password
						con = DriverManager.getConnection(url, userName, password);
					} catch (Exception e) {
						// Print an error message if the connection fails
						System.out.println("Database connection is not successful");
						e.printStackTrace();
					}
				}
			}
		}
		// Return the single instance of the connection
		return con;
	}
}
