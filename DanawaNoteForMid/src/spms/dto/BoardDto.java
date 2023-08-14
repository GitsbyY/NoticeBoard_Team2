package spms.dto;

import java.util.Date;

public class BoardDto {
	private String userEmail;
	private String postNo;
	private String postTitle;
	private String postWriter;
	private Date postDate;
	private String postPwd;
	private String postContent;
	private String postViewNo;
	
	public BoardDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BoardDto(String postNo, String postTitle, String postWriter, Date postDate, String postViewNo) {
		this.postNo = postNo;
		this.postTitle = postTitle;
		this.postWriter = postWriter;
		this.postDate = postDate;
		this.postViewNo = postViewNo;
	}
	
	public BoardDto(String userEmail, String postNo, String postTitle, String postWriter, Date postDate,
			String postPwd, String postContent, String postViewNo) {
		super();
		this.userEmail = userEmail;
		this.postNo = postNo;
		this.postTitle = postTitle;
		this.postWriter = postWriter;
		this.postDate = postDate;
		this.postPwd = postPwd;
		this.postContent = postContent;
		this.postViewNo = postViewNo;
	}


	public String getUserEmail() {
		return userEmail;
	}


	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}


	public String getPostNo() {
		return postNo;
	}


	public void setPostNo(String postNo) {
		this.postNo = postNo;
	}


	public String getPostTitle() {
		return postTitle;
	}


	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}


	public String getPostWriter() {
		return postWriter;
	}


	public void setPostWriter(String postWriter) {
		this.postWriter = postWriter;
	}


	public Date getPostDate() {
		return postDate;
	}


	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}


	public String getPostPwd() {
		return postPwd;
	}


	public void setPostPwd(String postPwd) {
		this.postPwd = postPwd;
	}


	public String getPostContent() {
		return postContent;
	}


	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}


	public String getPostViewNo() {
		return postViewNo;
	}


	public void setPostViewNo(String postViewNo) {
		this.postViewNo = postViewNo;
	}


	@Override
	public String toString() {
		return "BoardDto [userEmail=" + userEmail + ", postNo=" + postNo + ", postTitle=" + postTitle
				+ ", postWriter=" + postWriter + ", postDate=" + postDate + ", postPwd=" + postPwd
				+ ", postContent=" + postContent + ", postViewNo=" + postViewNo + "]";
	}

	
	
}
