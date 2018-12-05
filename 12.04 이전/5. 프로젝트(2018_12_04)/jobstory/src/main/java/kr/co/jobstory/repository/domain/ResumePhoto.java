package kr.co.jobstory.repository.domain;

import org.springframework.web.multipart.MultipartFile;

public class ResumePhoto {
	
	private MultipartFile resumePhoto;
	private int resumePhotoNo;
	private String oriName;
	private String SerName;
	private String serPath;
	private int resumeNo;
	
	public int getResumePhotoNo() {
		return resumePhotoNo;
	}
	public void setResumePhotoNo(int resumePhotoNo) {
		this.resumePhotoNo = resumePhotoNo;
	}
	public MultipartFile getResumePhoto() {
		return resumePhoto;
	}
	public void setResumePhoto(MultipartFile resumePhoto) {
		this.resumePhoto = resumePhoto;
	}
	public int getResumeNo() {
		return resumeNo;
	}
	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}
	public String getOriName() {
		return oriName;
	}
	public void setOriName(String oriName) {
		this.oriName = oriName;
	}
	public String getSerName() {
		return SerName;
	}
	public void setSerName(String serName) {
		SerName = serName;
	}
	public String getSerPath() {
		return serPath;
	}
	public void setSerPath(String serPath) {
		this.serPath = serPath;
	}
}
