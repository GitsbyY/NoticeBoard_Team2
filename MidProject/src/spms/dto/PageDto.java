package spms.dto;

public class PageDto {
   int currentPage; // 현재 페이지
   int startPage; // 현재 페이지 기준 시작페이지 (Ex: 현재 7페이지일때 시작페이지는 6)
   int endPage; // 현재 페이지 기준 끝페이지 (Ex: 현재 7페이지일때 끝페이지는 10)
   int totalPage; // 총 페이지 수
   int totalContent; // 총 게시물 수
   
   
   public PageDto() {
      super();
      // TODO Auto-generated constructor stub
   }

   public PageDto(int currentPage, int startPage, int endPage, int totalPage, int totalContent) {
      super();
      this.currentPage = currentPage;
      this.startPage = startPage;
      this.endPage = endPage;
      this.totalPage = totalPage;
      this.totalContent = totalContent;
   }


   public int getCurrentPage() {
      return currentPage;
   }


   public void setCurrentPage(int currentPage) {
      this.currentPage = currentPage;
   }


   public int getStartPage() {
      return startPage;
   }


   public void setStartPage(int startPage) {
      this.startPage = startPage;
   }


   public int getEndPage() {
      return endPage;
   }


   public void setEndPage(int endPage) {
      this.endPage = endPage;
   }


   public int getTotalPage() {
      return totalPage;
   }


   public void setTotalPage(int totalPage) {
      this.totalPage = totalPage;
   }


   public int getTotalContent() {
      return totalContent;
   }


   public void setTotalContent(int totalContent) {
      this.totalContent = totalContent;
   }


   @Override
   public String toString() {
      return "PageDto [currentPage=" + currentPage + ", startPage=" + startPage + ", endPage=" + endPage
            + ", totalPage=" + totalPage + ", totalContent=" + totalContent + "]";
   }
   
}