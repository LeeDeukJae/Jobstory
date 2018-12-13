package kr.co.jobstory.repository.domain;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class MyselfUpload {
	private List<MultipartFile> attach;
	private int fileNo;
	private int boardNo;
	private Date regDate;
	private String oriName;
	private String serName;
	private String serPath;
	private int fileSize;
	
	public List<MultipartFile> getAttach() {
		return attach;
	}
	public void setAttach(List<MultipartFile> attach) {
		this.attach = attach;
	}
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
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
	public int getFileSize() {
		return fileSize;
	}
	public void setFileSize(int fileSize) {
		this.fileSize = fileSize;
	}
	
	
	@Override
	public String toString() {
		return "MyselfUpload [attach=" + attach + ", fileNo=" + fileNo + ", boardNo=" + boardNo + ", regDate=" + regDate
				+ ", oriName=" + oriName + ", serName=" + serName + ", serPath=" + serPath + ", fileSize=" + fileSize
				+ "]";
	}



}
