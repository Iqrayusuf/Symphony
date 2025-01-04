package com.music;

/*
Name Raagul Gananathan
ITNUMBER IT22130020
Metro
*/

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectionManager {
    private static DBConnectionManager instance;
    private static Connection connection;
    private static final String URL = "jdbc:mysql://localhost:3306/musicstore";
    private static final String USER = "root";
    private static final String PASSWORD = "kaushalya";

    private DBConnectionManager() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            throw new SQLException(e);
        }
    }

    public static synchronized DBConnectionManager getInstance() throws SQLException {
        if (instance == null) {
            instance = new DBConnectionManager();
        } else if (connection.isClosed()) {
            instance = new DBConnectionManager();
        }
        return instance;
    }

    public Connection getConnection() {
        return connection;
    }
}

