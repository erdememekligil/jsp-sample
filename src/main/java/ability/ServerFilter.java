package ability;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class ServerFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("destroy filter");
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		// TODO Auto-generated method stub

		String name = arg0.getParameter("formName");
		if(!"hack".equals(name))
			arg2.doFilter(arg0, arg1);
		else
			arg0.getRequestDispatcher("/error.jsp").forward(arg0, arg1);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("init filter");
	}

}
