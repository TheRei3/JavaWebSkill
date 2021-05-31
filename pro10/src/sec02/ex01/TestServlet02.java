package sec02.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestServlet01
 */
@WebServlet("/first/*")
public class TestServlet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String context = request.getContextPath();
		String url = request.getRequestURI().toString();
		String mapping = request.getServletPath();
		String uri = request.getRequestURI();
		
		out.print("<html>");
		out.print("<head>");
		out.print("<title>Test Servlet1</title>");
		out.print("</head>");
		out.print("<body bgcolor='green'>");
		out.print("<b>TestServlet2입니다</b><br>");
		out.print("<b>컨택스트 이름 : "+ context +"</b><br>");
		out.print("<b>전체 경로 : "+ url +"</b><br>");
		out.print("<b>매핑 이름 : "+ mapping +"</b><br>");
		out.print("<b>URI"+ uri +"</b>");
		out.print("</body>");
		out.print("</html>");
		out.close();
	}

}
