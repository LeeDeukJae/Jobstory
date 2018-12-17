package kr.co.jobstory.repository.mapper;

import java.util.List;
import java.util.Map;

import kr.co.jobstory.repository.domain.Scrap;

public interface ScrapMapper {
	List<Scrap> selectScrapList(Map<String, Object> scrapMap);
	Scrap selectScrapListCnt(int memberNo);
	void deleteScrap(int scrapNo);
	void insertScrap(Scrap scrap);
}
