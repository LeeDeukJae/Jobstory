package kr.co.jobstory.repository.mapper;

import java.util.List;

import kr.co.jobstory.repository.domain.ResumeBoard;

public interface ResumeMapper {
	List<ResumeBoard> selectBoard();
}
