package kr.co.jobstory.repository.mapper;

import java.util.List;

import kr.co.jobstory.repository.domain.CompReviewBoard;

public interface CompReviewBoardMapper {
		List<CompReviewBoard> selectBoard();
		void insertBoard(CompReviewBoard compReviewBoard);
		CompReviewBoard selectBoardByNo(int no);
		int deleteBoard(int no);	
		int updateBoard(CompReviewBoard compReviewBoard);	
//		List<Comment> selectCommentByNo(int no);
//		void insertComment(Comment comment);
//		void commentUpdate(Comment comment);
//		void commentDelete(Comment comment);	
		void viewCnt(int no);
	}

