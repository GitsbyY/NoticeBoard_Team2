package spms.vo;

public class PageVO {
	private int startPage; // 시작 페이지
	private int endPage; // 마지막 페이지
	private int totalPage; //총 페이지
	
	private int showPage = 5;
	private int showRow = 10;
	
	
	public PageVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public PageVO(int startPage, int endPage, int totalPage, int showPage, int showRow) {
		super();
		this.startPage = startPage;
		this.endPage = endPage;
		this.totalPage = totalPage;
		this.showPage = showPage;
		this.showRow = showRow;
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


	public int getShowPage() {
		return showPage;
	}


	public void setShowPage(int showPage) {
		this.showPage = showPage;
	}


	public int getShowRow() {
		return showRow;
	}


	public void setShowRow(int showRow) {
		this.showRow = showRow;
	}


	@Override
	public String toString() {
		return "PageVO [startPage=" + startPage + ", endPage=" + endPage + ", totalPage=" + totalPage + ", showPage="
				+ showPage + ", showRow=" + showRow + "]";
	}
	
	
	
}
