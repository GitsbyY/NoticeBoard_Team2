package spms.servlets;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import spms.dao.BoardDao;
import spms.dto.BoardDto;

@WebServlet("/board/write")
public class BoardWriteServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		
		res.sendRedirect("./BoardWrite.jsp");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		Connection conn = null;
		
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		try {
			BoardDto boardDto = new BoardDto();
			
			boardDto.setPostWriter(name);
			boardDto.setPostPwd(password);
			boardDto.setUserEmail(email);
			boardDto.setPostTitle(title);
			boardDto.setPostContent(content);
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection)sc.getAttribute("conn");
			
			BoardDao boardDao = new BoardDao();
			
			boardDao.setConnection(conn);
			
			int result = 0;
			
			result = boardDao.addContent(boardDto);
			
			res.sendRedirect("./list");
			
		} catch(Exception e) {
			e.printStackTrace();
		} 
	}
}
