package kr.co.jobstory.repository.mapper;


import java.util.List;

import kr.co.jobstory.repository.domain.UserCalendar;

public interface UserCalendarMapper {
	
	List<UserCalendar> selectCalMemo(UserCalendar userCalendar);
	void insertMemo(UserCalendar userCalendar);
	int deleteMemo(int memoNo);
	List<UserCalendar> selectSaveCheck(UserCalendar userCalendar);
	List<UserCalendar> selectAllCalByOneMonth(UserCalendar userCalendar);
	int selectCntByOneDate(UserCalendar userCalendar);
}
