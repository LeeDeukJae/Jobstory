package kr.co.jobstory.mypage.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jobstory.repository.domain.InterBoard;
import kr.co.jobstory.repository.domain.InterviewReport;
import kr.co.jobstory.repository.domain.Comment;
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
	
	@Override
	public void report(InterviewReport report) {
		mapper.report(report);
		
	}
	
	@Override
	public InterviewReport reportSelect(InterviewReport report) {
		return mapper.reportSelect(report);
	}
	
	@Override
	public void insertComment(Comment comment) {
		mapper.insertComment(comment);
		
	}
	
	@Override
	public List<Comment> selectComment(int boardNo) {
		return mapper.selectComment(boardNo);
	}
	
	@Override
	public void updateComment(Comment comment) {
		mapper.updateComment(comment);
		
	}
	
	@Override
	public void deleteComment(int commentNo) {
		mapper.deleteComment(commentNo);
		
	}
	
}
