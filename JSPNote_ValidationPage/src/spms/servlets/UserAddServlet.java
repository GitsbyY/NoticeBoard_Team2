package spms.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.ast.ThrowStatement;

import spms.dao.UserDao;
import spms.dto.UserDto;


@WebServlet("/user/add")
public class UserAddServlet extends HttpServlet {

	// 회원등록화면
	@Override
	protected void doGet(HttpServletRequest request
		, HttpServletResponse response) throws ServletException, IOException {

		response.sendRedirect("./JoinForm.jsp");
		
	}

	// 데이터베이스에 데이터 추가, 회원정보 저장
	@Override
	protected void doPost(HttpServletRequest req
		, HttpServletResponse res)
			throws ServletException, IOException {

		Connection conn = null;
		
		
		// 입력 매개변수의 값 가져오기
		String email = req.getParameter("email");
		String pwd = req.getParameter("password");
		String name = req.getParameter("name");
		
		try {
			UserDto userDto = new UserDto();
			
			userDto.setEmail(email);
			userDto.setPassword(pwd);
			userDto.setName(name);
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection) sc.getAttribute("conn");
			
			UserDao userDao = new UserDao();
			
			userDao.setConnection(conn);
			
			int resultNum = 0;
			
			resultNum = userDao.userInsert(userDto);
			
			res.sendRedirect("./list");

		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			req.setAttribute("error", e);
			RequestDispatcher rd = 
					req.getRequestDispatcher("/Error.jsp");
				
			rd.forward(req, res);
		}
		
	}

}
