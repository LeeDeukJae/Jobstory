package kr.co.jobstory.repository.domain;

public class LikeAndHate {
	private int recruitmentNo;
	private Integer likeHate;
	private int memberNo;
	private int count;
	
	
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getRecruitmentNo() {
		return recruitmentNo;
	}
	public void setRecruitmentNo(int recruitmentNo) {
		this.recruitmentNo = recruitmentNo;
	}
	
	
	public Integer getLikeHate() {
		return likeHate;
	}
	public void setLikeHate(Integer likeHate) {
		this.likeHate = likeHate;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	
	
}
