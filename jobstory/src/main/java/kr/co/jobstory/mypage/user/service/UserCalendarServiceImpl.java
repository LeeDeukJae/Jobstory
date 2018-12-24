package kr.co.jobstory.mypage.user.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jobstory.repository.domain.UserCalendar;
import kr.co.jobstory.repository.mapper.UserCalendarMapper;

@Service
public class UserCalendarServiceImpl implements UserCalendarService{
	
	@Autowired
	private UserCalendarMapper mapper;
	
	@Override
	public Map<String, Object> selectCalMemo(UserCalendar userCalendar) {
		Map<String, Object> map = new HashMap<>();
		
		System.out.println("date   : " + userCalendar.getCalendarDate());
		System.out.println("cal: " + userCalendar.getYearMonth());
		map.put("list", mapper.selectCalMemo(userCalendar));
		List<UserCalendar> monthList = mapper.selectAllCalByOneMonth(userCalendar);
		 
		 for(int i=0; i<monthList.size(); i++) {
			 if(i>0) {
				 if(monthList.get(i).getCalendarDate()
						 .equals(monthList.get(i-1).getCalendarDate())) continue;
			 }
			 
			 userCalendar.setCalendarDate(monthList.get(i).getCalendarDate());
			 map.put(monthList.get(i).getCalendarDate(), true);
		 }
		 return map;
	}
	
	@Override
	public void insertMemo(UserCalendar userCalendar) {
		mapper.insertMemo(userCalendar);
	}
	
	@Override
	public int deleteMemo(int memoNo) {
		return mapper.deleteMemo(memoNo);
	}
	
	@Override
	public List<UserCalendar> selectSaveCheck(UserCalendar userCalendar){
		return mapper.selectSaveCheck(userCalendar);
	}

}
