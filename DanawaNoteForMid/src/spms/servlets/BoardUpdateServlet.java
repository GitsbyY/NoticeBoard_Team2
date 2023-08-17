package spms.servlets;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import spms.dao.BoardDao;
import spms.dto.BoardDto;

@WebServlet("/board/update")
public class BoardUpdateServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		
//		res.sendRedirect("./BoardUpdate");
		Connection conn = null;
		
		try {
			int no = Integer.parseInt(req.getParameter("no"));
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection)sc.getAttribute("conn");
			
			BoardDao boardDao = new BoardDao();
			boardDao.setConnection(conn);
			
			BoardDto boardDto = boardDao.viewContent(no);
			
			req.setAttribute("boardDto", boardDto);
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("./BoardUpdate.jsp");
			
			dispatcher.forward(req, res);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		
		Connection conn = null;
		
		try {
			String no = req.getParameter("no");
			String content = req.getParameter("content");
			String title = req.getParameter("title");
			
			BoardDto boardDto = new BoardDto();
			boardDto.setPostContent(content);
			boardDto.setPostTitle(title);
			boardDto.setPostNo(no);
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection)sc.getAttribute("conn");
			
			BoardDao boardDao = new BoardDao();
			boardDao.setConnection(conn);
			
			int result = 0;
			
			result = boardDao.updateContent(boardDto);
			
			res.sendRedirect("./list");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
}
