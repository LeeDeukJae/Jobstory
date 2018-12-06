package kr.co.jobstory.repository.domain;

public class ResumeStandard {
	
	private int resumeNo;
	private String title;
	private String name;
	private String email;
	private String cellphone;
	private String phone;
	private String birth;
	private String birthY;
	private String birthM;
	private String birthD;
	private int gender;
	private String addr;
	private String detailAddr;
	private String statusId;
	private String experienceId;
	private String educationId;
	private String Agree;
	private int publicPrivate;
	private int memberNo;
	private String regDate;
	private int resumeCnt;
	
	public int getResumeNo() {
		return resumeNo;
	}
	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCellphone() {
		return cellphone;
	}
	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBirth() {
		if(birth == "" || birth == null) {
			return birthY + ". " + birthM + ". " + birthD;
		}
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getBirthY() {
		return birthY;
	}
	public void setBirthY(String birthY) {
		this.birthY = birthY;
	}
	public String getBirthM() {
		return birthM;
	}
	public void setBirthM(String birthM) {
		this.birthM = birthM;
	}
	public String getBirthD() {
		return birthD;
	}
	public void setBirthD(String birthD) {
		this.birthD = birthD;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getDetailAddr() {
		return detailAddr;
	}
	public void setDetailAddr(String detailAddr) {
		this.detailAddr = detailAddr;
	}
	public String getStatusId() {
		return statusId;
	}
	public void setStatusId(String statusId) {
		this.statusId = statusId;
	}
	public String getExperienceId() {
		return experienceId;
	}
	public void setExperienceId(String experienceId) {
		this.experienceId = experienceId;
	}
	public String getAgree() {
		return Agree;
	}
	public void setAgree(String agree) {
		Agree = agree;
	}
	public int getPublicPrivate() {
		return publicPrivate;
	}
	public void setPublicPrivate(int publicPrivate) {
		this.publicPrivate = publicPrivate;
	}
	public String getEducationId() {
		return educationId;
	}
	public void setEducationId(String educationId) {
		this.educationId = educationId;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public int getResumeCnt() {
		return resumeCnt;
	}
	public void setResumeCnt(int resumeCnt) {
		this.resumeCnt = resumeCnt;
	}
	
	
	
}
