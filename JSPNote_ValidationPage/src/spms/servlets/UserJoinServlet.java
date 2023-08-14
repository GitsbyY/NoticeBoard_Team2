package spms.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/user/join")
public class UserJoinServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		Connection conn = null;

		try {
			ServletContext sc = this.getServletContext();

			conn = (Connection) sc.getAttribute("conn");

			MemberDao memberDao = new MemberDao();
			userDao.setConnection(conn);

			ArrayList<MemberDto> userList = null;

			userList = (ArrayList<MemberDto>) userDao.selectList();

			request.setAttribute("userList", userList);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/join/JoinForm.jsp");

			// 인클루딩
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();

			request.setAttribute("error", e);
			request.setAttribute("msg", "i'm sorry");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/Error.jsp");

			dispatcher.forward(request, response);
		}

	} // doGet 메서드 끝

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

	}

}
