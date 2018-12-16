package kr.co.jobstory.repository.domain;

public class Comment {
	private int commentNo;
	private String commentContent;
	private String commentWrite;
	private int boardNo;
	
	
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public String getCommentWrite() {
		return commentWrite;
	}
	public void setCommentWrite(String commentWrite) {
		this.commentWrite = commentWrite;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	
	
	
}
