package kr.co.jobstory.repository.domain;

import java.util.Date;

public class InterviewReport {
	private int boardNo;
	private String sender;
	private Date reportDate;
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public Date getReportDate() {
		return reportDate;
	}
	public void setReportDate(Date reportDate) {
		this.reportDate = reportDate;
	}

	
	
	
	
}
