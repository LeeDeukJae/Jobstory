package kr.co.jobstory.repository.domain;

public class UserCalendar {
	private int memoNo;
	private String recruitmentNo;
	private String content;
	private String calendarDate;
	private int memberNo;
	
	
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getCalendarDate() {
		return calendarDate;
	}
	public void setCalendarDate(String calendarDate) {
		this.calendarDate = calendarDate;
	}
	public int getMemoNo() {
		return memoNo;
	}
	public void setMemoNo(int memoNo) {
		this.memoNo = memoNo;
	}
	public String getRecruitmentNo() {
		return recruitmentNo;
	}
	public void setRecruitmentNo(String recruitmentNo) {
		this.recruitmentNo = recruitmentNo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
