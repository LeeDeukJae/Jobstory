package kr.co.jobstory.repository.domain;

public class User {
	private int memberNo;
	private String id;
	private String name;
	private String pass;
	private String imgOriName;
	private String imgSerName;
	private String imgSerPath;
	private int authority;
	
	
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImgOriName() {
		return imgOriName;
	}
	public void setImgOriName(String imgOriName) {
		this.imgOriName = imgOriName;
	}
	public String getImgSerName() {
		return imgSerName;
	}
	public void setImgSerName(String imgSerName) {
		this.imgSerName = imgSerName;
	}
	public String getImgSerPath() {
		return imgSerPath;
	}
	public void setImgSerPath(String imgSerPath) {
		this.imgSerPath = imgSerPath;
	}
	public int getAuthority() {
		return authority;
	}
	public void setAuthority(int authority) {
		this.authority = authority;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}

	
	
}
