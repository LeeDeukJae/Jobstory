package kr.co.jobstory.repository.mapper;

import java.util.List;

import kr.co.jobstory.repository.domain.MyselfBoard;
import kr.co.jobstory.repository.domain.Page;

public interface MyselfMapper {
	List<MyselfBoard> selectBoard(Page page);
	
	MyselfBoard selectBoardByNo(int no);
	int listCount();
	void insertBoard(MyselfBoard board);
	int deleteBoard(int no);
	void viewCntUp(int no);

}
