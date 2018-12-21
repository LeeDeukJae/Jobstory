package kr.co.jobstory.repository.domain;

import java.util.Date;
import java.util.List;

public class InterBoard {
	private int boardNo;
	private String title;
	private String company;
	private int level;
	private int viewCnt;
	private String jobId;
	private int applyDate;
	private String writer;
	private String content;
	
	private String oriName;
	private String serName;
	private String serPath;
	
	private Date regDate;
	
	private Comment comment;
	
	
	
	
	public Comment getComment() {
		return comment;
	}
	public void setComment(Comment comment) {
		this.comment = comment;
	}
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
	
	
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public int getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(int applyDate) {
		this.applyDate = applyDate;
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
	public String getOriName() {
		return oriName;
	}
	public void setOriName(String oriName) {
		this.oriName = oriName;
	}
	public String getSerName() {
		return serName;
	}
	public void setSerName(String serName) {
		this.serName = serName;
	}
	public String getSerPath() {
		return serPath;
	}
	public void setSerPath(String serPath) {
		this.serPath = serPath;
	}
	
	
	@Override
	public String toString() {
		return "InterBoard [boardNo=" + boardNo + ", title=" + title + ", company=" + company + ", level=" + level
				+ ", viewCnt=" + viewCnt + ", jobId=" + jobId + ", applyDate=" + applyDate + ", writer=" + writer
				+ ", content=" + content + ", oriName=" + oriName + ", serName=" + serName + ", serPath=" + serPath
				+ ", regDate=" + regDate + "]";
	}
	
	
	
	
}