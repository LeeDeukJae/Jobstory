package kr.co.jobstory.repository.domain;

public class ResumeHighschool {
	private int highschoolNo;
	private String highName;
	private String highMajorId;
	private String highLocationId;
	private String highEnterY;
	private String highEnterM;
	private String highEnterDate;
	private String highEnterId;
	private String highGraduY	;
	private String highGraduM	;
	private String highGraduDate;
	private String highGraduId	;
	private int resumeNo;
	
	public int getResumeNo() {
		return resumeNo;
	}
	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}
	public int getHighschoolNo() {
		return highschoolNo;
	}
	public void setHighschoolNo(int highschoolNo) {
		this.highschoolNo = highschoolNo;
	}
	public String getHighName() {
		return highName;
	}
	public void setHighName(String highName) {
		this.highName = highName;
	}
	public String getHighMajorId() {
		return highMajorId;
	}
	public void setHighMajorId(String highMajorId) {
		this.highMajorId = highMajorId;
	}
	public String getHighLocationId() {
		return highLocationId;
	}
	public void setHighLocationId(String highLocationId) {
		this.highLocationId = highLocationId;
	}
	public String getHighEnterY() {
		return highEnterY;
	}
	public void setHighEnterY(String highEnterY) {
		this.highEnterY = highEnterY;
	}
	public String getHighEnterM() {
		return highEnterM;
	}
	public void setHighEnterM(String highEnterM) {
		this.highEnterM = highEnterM;
	}
	public String getHighEnterDate() {
		if(highEnterDate=="" || highEnterDate==null) {
			return highEnterY + ". " + highEnterM;
		}
		return highEnterDate;
	}
	public void setHighEnterDate(String highEnterDate) {
		this.highEnterDate = highEnterDate;
	}

	public String getHighGraduY() {
		return highGraduY;
	}
	public void setHighGraduY(String highGraduY) {
		this.highGraduY = highGraduY;
	}
	public String getHighGraduM() {
		return highGraduM;
	}
	public void setHighGraduM(String highGraduM) {
		this.highGraduM = highGraduM;
	}
	public String getHighGraduDate() {
		if(highGraduDate=="" || highGraduDate==null) {
			return highGraduY + ". " + highGraduM;
		}
		return highGraduDate;
	}
	public void setHighGraduDate(String highGraduDate) {
		this.highGraduDate = highGraduDate;
	}
	public String getHighEnterId() {
		return highEnterId;
	}
	public void setHighEnterId(String highEnterId) {
		this.highEnterId = highEnterId;
	}
	public String getHighGraduId() {
		return highGraduId;
	}
	public void setHighGraduId(String highGraduId) {
		this.highGraduId = highGraduId;
	}

}
