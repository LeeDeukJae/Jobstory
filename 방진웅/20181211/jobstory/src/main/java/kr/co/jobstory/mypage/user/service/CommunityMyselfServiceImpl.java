package kr.co.jobstory.mypage.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jobstory.repository.domain.MyselfBoard;
import kr.co.jobstory.repository.domain.CommunityPage;
import kr.co.jobstory.repository.mapper.MyselfMapper;

@Service
public class CommunityMyselfServiceImpl implements CommunityMyselfService {
	@Autowired
	private MyselfMapper mapper;
	
	@Override
	public List<MyselfBoard> list(CommunityPage page){		
	return mapper.selectBoard(page); 
	}

	@Override
	public MyselfBoard detail(int no) {
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
	public void insertBoard(MyselfBoard board) {
		mapper.insertBoard(board);
		
	}

	@Override
	public int listCount() {
		return mapper.listCount();
	}
	
}
