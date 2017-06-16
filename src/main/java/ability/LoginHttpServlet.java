package ability;

import java.io.IOException;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/login")
public class LoginHttpServlet extends HttpServlet{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6116092868480213080L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Loginget  check.");
		Object attr = req.getSession().getAttribute("admin");
		 
		if (attr != null && ((String)attr).equals("true")){
			resp.sendRedirect("admin.jsp");
			return;
		}
        req.getRequestDispatcher("/login.jsp").forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		System.out.println("Login check.");
		Object attr = req.getSession().getAttribute("admin");
		 
		if (attr != null && ((String)attr).equals("true")){
			resp.sendRedirect("admin.jsp");
		}

		String id = req.getParameter("id"); 
		String pass = req.getParameter("pass");

		if("admin".equals(id) && "pass".equals(pass)){
			req.getSession().setAttribute("admin", "true");
			resp.sendRedirect("admin.jsp");
		}
		else if (id != null || pass != null){
			System.out.print("Invalid login.");
			
	        req.getRequestDispatcher("/login.jsp").forward(req, resp);
		}
	}

	
}
