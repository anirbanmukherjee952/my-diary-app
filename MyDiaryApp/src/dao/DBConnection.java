package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	private static DBConnection instance = new DBConnection();
	
	private String driver;  
	private String url;
	private String username;
	private String password;
	
	private DBConnection() {
		this.driver = "com.mysql.jdbc.Driver";  
		this.url = "jdbc:mysql://localhost/mydiarydb";
		this.username = "root";
		this.password = "";
	}

	public static DBConnection getInstance() {
		return instance;
	}
	
	public Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName(driver);
		return DriverManager.getConnection(url, username, password);
	}
}
