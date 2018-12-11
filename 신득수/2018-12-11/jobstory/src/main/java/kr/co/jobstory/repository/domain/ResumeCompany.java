package kr.co.jobstory.repository.domain;

public class ResumeCompany {
	private int experienceNo;
	private String compName;
	private String compJoinY;
	private String compJoinM;
	private String compJoinDate;
	private String compResignY;
	private String compResignM;
	private String compResignDate;
	private String compStatusId;
	private String compLocationId;
	private String compDep;
	private int compSalary;
	private String compResignId;
	private String compPosition;
	private String compJobId;
	private int compTotalY;
	private int compTotalM;
	private int resumeNo;
	
	public int getCompTotalY() {
		return compTotalY;
	}
	public void setCompTotalY(int compTotalY) {
		this.compTotalY = compTotalY;
	}
	public int getCompTotalM() {
		return compTotalM;
	}
	public void setCompTotalM(int compTotalM) {
		this.compTotalM = compTotalM;
	}
	public String getCompJoinDate() {
		if(compJoinDate=="" || compJoinDate==null) {
			return compJoinY + ". " + compJoinM;
		}
		return compJoinDate;
	}
	public void setCompJoinDate(String compJoinDate) {
		this.compJoinDate = compJoinDate;
	}
	public String getCompResignDate() {
		if(compResignDate=="" || compResignDate==null) {
			return compResignY + ". " + compResignM;
		}
		return compResignDate;
	}
	public void setCompResignDate(String compResignDate) {
		this.compResignDate = compResignDate;
	}
	public int getExperienceNo() {
		return experienceNo;
	}
	public void setExperienceNo(int experienceNo) {
		this.experienceNo = experienceNo;
	}
	public String getCompName() {
		return compName;
	}
	public void setCompName(String compName) {
		this.compName = compName;
	}
	public String getCompJoinY() {
		return compJoinY;
	}
	public void setCompJoinY(String compJoinY) {
		this.compJoinY = compJoinY;
	}
	public String getCompJoinM() {
		return compJoinM;
	}
	public void setCompJoinM(String compJoinM) {
		this.compJoinM = compJoinM;
	}
	public String getCompResignY() {
		return compResignY;
	}
	public void setCompResignY(String compResignY) {
		this.compResignY = compResignY;
	}
	public String getCompResignM() {
		return compResignM;
	}
	public void setCompResignM(String compResignM) {
		this.compResignM = compResignM;
	}
	public String getCompStatusId() {
		return compStatusId;
	}
	public void setCompStatusId(String compStatusId) {
		this.compStatusId = compStatusId;
	}
	public String getCompLocationId() {
		return compLocationId;
	}
	public void setCompLocationId(String compLocationId) {
		this.compLocationId = compLocationId;
	}
	public String getCompDep() {
		return compDep;
	}
	public void setCompDep(String compDep) {
		this.compDep = compDep;
	}
	public int getCompSalary() {
		return compSalary;
	}
	public void setCompSalary(int compSalary) {
		this.compSalary = compSalary;
	}
	public String getCompResignId() {
		return compResignId;
	}
	public void setCompResignId(String compResignId) {
		this.compResignId = compResignId;
	}
	public String getCompPosition() {
		return compPosition;
	}
	public void setCompPosition(String compPosition) {
		this.compPosition = compPosition;
	}
	public String getCompJobId() {
		return compJobId;
	}
	public void setCompJobId(String compJobId) {
		this.compJobId = compJobId;
	}
	public int getResumeNo() {
		return resumeNo;
	}
	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}
}
