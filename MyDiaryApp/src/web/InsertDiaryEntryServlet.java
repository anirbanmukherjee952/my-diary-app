package web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Timestamp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;

import dao.DBConnection;
import dao.DiaryDAO;
import dao.UserDAO;
import model.Diary;
import model.User;
import web.exception.InvalidDataException;

public class InsertDiaryEntryServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// fetch parameters
		String entryContent = req.getParameter("entrycontent");
		
		// clean paramters
		entryContent = Jsoup.clean(entryContent, Whitelist.basic());
		
		// session attribute
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");
		
		// declare RequestDispatcher object
		RequestDispatcher rd = null;
		
		// declare DAO object for User entity
		Connection conn = null;
		DiaryDAO dd = null;
		
		try {
			// check for empty entries
			if(entryContent.isEmpty())
				throw new InvalidDataException("Entry is empty!");
			
			// create diary entry
			Diary diary = new Diary();
			diary.setUserId(user.getId());
			diary.setEntryContent(entryContent);
			
			// insert into db
			conn = DBConnection.getInstance().getConnection();
			dd = new DiaryDAO();
			dd.insert(conn, diary);
			
			// forward 
			resp.sendRedirect("dashboard.jsp?page=1");
		}
		catch (InvalidDataException ide) {
			rd = req.getRequestDispatcher("create_entry.jsp");
			req.setAttribute("blank", true);
			req.setAttribute("message", ide.getMessage());
			rd.forward(req, resp);
		} 
		catch (Exception e) {
			rd = req.getRequestDispatcher("../exceptions/general_error_handler.jsp");
			req.setAttribute("error-message", e.getMessage());
			rd.forward(req, resp);
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
				rd = req.getRequestDispatcher("../exceptions/general_error_handler.jsp");
				req.setAttribute("error-message", e.getMessage());
				rd.forward(req, resp);
			}
		}
	}
	
}
