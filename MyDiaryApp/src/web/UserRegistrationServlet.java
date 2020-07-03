package web;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;

import dao.DBConnection;
import dao.UserDAO;
import model.User;
import web.exception.InvalidDataException;
import web.util.PasswordEncrypter;

public class UserRegistrationServlet extends HttpServlet {
	private String namePattern;
	private String emailPattern;
	private String passwordPattern;
	
	@Override
	public void init() throws ServletException {
		ServletConfig cfg = this.getServletConfig();
		this.namePattern = cfg.getInitParameter("name-pattern");
		this.emailPattern = cfg.getInitParameter("email-pattern");
		this.passwordPattern = cfg.getInitParameter("password-pattern");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// fetch the parameters from HTTP request
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String confirmedPassword = req.getParameter("confirmedPassword");
		String salt = "";
		
		// sanitize the parameters
		name = Jsoup.clean(name, Whitelist.none());
		email = Jsoup.clean(email, Whitelist.none());
		password = Jsoup.clean(password, Whitelist.none());
		confirmedPassword = Jsoup.clean(confirmedPassword, Whitelist.none());
		
		// log parameters
		System.out.println("------------------------------------------------");
		System.out.println(name);
		System.out.println(email);
		System.out.println(password);
		System.out.println(confirmedPassword);
		
		// App scope
		RequestDispatcher rd = null;
		
		// for DB
		Connection conn = null;
		UserDAO ud = null;

		try {
			// validate name
			if(!name.matches(namePattern))
				throw new InvalidDataException("Name should contain only alphabets");
			
			// validate email
			if(!email.matches(emailPattern))
				throw new InvalidDataException("Email should contain alphabets, digits and ._%+-");
			
			// validate password
			if(!password.equals(confirmedPassword)) 
				throw new InvalidDataException("Password and confirm password doesn't match");
				
			if(!password.matches(passwordPattern))
				throw new InvalidDataException("Password must be atleast 8 character long and must contain "
					+ "atleast one uppercase and lowercase alphabet, "
					+ "atleast one digit, "
					+ "atleast one of the special characters !@#$%^*");
		
			
			// encrypt password
			PasswordEncrypter pe = new PasswordEncrypter();
			pe.generateSalt();
			pe.encrypt(password);
			salt = pe.getSalt();
			password = pe.getHash();
			
			// create user
			User user = new User();
			user.setName(name);
			user.setEmail(email);
			user.setPassword(password);
			user.setSalt(salt);
			
			// log user
			System.out.println("------------------------------------------------");
			System.out.println(user);
			
			// insert into db
			conn = DBConnection.getInstance().getConnection();
			ud = new UserDAO();
			
			if(ud.fetch(conn, email) != null)
				throw new InvalidDataException("Email already exists!");
			
			ud.insert(conn, user);
			
			// log success
			System.out.println("------------------------------------------------");
			System.out.println("Record inserted successfully!");
			
			// forward 
			rd = req.getRequestDispatcher("index.jsp");
			req.setAttribute("success", true);
			
			rd.forward(req, resp);
		}
		catch(InvalidDataException ide) {
			rd = req.getRequestDispatcher("index.jsp");
			req.setAttribute("success", true);
			req.setAttribute("message", ide.getMessage());
			
			rd.forward(req, resp);
		} 
		catch (NoSuchAlgorithmException | ClassNotFoundException | SQLException e) {
			resp.sendError(500, e.getMessage());
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
				resp.sendError(500, e.getMessage());
			}
		}
	}
}
