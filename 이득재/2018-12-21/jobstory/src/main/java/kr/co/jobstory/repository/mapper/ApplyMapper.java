package kr.co.jobstory.repository.mapper;

import java.util.List;

import kr.co.jobstory.repository.domain.Apply;

public interface ApplyMapper {
	List<Apply> apply(int memberNo);
	void applyDelete(int applyNo);

}
