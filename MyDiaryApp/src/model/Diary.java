package model;

import java.sql.Timestamp;

public class Diary {
	private int userId;
	private Timestamp entryTs;
	private String entryContent;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userid) {
		this.userId = userid;
	}
	public Timestamp getEntryTs() {
		return entryTs;
	}
	public void setEntryTs(Timestamp entryTs) {
		this.entryTs = entryTs;
	}
	public String getEntryContent() {
		return entryContent;
	}
	public void setEntryContent(String entrycontent) {
		this.entryContent = entrycontent;
	}
	@Override
	public String toString() {
		return "Diary [userId=" + userId + ", entryTs=" + entryTs + ", entryContent=" + entryContent + "]";
	}
}
