package web;

import java.io.IOException;
import java.net.HttpCookie;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;

import dao.DBConnection;
import dao.DiaryDAO;
import dao.UserDAO;
import model.User;
import web.exception.InvalidDataException;
import web.util.PasswordEncrypter;

public class UserAuthenticationServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// fetch the parameters
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		// clean the parameters
		email = Jsoup.clean(email, Whitelist.none());
		password = Jsoup.clean(password, Whitelist.none());
		
		// decleare RequestDispatcher object
		RequestDispatcher rd = null;
		
		// decleare DAO object for User entity
		Connection conn = null;
		UserDAO ud = null;
		
		try {
			// fetch record from db
			conn = DBConnection.getInstance().getConnection();
			ud = new UserDAO();
			User user = ud.fetch(conn, email);
			
			// check if record even exists
			if(user==null)
				throw new InvalidDataException("You aren't signed up with our system");
			
			// get the existing password and salt
			String existingPassword = user.getPassword();
			String existingSalt = user.getSalt();
			
			// encrypt the new password with existing salt
			PasswordEncrypter pe = new PasswordEncrypter();
			pe.setSalt(existingSalt);
			pe.encrypt(password);
			
			// check if entered and existing passwords are same
			password = pe.getHash();
			if(!password.equals(existingPassword))
				throw new InvalidDataException("Incorrect email and password combination");
			
			// on success create a new session
			HttpSession session = req.getSession(true);
			session.setAttribute("user", user);
			
			// redirect
			resp.sendRedirect("./user/dashboard.jsp?page=1");
		}
		catch(InvalidDataException ide) {
			rd = req.getRequestDispatcher("index.jsp");
			req.setAttribute("success", false);
			req.setAttribute("message", ide.getMessage());
			
			rd.forward(req, resp);
		} 
		catch (Exception e) {
			rd = req.getRequestDispatcher("./exceptions/general_error_handler.jsp");
			req.setAttribute("error-message", e.getMessage());
			rd.forward(req, resp);
		}
		finally {
			try {
				// close db connection
				if(conn != null)
					conn.close();
				
				// close dao object
				if(ud != null)
					ud.close();
			}
			catch(SQLException e) {
				rd = req.getRequestDispatcher("./exceptions/general_error_handler.jsp");
				req.setAttribute("error-message", e.getMessage());
				rd.forward(req, resp);
			}
		}
	}
}
