package kr.co.jobstory.repository.domain;

import java.util.Date;

public class Apply {
	private int recruitmentNo;
	private String fnp;
	private Date regDate;
	private int resumeNo;
	private int applyNo;
	private int count;
	private Code code;
	private ResumeStandard resumeStandard;
	private ResumePhoto resumePhoto;
	
	private Recruitment recruitment;
	private User user;
	
	
	
	
	
	
	
	

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Recruitment getRecruitment() {
		return recruitment;
	}
	public void setRecruitment(Recruitment recruitment) {
		this.recruitment = recruitment;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public ResumePhoto getResumePhoto() {
		return resumePhoto;
	}
	public void setResumePhoto(ResumePhoto resumePhoto) {
		this.resumePhoto = resumePhoto;
	}
	public Code getCode() {
		return code;
	}
	public void setCode(Code code) {
		this.code = code;
	}
	public ResumeStandard getResumeStandard() {
		return resumeStandard;
	}
	public void setResumeStandard(ResumeStandard resumeStandard) {
		this.resumeStandard = resumeStandard;
	}
	public int getRecruitmentNo() {
		return recruitmentNo;
	}
	public void setRecruitmentNo(int recruitmentNo) {
		this.recruitmentNo = recruitmentNo;
	}
	
	public String getFnp() {
		return fnp;
	}
	public void setFnp(String fnp) {
		this.fnp = fnp;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getResumeNo() {
		return resumeNo;
	}
	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}
	public int getApplyNo() {
		return applyNo;
	}
	public void setApplyNo(int applyNo) {
		this.applyNo = applyNo;
	}
	
	
	
}
