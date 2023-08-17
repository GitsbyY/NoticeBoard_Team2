package spms.dao;

import java.sql.Connection;
//import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import spms.dto.BoardDto;
import spms.dto.PageDto;

public class BoardDao {

   private Connection connection;
   private int totalContentNum = 0;
   
   public void setConnection(Connection conn) {
      this.connection = conn;
   }

   public List<BoardDto> selectList(int pageNo) throws Exception {
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      
      try {
//         String sql = "SELECT POST_NO, POST_TITLE, POST_WRITER";
//         sql += ", POST_DATE, POST_VIEW_NO";
//         sql += " FROM BOARD";
//         sql += " ORDER BY POST_NO DESC";
         
         String sql = "SELECT RN, POST_NO, POST_TITLE, POST_WRITER, POST_DATE, POST_VIEW_NO, POST_PWD";
         sql += " FROM(SELECT ROWNUM AS RN, POST_NO, POST_TITLE, POST_WRITER, POST_DATE, POST_VIEW_NO, POST_PWD";
         sql += " FROM(SELECT B.POST_NO, B.POST_TITLE, B.POST_WRITER, B.POST_DATE, B.POST_VIEW_NO, POST_PWD";
         sql += " FROM BOARD B";
         sql += " ORDER BY POST_NO DESC))";
         sql += " WHERE RN BETWEEN ? AND ?";

         pstmt = connection.prepareStatement(sql);
         
//         pstmt.setInt(1, 40);
//         pstmt.setInt(2, 50);
         pstmt.setInt(1, pageNo*10-9);
         pstmt.setInt(2, pageNo*10);
         
         rs = pstmt.executeQuery();

         ArrayList<BoardDto> boardList = new ArrayList<BoardDto>();

         String no = "";
         String title = "";
         String writer = "";
         Date date = null;
         String dateStr = "";
         String viewNo = "";

         while (rs.next()) {
            no = rs.getString("POST_NO");
            title = rs.getString("POST_TITLE");
            writer = rs.getString("POST_WRITER");
            
            dateStr = rs.getString("POST_DATE");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            date = sdf.parse(dateStr); // String -> Date
            
            viewNo = rs.getString("POST_VIEW_NO");
            BoardDto boardDto = new BoardDto(no, title, writer, date, viewNo);

            boardList.add(boardDto);
         }

         return boardList;
      } catch (Exception e) {
         e.printStackTrace();
         throw e;
      }
   }

   public int addContent(BoardDto boardDto) throws Exception {
      int result = 0;
      PreparedStatement pstmt = null;

      String sql = "INSERT INTO BOARD";
      sql += " VALUE(USER_EMAIL, POST_NO, POST_TITLE, POST_WRITER";
      sql += ", POST_DATE, POST_PWD, POST_CONTENT, POST_VIEW_NO)";
      sql += " VALUES(?, BOARD_POST_NO_SEQ.nextval";
      sql += ", ?, ?, SYSDATE, ?, ?, 0)";

      try {
         String writer = boardDto.getPostWriter();
         String password = boardDto.getPostPwd();
         String email = boardDto.getUserEmail();
         String title = boardDto.getPostTitle();
         String content = boardDto.getPostContent();

         pstmt = connection.prepareStatement(sql);

         pstmt.setString(1, email);
         pstmt.setString(2, title);
         pstmt.setString(3, writer);
         pstmt.setString(4, password);
         pstmt.setString(5, content);

         result = pstmt.executeUpdate();

      } catch (Exception e) {
         // TODO: handle exception
         e.printStackTrace();
         throw e;
      } finally {
         if (pstmt != null) {
            try {
               pstmt.close();
            } catch (SQLException e) {
               e.printStackTrace();
            }

         }
      }

      return result;
   }

   public BoardDto viewContent(int no) throws Exception {
      int result = 0;
      
      BoardDto boardDto = new BoardDto();
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      
      String sql = "SELECT POST_TITLE, POST_WRITER, POST_DATE";
      sql += ", POST_VIEW_NO, POST_CONTENT, POST_PWD";
      sql += " FROM BOARD";
      sql += " WHERE POST_NO = ?";
      
      try {
         pstmt = connection.prepareStatement(sql);

         pstmt.setInt(1, no);

         rs = pstmt.executeQuery();

         String title = "";
         String writer = "";
         Date date = null;
         String viewNo = "";
         String content = "";
         String pw = "";

         if (rs.next()) {
            title = rs.getString("POST_TITLE");
            writer = rs.getString("POST_WRITER");
            date = rs.getDate("POST_DATE");
            viewNo = rs.getString("POST_VIEW_NO");
            content = rs.getString("POST_CONTENT");
            pw = rs.getString("POST_PWD");

            boardDto = new BoardDto();
            
            boardDto.setPostNo(Integer.toString(no));
            boardDto.setPostTitle(title);
            boardDto.setPostWriter(writer);
            boardDto.setPostDate(date);
            boardDto.setPostViewNo(viewNo);
            boardDto.setPostContent(content);
            boardDto.setPostPwd(pw);
         } 
         

      } catch (Exception e) {
         // TODO: handle exception
      } finally {
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

      return boardDto;
   }
   
   public int updateContent(BoardDto boardDto) throws Exception {
      int rsNum = 0;
      
      PreparedStatement pstmt = null;
      
      String sql = "UPDATE BOARD";
      sql += " SET POST_TITLE = ?, POST_CONTENT = ?";
      sql += " WHERE POST_NO = ?";
      
      try {
         pstmt = connection.prepareStatement(sql);
         
         pstmt.setString(1, boardDto.getPostTitle());
         pstmt.setString(2, boardDto.getPostContent());
         pstmt.setInt(3, Integer.parseInt(boardDto.getPostNo())); 
         
         rsNum = pstmt.executeUpdate();
         
      } catch (Exception e) {
         // TODO: handle exception
         e.printStackTrace();
         throw e;
      } finally {
         if(pstmt != null) {
            try {
               pstmt.close();
            } catch (SQLException e) {
               // TODO Auto-generated catch block
               e.printStackTrace();
            }
         }
      }
      
      return rsNum;
   }
   
   public void postCnt(int no) throws Exception{
      PreparedStatement pstmt = null;
      
      String sql = "UPDATE BOARD"; 
      sql += " SET POST_VIEW_NO =  POST_VIEW_NO + 1";
      sql += " WHERE POST_NO = ?";
      
      try {
         pstmt = connection.prepareStatement(sql);
         
         pstmt.setInt(1, no);
         
         pstmt.executeUpdate();
         
      } catch (Exception e) {
         e.printStackTrace();
         throw e;
      } finally {
         if(pstmt != null) {
            try {
               pstmt.close();
            } catch (SQLException e) {
               // TODO Auto-generated catch block
               e.printStackTrace();
            }
         }
      }
   }
   
   public int totalContent() throws Exception {
      ResultSet rs= null;
      PreparedStatement pstmt = null;
      
      try {
         String sql = "SELECT COUNT(POST_TITLE) FROM BOARD";
         
         pstmt = connection.prepareStatement(sql);
         
         rs = pstmt.executeQuery();
         if(rs.next()) {
            totalContentNum = rs.getInt(1); 
         }
         
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         if(rs != null) {
            rs.close();
         }
         if(pstmt != null) {
            pstmt.close();
         }
      }
      return totalContentNum;
   }
   
   public PageDto boardListNum(int pageNo) throws Exception {
      int startPage;
      int endPage;
      int totalPage;
      int postPerPage = 10;
      int totalContent = totalContent();
      
      PageDto pageDto = new PageDto();
      
      totalPage = ((totalContent - 1) / postPerPage) + 1;
      startPage = ((pageNo-1) / 5) * 5 + 1;
      endPage = (((pageNo - 1) / 5) + 1) * 5;
      
      pageDto.setEndPage(endPage);
      pageDto.setStartPage(startPage);
      pageDto.setTotalPage(totalPage);
      pageDto.setTotalContent(totalContent);
      pageDto.setCurrentPage(pageNo);
      
//      PreparedStatement pstmt = null;
//      ResultSet rs = null;
//      
//      String sql = "SELECT POST_NO";
//      sql += "FROM (SELECT ROWNUM AS RN, B.POST_NO";
//      sql += " FROM BOARD B";
//      sql += " ORDER BY POST_NO DESC";
//      sql += ")";
//      sql += "WHERE RN BETWEEN ? AND ?";
//      
//      if(rs.next()) {
//         
//      }
      return pageDto;
   }
}