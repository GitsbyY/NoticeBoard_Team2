package spms.dto;

import java.util.Date;

public class MemberDto {
	
	private int userNo;
	private String userId;
	private String userPwd;
	private String userEmail;
	private String userPhone;
	private String userName;
	private String userNickname;
	private Date userCreateDate;
	private Date userModifiedDate;
	
	public MemberDto() {
		super();
	}
	
	public MemberDto(int userNo, String userId, String userPwd, String userEmail, String userPhone, String userName,
			String userNickname, Date userCreateDate, Date userModifiedDate) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.userName = userName;
		this.userNickname = userNickname;
		this.userCreateDate = userCreateDate;
		this.userModifiedDate = userModifiedDate;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public Date getUserCreateDate() {
		return userCreateDate;
	}

	public void setUserCreateDate(Date userCreateDate) {
		this.userCreateDate = userCreateDate;
	}

	public Date getUserModifiedDate() {
		return userModifiedDate;
	}

	public void setUserModifiedDate(Date userModifiedDate) {
		this.userModifiedDate = userModifiedDate;
	}

	@Override
	public String toString() {
		return "MemberDto [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", userEmail="
				+ userEmail + ", userPhone=" + userPhone + ", userName=" + userName + ", userNickname=" + userNickname
				+ ", userCreateDate=" + userCreateDate + ", userModifiedDate=" + userModifiedDate + "]";
	}

}
