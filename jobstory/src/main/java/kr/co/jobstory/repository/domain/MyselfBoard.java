package kr.co.jobstory.repository.domain;

import java.util.Date;

public class MyselfBoard {
	private int boardNo;
	private String title;
	private String company;
	private int viewCnt;
	private String jobId;
	private int applyDate;
	private String writer;
	private String content;
	private int attachNo;	
	private Date regDate;
	

	
	public int getBoardNo() {
		return boardNo;
	}



	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public String getCompany() {
		return company;
	}



	public void setCompany(String company) {
		this.company = company;
	}



	public int getViewCnt() {
		return viewCnt;
	}



	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}



	public String getJobId() {
		return jobId;
	}



	public void setJobId(String jobId) {
		this.jobId = jobId;
	}



	public int getApplyDate() {
		return applyDate;
	}



	public void setApplyDate(int applyDate) {
		this.applyDate = applyDate;
	}



	public String getWriter() {
		return writer;
	}



	public void setWriter(String writer) {
		this.writer = writer;
	}



	public String getContent() {
		return content;
	}



	public void setContent(String content) {
		this.content = content;
	}



	public int getAttachNo() {
		return attachNo;
	}



	public void setAttachNo(int attachNo) {
		this.attachNo = attachNo;
	}



	public Date getRegDate() {
		return regDate;
	}



	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}



	@Override
	public String toString() {
		return "MyselfBoard [boardNo=" + boardNo + ", title=" + title + ", company=" + company + ", viewCnt=" + viewCnt + ", jobId=" + jobId + ", applyDate=" + applyDate + ", writer=" + writer
				+ ", content=" + content +", attachNo=" + attachNo
				+ ", regDate=" + regDate + "]";
	}
	
	
	
	
}