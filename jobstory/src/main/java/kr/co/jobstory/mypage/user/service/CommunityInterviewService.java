package kr.co.jobstory.mypage.user.service;

import java.util.List;

import kr.co.jobstory.repository.domain.InterBoard;
import kr.co.jobstory.repository.domain.InterviewReport;
import kr.co.jobstory.repository.domain.CommunityPage;

public interface CommunityInterviewService {
	List<InterBoard> list(CommunityPage page);
	int listCount();
	InterBoard detail(int no);
	void insertBoard(InterBoard board);
	int deleteBoard(int no);
	void viewCnt(int no);
	void updateBoard(InterBoard board);
	void report(InterviewReport report);
	InterviewReport reportSelect(InterviewReport report);
}
