package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Diary;

public class DiaryDAO {
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public void insert(Connection conn, Diary entry) throws SQLException {
		String query = "INSERT INTO diary(user_id, entry_content) values(?, ?)";
		
		pstmt = conn.prepareStatement(query);
		pstmt.setInt(1, entry.getUserId());
		pstmt.setString(2,  entry.getEntryContent());
		
		pstmt.executeUpdate();
	}
	
	public int count(Connection conn, int userId) throws SQLException {
		String query = "SELECT COUNT(*) AS record_count FROM diary WHERE user_id=?";
		
		pstmt = conn.prepareStatement(query);
		pstmt.setInt(1, userId);
		
		rs = pstmt.executeQuery();
		
		rs.next();
		int recordCount = rs.getInt("record_count");
		
		return recordCount;
	}
	
	public ArrayList<Diary> fetch(Connection conn, int userId, int offset, int limit) throws SQLException{
		String query = "SELECT * FROM diary WHERE user_id=? ORDER BY entry_ts DESC LIMIT ?, ?";
		
		pstmt = conn.prepareStatement(query);
		pstmt.setInt(1, userId);
		pstmt.setInt(2, offset);
		pstmt.setInt(3, limit);
		
		rs = pstmt.executeQuery();
		
		if(rs==null) {
			return null;
		}
		else {
			ArrayList<Diary> entries = new ArrayList<Diary>();
			
			while(rs.next()) {
				Diary entry = new Diary();
				entry.setUserId(userId);
				entry.setEntryTs(rs.getTimestamp("entry_ts"));
				entry.setEntryContent(rs.getString("entry_content"));
				
				entries.add(entry);
			}
			
			return entries;
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
