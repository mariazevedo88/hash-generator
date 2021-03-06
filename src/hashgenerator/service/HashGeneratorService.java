package hashgenerator.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns="/generate") 
public class HashGeneratorService extends HttpServlet{

	private static final long serialVersionUID = 3580756825981497734L;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String stringToHash = req.getParameter("hash");
		Integer hash = Math.abs(stringToHash.hashCode());
		
		HttpSession session = req.getSession();
		session.setAttribute("hashGenerated", hash);
		req.setAttribute("hashGenerated", hash);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/index.jsp");
		dispatcher.forward(req, res);
	}
}
