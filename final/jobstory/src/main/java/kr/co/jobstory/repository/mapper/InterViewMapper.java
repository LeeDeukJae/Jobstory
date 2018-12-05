package kr.co.jobstory.repository.mapper;

import java.util.List;

import kr.co.jobstory.repository.domain.InterBoard;

public interface InterViewMapper {
	List<InterBoard> selectBoard();
	InterBoard selectBoardByNo(int no);
	void insertBoard(InterBoard board);
	int deleteBoard(int no);
	void viewCntUp(int no);
}
