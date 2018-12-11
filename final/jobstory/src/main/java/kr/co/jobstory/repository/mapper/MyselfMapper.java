package kr.co.jobstory.repository.mapper;

import java.util.List;

import kr.co.jobstory.repository.domain.CommunityPage;
import kr.co.jobstory.repository.domain.MyselfBoard;
import kr.co.jobstory.repository.domain.MyselfUpload;

public interface MyselfMapper {
	List<MyselfBoard> selectBoard(CommunityPage page);
	
	MyselfBoard selectBoardByNo(int no);
	int listCount();
	void insertBoard(MyselfBoard board);
	int deleteBoard(int no);
	void viewCntUp(int no);
	
	void uploadBoard(MyselfUpload upload);
	List<MyselfUpload> fileUpload(int no);
}
