package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLTimeoutException;

import model.User;

public class UserDAO {
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public void insert(Connection conn, User user) throws SQLException, SQLTimeoutException {
		String query = "INSERT INTO user(name, email, password, salt) VALUES(?, ?, ?, ?)";
		
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, user.getName());
		pstmt.setString(2, user.getEmail());
		pstmt.setString(3, user.getPassword());
		pstmt.setString(4, user.getSalt());
		
		pstmt.executeUpdate();
	}
	
	public User fetch(Connection conn, String email) throws SQLException {
		String query = "SELECT * FROM user WHERE email=?";
		
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, email);
		
		rs = pstmt.executeQuery();
		
		if(!rs.next()) {
			return null;
		}
		else {
			User user = new User();
			user.setId(rs.getInt("id"));
			user.setName(rs.getString("name"));
			user.setEmail(rs.getString("email"));
			user.setPassword(rs.getString("password"));
			user.setSalt(rs.getString("salt"));
			
			return user;
		}
	}
	
	public void close() throws SQLException {
		if(pstmt!=null && !(pstmt.isClosed())) {
			pstmt.close();
		}
		
		if(rs!=null && !(rs.isClosed())) {
			rs.close();
		}
	}
}
