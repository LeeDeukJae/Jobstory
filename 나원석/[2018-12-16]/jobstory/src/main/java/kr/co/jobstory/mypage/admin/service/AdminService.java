package kr.co.jobstory.mypage.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import kr.co.jobstory.repository.domain.CompReviewBoard;
import kr.co.jobstory.repository.domain.InterBoard;
import kr.co.jobstory.repository.mapper.AdminMapper;

public interface AdminService {
	List<CompReviewBoard> waitBoard();
	List<InterBoard> reportBoard();
	void success(int no);
	void reportDelete(int boardNo);
}
