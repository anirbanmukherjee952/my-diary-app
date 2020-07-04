package web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserSignOutServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			req.getSession().invalidate();
			resp.sendRedirect("../index.jsp");
		}
		catch(Exception e){
			RequestDispatcher rd = req.getRequestDispatcher("../exceptions/general_error_handler.jsp");
			req.setAttribute("error-message", e.getMessage());
			rd.forward(req, resp);
		}
	}
	
}
