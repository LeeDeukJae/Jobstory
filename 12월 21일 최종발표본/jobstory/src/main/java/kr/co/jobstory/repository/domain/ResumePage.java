package kr.co.jobstory.repository.domain;

public class ResumePage {

	private int resumeCnt;
	private int lastPage;
	private int pageNo;
	private int begin;
	private int beginPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	
	/**
	 * 페이징 처리 생성자
	 * 
	 * @param pageNo
	 * @param resumeCnt
	 * @param listSize
	 * @param tabSize
	 */
	public ResumePage(int pageNo, int resumeCnt, int listSize, int tabSize) {
		this.pageNo = pageNo;
		this.begin = pageNo * listSize - (listSize);
		this.resumeCnt = resumeCnt;
		lastPage = (int)Math.ceil(resumeCnt / (double)listSize);
		int currTab = (pageNo - 1) / tabSize + 1;
		beginPage = (currTab - 1) * tabSize + 1;
		endPage = (currTab * tabSize < lastPage) ? currTab * tabSize
				: lastPage;
		prev = beginPage != 1;
		next = endPage != lastPage;
	}

	public int getBegin() {
		return begin;
	}
	public void setBegin(int begin) {
		this.begin = begin;
	}


	public int getResumeCnt() {
		return resumeCnt;
	}

	public void setResumeCnt(int resumeCnt) {
		this.resumeCnt = resumeCnt;
	}

	public int getLastPage() {
		return lastPage;
	}

	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getBeginPage() {
		return beginPage;
	}

	public void setBeginPage(int beginPage) {
		this.beginPage = beginPage;
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
