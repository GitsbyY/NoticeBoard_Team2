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

import spms.dao.MemberDao;
import spms.dto.MemberDto;


@WebServlet("/join/join")
public class UserJoinServlet extends HttpServlet{

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
				request.getRequestDispatcher("/join/JoinForm.jsp");
			
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
			
			
			// �엯�젰 留ㅺ컻蹂��닔�쓽 媛� 媛��졇�삤湲�
			//�븘�씠�뵒 鍮꾨�踰덊샇 �씠硫붿씪 �씠由� �룿踰덊샇 �땳�꽕�엫
			String id = req.getParameter("userId");
			String pwd = req.getParameter("userPwd");
			String email = req.getParameter("email");
			String name = req.getParameter("userName");
			String mobile = req.getParameter("phoneNum");
			String nickName = req.getParameter("nickName");
			try {
				MemberDto memberDto = new MemberDto();
				
				memberDto.setUserId(id);
				memberDto.setUserPwd(pwd);
				memberDto.setUserEmail(email);
				memberDto.setUserName(name);
				memberDto.setUserPhone(mobile);
				memberDto.setUserNickname(nickName);
				
				ServletContext sc = this.getServletContext();
				
				conn = (Connection) sc.getAttribute("conn");
				
				MemberDao memberDao = new MemberDao();
				
				memberDao.setConnection(conn);
				
				int resultNum = 0;
				
				resultNum = memberDao.MemberInsert(memberDto);
				
				res.sendRedirect("../login/loginForm");

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
