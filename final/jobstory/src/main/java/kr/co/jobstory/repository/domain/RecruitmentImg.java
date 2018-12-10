package kr.co.jobstory.repository.domain;

import java.util.List;

public class RecruitmentImg {
	private int imgNo;
	private int recruitmentNo;
	private String imgOriName;
	private String imgSerName;
	private String imgSerPath;
	
	private List<Integer> imgList;
	
	private Recruitment recruitment;
	
	
	
	
	
	
	public List<Integer> getImgList() {
		return imgList;
	}
	public void setImgList(List<Integer> imgList) {
		this.imgList = imgList;
	}
	public int getImgNo() {
		return imgNo;
	}
	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}
	public Recruitment getRecruitment() {
		return recruitment;
	}
	public void setRecruitment(Recruitment recruitment) {
		this.recruitment = recruitment;
	}
	public int getRecruitmentNo() {
		return recruitmentNo;
	}
	public void setRecruitmentNo(int recruitmentNo) {
		this.recruitmentNo = recruitmentNo;
	}
	public String getImgOriName() {
		return imgOriName;
	}
	public void setImgOriName(String imgOriName) {
		this.imgOriName = imgOriName;
	}
	public String getImgSerName() {
		return imgSerName;
	}
	public void setImgSerName(String imgSerName) {
		this.imgSerName = imgSerName;
	}
	public String getImgSerPath() {
		return imgSerPath;
	}
	public void setImgSerPath(String imgSerPath) {
		this.imgSerPath = imgSerPath;
	}
	
	
	
}
