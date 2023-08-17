package spms.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import spms.dao.BoardDao;
import spms.dto.BoardDto;
import spms.dto.PageDto;

@WebServlet("/board/list")
public class BoardListServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
   @Override
   public void doGet(HttpServletRequest req, HttpServletResponse res) 
         throws ServletException, IOException {
	   
      Connection conn = null;
      
      try {
    	 HttpSession session = req.getSession();
    	 if(session.getAttribute("member") == null) {
    		 res.sendRedirect("../login/loginForm");
    	 } else {
	         ServletContext sc = this.getServletContext();
	         
	         conn = (Connection) sc.getAttribute("conn");
	         
	         BoardDao boardDao = new BoardDao();
	         boardDao.setConnection(conn);
	         
	         ArrayList<BoardDto> boardList = null;
	         PageDto pageDto = null;
	         
	         int pageNo = 1;
	         
	         boardList = (ArrayList<BoardDto>)boardDao.selectList(pageNo);
	         pageDto = boardDao.boardListNum(pageNo);
	         
	         req.setAttribute("boardList", boardList);
	         req.setAttribute("pageDto", pageDto);
	         
	         RequestDispatcher dispatcher = req.getRequestDispatcher("/board/BoardList.jsp");
	         dispatcher.forward(req, res);
    	 }
      } catch (Exception e) {
         // TODO: handle exception
      }
   }
   
   @Override
   public void doPost(HttpServletRequest req, HttpServletResponse res) 
         throws ServletException, IOException {
      Connection conn = null;
      
      try {
         int pageNo = Integer.parseInt(req.getParameter("pageNo"));
         
         ServletContext sc = this.getServletContext();
         
         conn = (Connection) sc.getAttribute("conn");
         
         BoardDao boardDao = new BoardDao();
         boardDao.setConnection(conn);
         
         ArrayList<BoardDto> boardList = null;
         PageDto pageDto = null;
         
         boardList = (ArrayList<BoardDto>)boardDao.selectList(pageNo);
         pageDto = boardDao.boardListNum(pageNo);
         
         req.setAttribute("boardList", boardList);
         req.setAttribute("pageDto", pageDto);
         
         RequestDispatcher dispatcher = req.getRequestDispatcher("/board/BoardList.jsp");
         dispatcher.forward(req, res);
         
      } catch (Exception e) {
    	  e.printStackTrace();
			
			req.setAttribute("error", e);
			req.setAttribute("msg", "i'm sorry");
			RequestDispatcher dispatcher 
				= req.getRequestDispatcher("/Error.jsp");

			dispatcher.forward(req, res);
      }
      
   }
   
   
}