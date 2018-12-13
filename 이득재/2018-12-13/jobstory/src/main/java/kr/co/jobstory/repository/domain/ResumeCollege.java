package kr.co.jobstory.repository.domain;

public class ResumeCollege {
	
	private int collegeNo;
	private String colName;
	private String colLocationId;
	private String colDayNight;
	private String colEducationId;
	private String colMajor;
	private String colMajorId;
	private String colSubMajor;
	private String colSubMajorId;
	private String colEnterY;
	private String colEnterM;
	private String colEnterDate;
	private String colEnterId;
	private String colGraduY;
	private String colGraduM;
	private String colGraduDate;
	private String colGraduId;
	private String colAvgGrade;
	private String colStandGrade;
	private int resumeNo;
	
	public String getColEnterId() {
		return colEnterId;
	}
	public void setColEnterId(String colEnterId) {
		this.colEnterId = colEnterId;
	}
	public String getColGraduId() {
		return colGraduId;
	}
	public void setColGraduId(String colGraduId) {
		this.colGraduId = colGraduId;
	}
	public int getResumeNo() {
		return resumeNo;
	}
	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}
	public int getCollegeNo() {
		return collegeNo;
	}
	public void setCollegeNo(int collegeNo) {
		this.collegeNo = collegeNo;
	}
	public String getColName() {
		return colName;
	}
	public void setColName(String colName) {
		this.colName = colName;
	}
	public String getColLocationId() {
		return colLocationId;
	}
	public void setColLocationId(String colLocationId) {
		this.colLocationId = colLocationId;
	}
	public String getColDayNight() {
		return colDayNight;
	}
	public void setColDayNight(String colDayNight) {
		this.colDayNight = colDayNight;
	}
	public String getColEducationId() {
		return colEducationId;
	}
	public void setColEducationId(String colEducationId) {
		this.colEducationId = colEducationId;
	}
	public String getColMajor() {
		return colMajor;
	}
	public void setColMajor(String colMajor) {
		this.colMajor = colMajor;
	}
	public String getColMajorId() {
		return colMajorId;
	}
	public void setColMajorId(String colMajorId) {
		this.colMajorId = colMajorId;
	}
	public String getColSubMajor() {
		return colSubMajor;
	}
	public void setColSubMajor(String colSubMajor) {
		this.colSubMajor = colSubMajor;
	}
	public String getColSubMajorId() {
		return colSubMajorId;
	}
	public void setColSubMajorId(String colSubMajorId) {
		this.colSubMajorId = colSubMajorId;
	}
	public String getColEnterY() {
		return colEnterY;
	}
	public void setColEnterY(String colEnterY) {
		this.colEnterY = colEnterY;
	}
	public String getColEnterM() {
		return colEnterM;
	}
	public void setColEnterM(String colEnterM) {
		this.colEnterM = colEnterM;
	}
	public String getColEnterDate() {
		if(colEnterDate == "" || colEnterDate == null) {
			return colEnterY + ". " + colEnterM;
		}
		return colEnterDate;
	}
	public void setColEnterDate(String colEnterDate) {
		this.colEnterDate = colEnterDate;
	}
	public String getColGraduY() {
		return colGraduY;
	}
	public void setColGraduY(String colGraduY) {
		this.colGraduY = colGraduY;
	}
	public String getColGraduM() {
		return colGraduM;
	}
	public void setColGraduM(String colGraduM) {
		this.colGraduM = colGraduM;
	}
	public String getColGraduDate() {
		if(colGraduDate == "" || colGraduDate == null) {
			return colGraduY + ". " + colGraduM;
		}
		return colGraduDate;
	}
	public void setColGraduDate(String colGraduDate) {
		this.colGraduDate = colGraduDate;
	}
	public String getColAvgGrade() {
		return colAvgGrade;
	}
	public void setColAvgGrade(String colAvgGrade) {
		this.colAvgGrade = colAvgGrade;
	}
	public String getColStandGrade() {
		return colStandGrade;
	}
	public void setColStandGrade(String colStandGrade) {
		this.colStandGrade = colStandGrade;
	}
	
}
