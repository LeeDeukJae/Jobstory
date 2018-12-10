package kr.co.jobstory.mypage.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jobstory.repository.domain.CompReviewBoard;
import kr.co.jobstory.repository.mapper.CompReviewBoardMapper;





@Service
public class CommunityReviewServiceImpl implements CommunityReviewService{

	@Autowired
	private CompReviewBoardMapper mapper;
	
	@Override
	public List<CompReviewBoard> list() {
		return mapper.selectBoard(); // list 객체
	}
	
	@Override
	public CompReviewBoard detail(int no) {
		return mapper.selectBoardByNo(no);
	}
	
	@Override
	public void insertBoard(CompReviewBoard compReviewBoard) {
		mapper.insertBoard(compReviewBoard);
	}
	
	@Override
	public void updateBoard(CompReviewBoard compReviewBoard) {
		mapper.updateBoard(compReviewBoard);
	}	
	
	@Override
	public int deleteBoard(int no) {
		return mapper.deleteBoard(no);
	}
	
    @Override
    public void viewCnt(int no) {
       mapper.viewCnt(no);
    }
}
