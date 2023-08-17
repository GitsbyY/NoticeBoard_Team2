package spms.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import spms.dao.MemberDao;
import spms.dto.MemberDto;

@WebServlet(value = "/login/loginForm")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		RequestDispatcher rd = req.getRequestDispatcher("./loginForm.jsp");
		rd.forward(req, res);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection conn = null;
		
		try {
			
			String id = req.getParameter("id");
			String pwd = req.getParameter("pwd");
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection) sc.getAttribute("conn");
			
			MemberDao memberDao = new MemberDao();
			memberDao.setConnection(conn);
			
			MemberDto memberDto = memberDao.memberExist(id, pwd);
			
			// 회원이 없다면 로그인 실패 페이지로 이동
			if (memberDto == null) {
			    RequestDispatcher rd = req.getRequestDispatcher("./LoginFail.jsp");
			    rd.forward(req, res);
			} else {
			    // 회원이 존재하면 로그인 성공으로 처리
			    HttpSession session = req.getSession();
			    session.setAttribute("member", memberDto);

			    res.sendRedirect("../board/list"); // 로그인 성공 후 페이지로 이동
			}
			
//			초단위
//			session.setMaxInactiveInterval(10);
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new ServletException();
		}
		
	}
	
}
