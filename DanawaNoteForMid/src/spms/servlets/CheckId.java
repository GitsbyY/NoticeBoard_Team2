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
import javax.servlet.http.HttpSession;

import spms.dao.MemberDao;
import spms.dto.MemberDto;


@WebServlet("/join/check")
public class CheckId extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	public void doGet(HttpServletRequest request, 
			HttpServletResponse response) 
		throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection conn = null;
		
		try {
			ServletContext sc = this.getServletContext();
			
			conn = (Connection) sc.getAttribute("conn");
			
			
			RequestDispatcher dispatcher = 
				request.getRequestDispatcher("/join/idCheck.jsp");
			// 서블릿에서 세션에 메시지를 저장
            HttpSession session = request.getSession();
            session.setAttribute("duplicateMessage", null); // 초기화
			// �씤�겢猷⑤뵫
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			
			request.setAttribute("error", e);
			request.setAttribute("msg", "i'm sorry");
			RequestDispatcher dispatcher 
				= request.getRequestDispatcher("/Error.jsp");

			dispatcher.forward(request, response);
		}
		
	} // doGet 硫붿꽌�뱶 �걹
	
	// �뜲�씠�꽣踰좎씠�뒪�뿉 �뜲�씠�꽣 異붽�, �쉶�썝�젙蹂� ���옣
		@Override
		protected void doPost(HttpServletRequest req
			, HttpServletResponse res)
				throws ServletException, IOException {

			Connection conn = null;
			
		    // 업데이트된 부분: 아이디 중복 결과 메시지를 세션에 저장
	        HttpSession session = req.getSession();
			// �엯�젰 留ㅺ컻蹂��닔�쓽 媛� 媛��졇�삤湲�
			//�븘�씠�뵒 鍮꾨�踰덊샇 �씠硫붿씪 �씠由� �룿踰덊샇 �땳�꽕�엫
			String id = req.getParameter("userId");
		
			try {
				
				ServletContext sc = this.getServletContext();
				
				conn = (Connection) sc.getAttribute("conn");
				
				MemberDao memberDao = new MemberDao();
				
				memberDao.setConnection(conn);
				
				// 중복된 아이디 검사
			    if (memberDao.isDuplicatedId(id)) {
			        // 중복된 아이디 처리 로직
			    	 session.setAttribute("duplicateMessage", "이미 존재하는 아이디입니다.");
			        return;
			    } else {
	                session.setAttribute("duplicateMessage", "사용가능한 아이디입니다.");
	            }
				res.sendRedirect("../join/idCheck.jsp");

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
