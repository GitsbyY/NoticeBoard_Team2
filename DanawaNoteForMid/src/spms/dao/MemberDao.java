package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import spms.dto.MemberDto;

public class MemberDao {

	private Connection connection;
	
	public void setConnection(Connection conn) {
		this.connection = conn;
	}

	public int MemberInsert(MemberDto memberDto) throws Exception{
		int resultNum = 0;
		
		PreparedStatement pstmt = null;
		
		try {
			
			String id = memberDto.getUserId();
			String pwd = memberDto.getUserPwd();
			String email = memberDto.getUserEmail();
			String name = memberDto.getUserName();
			String mobile = memberDto.getUserPhone();
			String nickName = memberDto.getUserNickname();
			
			String sql = "";
			
			sql += "INSERT INTO USER_INFO";
			sql += " VALUE(USER_NO, USER_ID, USER_PWD, USER_EMAIL, USER_PHONE, USER_NAME"
					+ ", USER_NICKNAME, USER_CRE_DATE, USER_MOD_DATE)";
			sql += " VALUES(USER_INFO_USER_NO_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?";
			sql	+= ", SYSDATE, SYSDATE)";
			
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, email);
			pstmt.setString(4, mobile);
			pstmt.setString(5, name);
			pstmt.setString(6, nickName);
			
			resultNum = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			} //if 醫낅즺
		}
		
		return resultNum;
	}
	
	public boolean isDuplicatedId(String userId)
			throws SQLException{
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "";
		sql += "SELECT COUNT(*)";
		sql += " FROM USER_INFO";
		sql += " WHERE USER_ID = ?";
		
		try {
			
			pstmt = connection.prepareStatement(sql);

			pstmt.setString(1, userId);
			
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				 int count = rs.getInt(1);
	             return count > 0; // 중복되는 아이디가 있으면 true 반환
			}
		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {
				if(pstmt != null) {
				pstmt.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				if(connection != null) {
				connection.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		} // finally 
		return false;
	}
	
	public MemberDto memberExist(String userId, String userPwd)
			throws SQLException{
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "";
		sql += "SELECT  USER_EMAIL, USER_NICKNAME";
		sql += " FROM USER_INFO";
		sql += " WHERE  USER_ID = ?";
		sql += " AND  USER_PWD = ?";
		
		String nickName = "";
		String email = "";
		
		try {
			
			pstmt = connection.prepareStatement(sql);
			
			int colIndex = 1;
			
			pstmt.setString(colIndex++, userId);
			pstmt.setString(colIndex, userPwd);
			
			rs = pstmt.executeQuery();
			
			MemberDto MemberDto = new MemberDto();
			
			if(rs.next()) {
				email = rs.getString("USER_EMAIL");
				nickName = rs.getString("USER_NICKNAME");
				
				MemberDto.setUserEmail(email);
				MemberDto.setUserNickname(nickName);
				
				return MemberDto;
			}		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {
				if(pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		} // finally 
		
		return null;
	}
	
}
