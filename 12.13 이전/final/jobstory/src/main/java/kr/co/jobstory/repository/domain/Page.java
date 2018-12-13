package kr.co.jobstory.repository.domain;

public class Page {

	private int pageNo;
	private int begin;
	private int beginPage;
	private int endPage;
	private int resumeCnt;
	private boolean prev;
	private boolean next;
	
	/**
	 * 페이징 처리
	 * @param pageNo
	 */
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getPageNo() {
		return pageNo;
	}
	public int getBegin() {
		return (pageNo * 5) - 5;
	}
	public void setBegin(int begin) {
		this.begin = begin;
	}
	public int getBeginPage() {
		return beginPage;
	}
	public void setBeginPage(int beginPage) {
		this.beginPage = beginPage;
	}
	public int getResumeCnt() {
		return resumeCnt;
	}
	public void setResumeCnt(int resumeCnt) {
		this.resumeCnt = resumeCnt;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	
	
	
}
