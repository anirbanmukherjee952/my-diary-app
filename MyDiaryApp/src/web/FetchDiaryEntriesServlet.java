package web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import dao.DBConnection;
import dao.DiaryDAO;
import dao.UserDAO;
import model.Diary;
import model.User;

public class FetchDiaryEntriesServlet extends HttpServlet {

	@SuppressWarnings("unchecked")
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// fetch the parameters
		int currentPage = Integer.parseInt(req.getParameter("currentPage"));
		System.out.println(currentPage);
		
		// session attribute
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");
		
		// app scope
		ServletContext ctx = getServletContext();
		int entriesPerPage = Integer.parseInt(ctx.getInitParameter("entries-per-page"));
		int linksPerPage = Integer.parseInt(ctx.getInitParameter("links-per-page"));
		
		// declare RequestDispatcher object
		RequestDispatcher rd = null;
		
		// declare DAO object for User entity
		Connection conn = null;
		DiaryDAO dd = null;
		
		try {
			conn = DBConnection.getInstance().getConnection();
			dd = new DiaryDAO();
			ArrayList<Diary> entries = dd.fetch(conn, user.getId(), (currentPage-1)*entriesPerPage, entriesPerPage);
			
			// log entries
			System.out.println(entries);
			
			if(entries.isEmpty()) {
				System.out.println("No entries found!");
				resp.getWriter().print("");
			}
			else {
				int recordCount = dd.count(conn, user.getId());
				
				JSONArray entryList = new JSONArray();
				for(Diary entry:entries) {
					JSONObject entryObj = new JSONObject();
					entryObj.put("ts", entry.getEntryTs().toLocalDateTime().toString());
					entryObj.put("content", entry.getEntryContent());
					entryList.add(entryObj);
				}
				
				JSONObject meta = new JSONObject();
				meta.put("pages", (int) Math.ceil((float) recordCount/entriesPerPage));
				meta.put("links", linksPerPage);
				
				JSONArray responses = new JSONArray();
				responses.add(meta);
				responses.add(entryList);
				
				resp.getWriter().println(responses.toJSONString());
			}
		} 
		catch (ClassNotFoundException | SQLException e) {
			resp.sendError(500, e.getMessage());
		} 
		finally {
			try {
				// close db connection
				if(conn != null)
					conn.close();
				
				// close dao object
				if(dd != null)
					dd.close();
			}
			catch(SQLException e) {
				resp.sendError(500, e.getMessage());
			}
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
