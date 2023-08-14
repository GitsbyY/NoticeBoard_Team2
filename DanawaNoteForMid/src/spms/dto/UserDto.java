package spms.dto;

import java.util.Date;

//Bean Spec
public class UserDto {

	private int no;
	private String id;
	private String password;
	private String email;
	private String name;
	private int phone;
	private String nickname;
	private Date createDate;
	private Date modifiedDate;
	
	public UserDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public UserDto(int no, String name, String email, Date createDate) {
		super();
		this.no = no;
		this.name = name;
		this.email = email;
		this.createDate = createDate;
	}
	
	public UserDto(int no, String id, String password, String email, String name, int phone, String nickname,
			Date createDate, Date modifiedDate) {
		super();
		this.no = no;
		this.id = id;
		this.password = password;
		this.email = email;
		this.name = name;
		this.phone = phone;
		this.nickname = nickname;
		this.createDate = createDate;
		this.modifiedDate = modifiedDate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	
	@Override
	public String toString() {
		return "UserDto [no=" + no + ", id=" + id + ", password=" + password + ", email=" + email + ", name=" + name
				+ ", phone=" + phone + ", nickname=" + nickname + ", createDate=" + createDate + ", modifiedDate="
				+ modifiedDate + "]";
	}
	
	
	
}
