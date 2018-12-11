package kr.co.jobstory.mypage.user.service;

import java.util.List;

import kr.co.jobstory.repository.domain.MyselfBoard;
import kr.co.jobstory.repository.domain.CommunityPage;

public interface CommunityMyselfService {
	List<MyselfBoard> list(CommunityPage page);
	int listCount();
	MyselfBoard detail(int no);
	void insertBoard(MyselfBoard board);
	int deleteBoard(int no);
	void viewCnt(int no);
}
