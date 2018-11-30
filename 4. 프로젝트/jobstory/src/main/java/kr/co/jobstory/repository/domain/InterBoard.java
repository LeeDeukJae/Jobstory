package kr.co.jobstory.repository.domain;

import java.util.Date;
import java.util.List;

public class InterBoard {
	private int boardNo;
	private String title;
	private String company;
	private String level;
	private int viewCnt;
	private String jobId;
	private Date applyDate;
	private String writer;
	private String content;
	private Date regDate;
	
	public int getboardNo() {
		return boardNo;
	}
	public void setboardNo(int boardNo) {
		boardNo = boardNo;
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
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
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
	public void setJobId(String jopId) {
		this.jobId = jobId;
	}
	public Date getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(Date applyDate) {
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
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	
}