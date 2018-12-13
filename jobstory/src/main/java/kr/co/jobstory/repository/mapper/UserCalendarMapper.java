package kr.co.jobstory.repository.mapper;


import java.util.List;

import kr.co.jobstory.repository.domain.UserCalendar;

public interface UserCalendarMapper {
	
	List<UserCalendar> selectCalMemo(UserCalendar userCalendar);
	void insertMemo(UserCalendar userCalendar);
}
