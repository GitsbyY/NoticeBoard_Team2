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
			//아이디/비밀번호/이메일/이름/휴대폰번호/닉네임
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
			
		} // finally 종료
		
		return null;
	}
	
}
