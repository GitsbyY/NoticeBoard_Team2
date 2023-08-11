package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import spms.dto.UserDto;

public class UserDao {

	private Connection connection;
	
	public void setConnection(Connection conn) {
		this.connection = conn;
	}
	
	public List<UserDto> selectList() throws Exception{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT USER_NO, USER_NAME, USER_EMAIL, USER_CRE_DATE";
			sql += " FROM USER_INFO";
			sql += " ORDER BY USER_NO DESC";
			
			pstmt = connection.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			ArrayList<UserDto> userList = new ArrayList<UserDto>();
			
			int no = 0;
			String name = "";
			String email = "";
			Date creDate = null;
			
			while (rs.next()) {
				no = rs.getInt("USER_NO");
				name = rs.getString("USER_NAME");
				email = rs.getString("USER_EMAIL");
				creDate = rs.getDate("USER_CRE_DATE");
				
				UserDto userDto = new UserDto(no, name, email, creDate);
				
				userList.add(userDto);
				
			}
			
			return userList;
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
	public int userInsert(UserDto userDto) throws Exception{
		int resultNum = 0;
		
		PreparedStatement pstmt = null;
		
		try {
			String email = userDto.getEmail();
			String pwd = userDto.getPassword();
			String name = userDto.getName();
			
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
	public int userDelete(int no) throws SQLException{
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
	public UserDto userSelectOne(int no) throws Exception{
		UserDto userDto = null;
				
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
				
				userDto = new UserDto();
				
				
				userDto.setNo(no);
				userDto.setName(mName);
				userDto.setEmail(email);
				userDto.setCreateDate(creDate);
				
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
		
		return userDto;
	}
	
	public int userUpdate(UserDto userDto) throws Exception{
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = "";
		
		sql = "UPDATE USER_INFO";
		sql += " SET  USER_EMAIL = ?,  USER_NAME = ?,  USER_MOD_DATE = SYSDATE";
		sql += " WHERE  USER_NO = ?";
		
		try {
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setString(1, userDto.getEmail());
			pstmt.setString(2, userDto.getName());
			pstmt.setInt(3, userDto.getNo());
			
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
	public UserDto userExist(String email, String pwd)
			throws SQLException{
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "";
		sql += "SELECT  USER_NAME,  USER_EMAIL";
		sql += " FROM USER_INFO";
		sql += " WHERE  USER_EMAIL = ?";
		sql += " AND  USER_PWD = ?";
		
		String name = "";
		
		try {
			
			pstmt = connection.prepareStatement(sql);
			
			int colIndex = 1;
			
			pstmt.setString(colIndex++, email);
			pstmt.setString(colIndex, pwd);
			
			rs = pstmt.executeQuery();
			
			UserDto userDto = new UserDto();
			
			if(rs.next()) {
				email = rs.getString("email");
				name = rs.getString("mname");
				
				userDto.setEmail(email);
				userDto.setName(name);
				
				return userDto;
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
