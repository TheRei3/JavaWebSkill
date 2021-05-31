package sec04.ex02;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginTest
 */
@WebServlet("/login")
public class LoginTest extends HttpServlet {
	ServletContext context = null ;
	List user_list = new ArrayList();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		LoginImpl loginUser = new LoginImpl(user_id,user_pw);
		
		if(session.isNew()) {
			session.setAttribute("loginUser", loginUser);
			user_list.add(user_id);
			context.setAttribute("user_list", user_list);
		}
		
		out.print("<html><body>");
		out.print("아이디는"+loginUser.user_id+"<br>");
		out.print("총 접속사수는"+LoginImpl.total_user+"<br><br>");
		out.print("접속 아이디 : <br>");
		List list = (ArrayList) context.getAttribute("user_list");
		for( int i = 0 ; i < list.size() ; i++ ) {
			out.print(list.get(i)+"<br>");
		}
		out.print("<a href='logout?user_id='"+user_id+"'>로그아웃</a>");
		out.print("</body></html>");
	}

}
