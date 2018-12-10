package kr.co.jobstory.repository.domain;

import org.springframework.web.multipart.MultipartFile;

public class ResumeAttachFile {
	private int fileNo;
	private String fileId;
	private String regDate;
	private long fileSize;
	private String url;
	private MultipartFile file;
	private String oriName;
	private String serName;
	private String serPath;
	private int memberNo;
	private int attachCnt;

	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public int getAttachCnt() {
		return attachCnt;
	}
	public void setAttachCnt(int attachCnt) {
		this.attachCnt = attachCnt;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	public String getFileId() {
		return fileId;
	}
	public void setFileId(String fileId) {
		this.fileId = fileId;
	}
	public long getFileSize() {
		return fileSize;
	}
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
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
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
}
