package kr.co.jobstory.repository.mapper;

import java.util.List;

import kr.co.jobstory.repository.domain.CompReviewBoard;
import kr.co.jobstory.repository.domain.InterBoard;

public interface AdminMapper {
	List<CompReviewBoard> waitBoard();
	List<InterBoard> reportBoard();
	void success(int no);
	void reportDelete(int boardNo);
}
