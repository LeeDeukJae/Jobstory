package kr.co.jobstory.mypage.user.service;

import java.util.List;

import kr.co.jobstory.repository.domain.CompReviewBoard;


public interface CommunityReviewService {

	List<CompReviewBoard> list();
	void insertBoard(CompReviewBoard compReviewBoard);
	CompReviewBoard detail(int no);
	void viewCnt(int no);
	int deleteBoard(int no);
//	void insertComment(Comment comment);
//	void updateBoard(Board board);
//	List<Comment> selectCommentByNo(int no);
//	void updateComment(Comment comment);
//	void commentDelete(Comment comment);	
}
