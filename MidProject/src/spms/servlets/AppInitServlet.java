package spms.servlets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class AppInitServlet extends HttpServlet{

	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("AppInitServlet 준비...");
		super.init(config);
		
		ServletContext sc = getServletContext();

		String driver = "";
		String url = "";
		String user = "";
		String password = "";
//		String emailStr = "";
//		String pwdStr = "";
//		String nameStr = "";
		
		Connection conn = null;
		try {
			driver = sc.getInitParameter("driver");
			Class.forName(driver);
			
			url = sc.getInitParameter("url");
			user = sc.getInitParameter("user");
			password = sc.getInitParameter("password");
//			emailStr = sc.getInitParameter("email");
//			pwdStr = sc.getInitParameter("password");
//			nameStr = sc.getInitParameter("name");
			
			conn = DriverManager.getConnection(url, user, password);
			
			sc.setAttribute("conn", conn);
			System.out.println("DB 연결 성공");
			
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	} // init() 종료
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
		System.out.println("AppInitServlet 마무리....");
		
		ServletContext sc = this.getServletContext();
		
		Connection conn = (Connection) sc.getAttribute("conn");
		
			
			try {
				if(conn != null) {
					conn.close();
					System.out.println("DB 연결 해제");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}
}
