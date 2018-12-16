package kr.co.jobstory.mypage.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jobstory.repository.domain.CompReviewBoard;
import kr.co.jobstory.repository.domain.InterBoard;
import kr.co.jobstory.repository.mapper.AdminMapper;

@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminMapper mapper;
	
	@Override
	public List<CompReviewBoard> waitBoard() {
		return mapper.waitBoard();
	}
	
	@Override
	public void success(int no) {
		mapper.success(no);
	}
	
	
	@Override
	public List<InterBoard> reportBoard() {
		return mapper.reportBoard();
	}
	
	@Override
	public void reportDelete(int boardNo) {
		mapper.reportDelete(boardNo);
		
	}
}
