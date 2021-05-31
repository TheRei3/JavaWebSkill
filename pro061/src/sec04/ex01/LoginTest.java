package sec04.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginTest
 */
@WebServlet("/loginTest")
public class LoginTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 메서드 호출");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		System.out.println("destroy 메서드 호출");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		
		System.out.println("아이디 : " + id );
		System.out.println("비밀번호 : " + pw );
		
		if( id != null && (id.length()!= 0)) {
			out.print("<html>");
			out.print("<body>");
			out.print( id + "님!! 로그인 하셨습니다.");
			out.print("</html>");
			out.print("</body>");
		}else {
		String data = "<html>" ;
		data += "<body>" ;
		data += "아이디를 입력하세요!!!" ;
		data += "<br>" ;
		data += "<a href='http://localhost:8991/pro061/test01/loginTest.html'>로그인 창으로 이동</a> ";
		data += "</html>" ;
		data += "</body>" ;
		out.print(data);
		}
	}

}
