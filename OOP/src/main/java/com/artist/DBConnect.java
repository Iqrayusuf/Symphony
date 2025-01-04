package com.artist;

/*
Name W. J. K. FERNANDO
ITNUMBER IT22232472
Metro
*/ 

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    
    private static final String URL = "jdbc:mysql://localhost:3306/musicstore";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "kaushalya";
    private static Connection connection;

    private DBConnect() {} // Private constructor to prevent instantiation from outside

    public static Connection getConnection() {
        if (connection == null) {
            synchronized (DBConnect.class) {
                if (connection == null) {
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                    } catch (ClassNotFoundException | SQLException e) {
                        e.printStackTrace(); // Handle exception properly in your application
                    }
                }
            }
        }
        return connection;
    }
}
