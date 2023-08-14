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
	
	public List<MemberDto> selectList() throws Exception{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT USER_NO, USER_NAME, USER_EMAIL, USER_CRE_DATE";
			sql += " FROM USER_INFO";
//			sql += " ORDER BY USER_NO DESC";
			
			pstmt = connection.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			ArrayList<MemberDto> memberList = new ArrayList<MemberDto>();
			
			int userNo = 0;
			String userName = "";
			String userEmail = "";
			Date userCreateDate = null;
			
			while (rs.next()) {
				userNo = rs.getInt("USER_NO");
				userName = rs.getString("USER_NAME");
				userEmail = rs.getString("USER_EMAIL");
				userCreateDate = rs.getDate("USER_CRE_DATE");
				
				MemberDto memberDto = new MemberDto(userNo, userName, userEmail,  userCreateDate);
				
				memberList.add(memberDto);
				
			}
			
			return memberList;
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally {
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
	} // 회원목록 끝
	
	// 회원등록
	public int MemberInsert(MemberDto memberDto) throws Exception{
		int resultNum = 0;
		
		PreparedStatement pstmt = null;
		
		try {
			String email = memberDto.getUserEmail();
			String pwd = memberDto.getUserPwd();
			String name = memberDto.getUserName();
			
			String sql = "";
			
			sql += "INSERT INTO USER_INFO";
			sql += "(USER_NO, USER_ID, USER_PWD, USER_NAME, USER_CRE_DATE, USER_MOD_DATE)";
			sql += "VALUES(USER_INFO_NO_SEQ.nextval, ?, ?, ?";
			sql	+= ", SYSDATE, SYSDATE)";
			
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setString(1, email);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			
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
			} //if 종료
		}
		
		return resultNum;
	}
	
	
//	회원삭제
	public int MemberDelete(int no) throws SQLException{
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = "";
		sql = "DELETE FROM USER_INFO";
		sql += " WHERE USER_NO = ?";
		
		try {
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setInt(1, no);
			
			result = pstmt.executeUpdate();
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
			}
		}
		
		
		return result;
	}
	public MemberDto MemberSelectOne(int no) throws Exception{
		MemberDto memberDto = null;
				
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "";
		
		sql = "SELECT USER_NAME, USER_EMAIL, USER_CRE_DATE";
		sql += " FROM USER_INFO";
		sql += " WHERE USER_NO = ?";
		
		try {
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setInt(1, no);
			
			rs = pstmt.executeQuery();
			
			String mName = "";
			String email = "";
			Date creDate = null;
			
			if (rs.next()) {
				mName = rs.getString("USER_NAME");
				email = rs.getString("USER_EMAIL");
				creDate = rs.getDate("USER_CRE_DATE");
				
				memberDto = new MemberDto();
				
				
				memberDto.setUserNo(no);;
				memberDto.setUserName(mName);
				memberDto.setUserEmail(email);
				memberDto.setUserCreateDate(creDate);
				
			}else {
				throw new Exception("해당 번호의 회원을 찾을 수 없습니다");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
		} //finally end
		
		return memberDto;
	}
	
	public int memberUpdate(MemberDto memberDto) throws Exception{
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = "";
		
		sql = "UPDATE USER_INFO";
		sql += " SET  USER_EMAIL = ?,  USER_NAME = ?,  USER_MOD_DATE = SYSDATE";
		sql += " WHERE  USER_NO = ?";
		
		try {
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setString(1, memberDto.getUserEmail());
			pstmt.setString(2, memberDto.getUserName());
			pstmt.setInt(3, memberDto.getUserNo());
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			throw e;
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		} // finally 종료
		
		
		return result;
		
	}
	public MemberDto memberExist(String userEmail, String userPwd)
			throws SQLException{
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "";
		sql += "SELECT  USER_NAME,  USER_EMAIL";
		sql += " FROM USER_INFO";
		sql += " WHERE  USER_EMAIL = ?";
		sql += " AND  USER_PWD = ?";
		
		String name = "";
		String email = "";
		
		try {
			
			pstmt = connection.prepareStatement(sql);
			
			int colIndex = 1;
			
			pstmt.setString(colIndex++, userEmail);
			pstmt.setString(colIndex, userPwd);
			
			rs = pstmt.executeQuery();
			
			MemberDto MemberDto = new MemberDto();
			
			if(rs.next()) {
				email = rs.getString("userEmail");
				name = rs.getString("userName");
				
				MemberDto.setUserEmail(email);;
				MemberDto.setUserName(name);
				
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
			
		} // finally 종료
		
		return null;
	}
	
}
