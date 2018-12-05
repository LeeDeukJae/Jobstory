package kr.co.jobstory.mypage.user.service;

import java.util.List;

import kr.co.jobstory.repository.domain.InterBoard;

public interface CommunityInterviewService {
	List<InterBoard> list();
	InterBoard detail(int no);
	void insertBoard(InterBoard board);
	int deleteBoard(int no);
	void viewCnt(int no);
}
