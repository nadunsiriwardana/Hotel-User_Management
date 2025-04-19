package com.user;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	private static String url ="jdbc:mysql://localhost:3306/user";   
	private static String username = "root";
	private static String pass = "shashi1204";
	private static Connection con;
	
	public static Connection getConection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, pass);
		
		}catch (Exception e) {
			System.out.println("Database connection is Unsuccessful..");
		}
		return con;
		
	}

}
