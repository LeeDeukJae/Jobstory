package kr.co.jobstory.repository.domain;

import java.util.Date;

public class Scrap {
	private int scrapNo;
	private int memberNo;
	private int recruitmentNo;
	private String name;
	private String title;
	private String experienceTitle;
	private String educationTitle;
	private String workTitle;
	private String addr;
	private Date endDate;
	private String viewParsingEndDate;
	private String paramParsingEndDate;
	private int scrapCnt;

	public String getViewParsingEndDate() {
		return viewParsingEndDate;
	}
	public void setViewParsingEndDate(String viewParsingEndDate) {
		this.viewParsingEndDate = viewParsingEndDate;
	}
	public String getParamParsingEndDate() {
		return paramParsingEndDate;
	}
	public void setParamParsingEndDate(String paramParsingEndDate) {
		this.paramParsingEndDate = paramParsingEndDate;
	}
	public int getScrapCnt() {
		return scrapCnt;
	}
	public void setScrapCnt(int scrapCnt) {
		this.scrapCnt = scrapCnt;
	}
	public int getScrapNo() {
		return scrapNo;
	}
	public void setScrapNo(int scrapNo) {
		this.scrapNo = scrapNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	
	public int getRecruitmentNo() {
		return recruitmentNo;
	}
	public void setRecruitmentNo(int recruitmentNo) {
		this.recruitmentNo = recruitmentNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getExperienceTitle() {
		return experienceTitle;
	}
	public void setExperienceTitle(String experienceTitle) {
		this.experienceTitle = experienceTitle;
	}
	public String getEducationTitle() {
		return educationTitle;
	}
	public void setEducationTitle(String educationTitle) {
		this.educationTitle = educationTitle;
	}
	public String getWorkTitle() {
		return workTitle;
	}
	public void setWorkTitle(String workTitle) {
		this.workTitle = workTitle;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
	
}
