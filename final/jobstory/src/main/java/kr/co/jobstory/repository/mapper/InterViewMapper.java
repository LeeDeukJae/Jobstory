package kr.co.jobstory.repository.mapper;

import java.util.List;

import kr.co.jobstory.repository.domain.InterBoard;
import kr.co.jobstory.repository.domain.Page;

public interface InterViewMapper {
	List<InterBoard> selectBoard(Page page);
	
	InterBoard selectBoardByNo(int no);
	int listCount();
	void insertBoard(InterBoard board);
	int deleteBoard(int no);
	void viewCntUp(int no);
	int updateBoard(InterBoard board);


}
