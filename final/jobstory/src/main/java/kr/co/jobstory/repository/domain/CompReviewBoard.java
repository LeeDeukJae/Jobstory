package kr.co.jobstory.repository.domain;

import java.util.Date;

public class CompReviewBoard {
	private int no;
	private String name;
	private String title;
	private String content;
	private Date regDate;
	private int viewCnt;
	private double score1;
	private double score2;
	private double score3;
	private double score4;
	private double score5;
	

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	public double getScore1() {
		return score1;
	}
	public void setScore1(double score1) {
		this.score1 = score1;
	}
	public double getScore2() {
		return score2;
	}
	public void setScore2(double score2) {
		this.score2 = score2;
	}
	public double getScore3() {
		return score3;
	}
	public void setScore3(double score3) {
		this.score3 = score3;
	}
	public double getScore4() {
		return score4;
	}
	public void setScore4(double score4) {
		this.score4 = score4;
	}
	public double getScore5() {
		return score5;
	}
	public void setScore5(double score5) {
		this.score5 = score5;
	}
	
	
	
	
}