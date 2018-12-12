package kr.co.jobstory.mypage.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jobstory.repository.domain.InterBoard;
import kr.co.jobstory.repository.domain.CommunityPage;
import kr.co.jobstory.repository.mapper.InterViewMapper;

@Service
public class CommunityInterviewServiceImpl implements CommunityInterviewService {
	@Autowired
	private InterViewMapper mapper;
	
	@Override
	public List<InterBoard> list(CommunityPage page){		
	return mapper.selectBoard(page); 
	}

	@Override
	public InterBoard detail(int no) {
		return mapper.selectBoardByNo(no);
	}

	@Override
	public void viewCnt(int no) {
		mapper.viewCntUp(no);
		
	}

	@Override
	public int deleteBoard(int no) {
		return mapper.deleteBoard(no);
	}

	@Override
	public void insertBoard(InterBoard board) {
		mapper.insertBoard(board);
		
	}

	@Override
	public int listCount() {
		return mapper.listCount();
	}

	@Override
	public void updateBoard(InterBoard board) {
		mapper.updateBoard(board);
		
	}
	
}
