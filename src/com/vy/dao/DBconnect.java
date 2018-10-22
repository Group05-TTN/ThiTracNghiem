package com.vy.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String connectionUrl = "jdbc:mysql://localhost/thi_trac_nghiem?characterEncoding=UTF-8";
			con = DriverManager.getConnection(connectionUrl,"root", "");
		}catch(Exception e) {
			System.out.println(e);
		}
		return con;
	}
}
