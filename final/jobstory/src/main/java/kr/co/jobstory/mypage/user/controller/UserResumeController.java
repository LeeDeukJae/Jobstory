package kr.co.jobstory.mypage.user.controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.jobstory.mypage.user.service.UserResumeService;
import kr.co.jobstory.repository.domain.ResumeCollege;
import kr.co.jobstory.repository.domain.ResumeCompany;
import kr.co.jobstory.repository.domain.ResumeHighschool;
import kr.co.jobstory.repository.domain.ResumePhoto;
import kr.co.jobstory.repository.domain.ResumeStandard;

@Controller
@RequestMapping("/user")
public class UserResumeController {

	@Autowired
	UserResumeService service;
	
	@RequestMapping("/resumeList.do")
	public void resumeList(Model model) {
		System.out.println("reusumeList() invoked.");
		model.addAttribute("rList", service.selectResumeList());
		model.addAttribute("rCnt", service.selectResumeCnt().getResumeCnt());
	};
	
	@RequestMapping("/resumeDelete.do")
	@ResponseBody
	public Map<String, Object> resumeDelete(@RequestParam("resumeNo") int resumeNo) {
		System.out.println("resumeDelete() invoked.");
		Map<String, Object> resultMap = new HashMap<String, Object>();
		service.deleteResume(resumeNo);
		resultMap.put("rList", service.selectResumeList());
		resultMap.put("cnt", service.selectResumeCnt());
		return resultMap;
	};
	
	@RequestMapping("/resumeWriteForm.do")
	public void resumeWriteForm() {
		System.out.println("resumeWriteForm() invoked.");
	}
	
	@RequestMapping("/resumeWrite.do")
	@ResponseBody
	public void resumeWrite(ResumeStandard rStandard, ResumeHighschool rHighschool, ResumeCollege rCollege, ResumeCompany rCompany, ResumePhoto rPhoto) {
		System.out.println("resumeWrite() invoked.");
		
		MultipartFile file = rPhoto.getResumePhoto();
		System.out.println("원래 이름 : " + file.getOriginalFilename());
		String date = new SimpleDateFormat("yyyy_MM_dd").format(new Date());
		String newFileName = date+"_"+System.currentTimeMillis()+"_"+file.getOriginalFilename();
		String serPath = "D:/eclipse-workspace/jobstory/src/main/webapp/attachFile";
		try {
			rPhoto.setOriName(file.getOriginalFilename());
			rPhoto.setSerName(newFileName);
			rPhoto.setSerPath(serPath);
			file.transferTo(new File(serPath, newFileName));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		System.out.println("resumePhoto : " + rPhoto.getResumePhoto());
		System.out.println("title : " + rStandard.getTitle());
		System.out.println("email : " + rStandard.getEmail());
		System.out.println("name : " + rStandard.getName());
		System.out.println("phone" + rStandard.getPhone());
		System.out.println("birthY" + rStandard.getBirthY());
		System.out.println("birthM" + rStandard.getBirthM());
		System.out.println("birthD" + rStandard.getBirthD());
		System.out.println("birth" + rStandard.getBirth());
		System.out.println("gender: "+rStandard.getGender());
		System.out.println("addr: "+rStandard.getAddr());
		System.out.println("detailAddr: "+rStandard.getDetailAddr());
		System.out.println("jobStatus: "+rStandard.getStatusId());
		System.out.println("career: "+rStandard.getExperienceId());
		System.out.println("agree: "+rStandard.getAgree());
		System.out.println("publicPrivate: "+rStandard.getPublicPrivate());
		System.out.println("edu: "+rStandard.getEducationId());
		
		System.out.println("highName: "+rHighschool.getHighName());
		System.out.println("highMajor: "+rHighschool.getHighMajorId());
		System.out.println("highLocation: "+rHighschool.getHighLocationId());
		System.out.println("highEnterY: "+rHighschool.getHighEnterY());
		System.out.println("highEnterM: "+rHighschool.getHighEnterM());
		System.out.println("highEnterVal: "+rHighschool.getHighEnterId());
		System.out.println("highGraduY: "+rHighschool.getHighGraduY());
		System.out.println("highGraduM: "+rHighschool.getHighGraduM());
		System.out.println("highGraduVal: "+rHighschool.getHighGraduId());
		
		System.out.println("colDayNight: "+ rCollege.getColDayNight());
		System.out.println("colVal: "+rCollege.getColEducationId());
		System.out.println("colName: "+rCollege.getColName());
		System.out.println("colLocation: "+rCollege.getColLocationId());
		System.out.println("colMajor: "+rCollege.getColMajor());
		System.out.println("colMajorField: "+rCollege.getColMajorId());
		System.out.println("colSubMajor: "+rCollege.getColSubMajor());
		System.out.println("colSubMajorField: "+rCollege.getColSubMajorId());
		System.out.println("colEnterY: "+rCollege.getColEnterY());
		System.out.println("colEnterM: "+rCollege.getColEnterM());
		System.out.println("colEnterVal: "+rCollege.getColEnterId());
		System.out.println("colGraduY: "+rCollege.getColGraduY());
		System.out.println("colGraduM: "+rCollege.getColGraduM());
		System.out.println("colGraduVal: "+rCollege.getColGraduId());
		System.out.println("colAvgGrade: "+rCollege.getColAvgGrade());
		System.out.println("colStandGrade: "+rCollege.getColStandGrade());
		
		System.out.println("compName: "+rCompany.getCompName());
		System.out.println("compJoinY: "+rCompany.getCompJoinY());
		System.out.println("compJoinM: "+rCompany.getCompJoinM());
		System.out.println("compResignY: "+rCompany.getCompResignY());
		System.out.println("compResignM: "+rCompany.getCompResignM());
		System.out.println("compStatus: "+rCompany.getCompStatusId());
		System.out.println("compLocation: "+rCompany.getCompLocationId());
		System.out.println("compDep: "+rCompany.getCompDep());
		System.out.println("compSalary: "+rCompany.getCompSalary());
		System.out.println("ResignReason: "+rCompany.getCompResignId());
		System.out.println("compPosition: "+rCompany.getCompPosition());
		System.out.println("compJobId: "+rCompany.getCompJobId());
		

		service.insertResume(rStandard);
		int resumeNo = rStandard.getResumeNo();
		System.out.println("rStandard : " + resumeNo);
		
		rPhoto.setResumeNo(resumeNo);
		rHighschool.setResumeNo(resumeNo);
		rCollege.setResumeNo(resumeNo);
		rCompany.setResumeNo(resumeNo);
		
		service.insertResumePhoto(rPhoto);
		service.insertResumeHighschool(rHighschool);
		service.insertResumeCollege(rCollege);
		service.insertResumeExperience(rCompany);
	}
	
	@RequestMapping("/resumeDetail.do")
	public Model resumeDetail(int resumeNo, Model model) {
		System.out.println("resumeDetail() invoked");

		ResumeStandard rStandard = service.selectResumeStandardByNo(resumeNo);
		ResumeHighschool rHighschool = service.selectResumeHighschoolByNo(resumeNo);
		ResumeCollege rCollege = service.selectResumeCollegeByNo(resumeNo);
		ResumeCompany rCompany = service.selectResumeCompanyByNo(resumeNo);
		ResumePhoto rPhoto = service.selectResumePhotoByNo(resumeNo);
		
		// 1991. 6. 29
		String birth = rStandard.getBirth();
		System.out.println("birth : " + birth);
		System.out.println("birthY : " + birth.replaceAll(".", ""));
		String[] birthList = birth.replace(".", "").split(" ");
		rStandard.setBirthY(birthList[0]);
		rStandard.setBirthM(birthList[1]);
		rStandard.setBirthD(birthList[2]);
		
		String highEnterDate = rHighschool.getHighEnterDate();
		String highGraduDate = rHighschool.getHighGraduDate();
		System.out.println("highEnterDate : " + highEnterDate);
		System.out.println("highGraduDate : " + highGraduDate);
		
		String[] highEnterDateList= highEnterDate.replace(".", "").split(" ");
		String[] highGraduDateList= highGraduDate.replace(".", "").split(" ");
		
		rHighschool.setHighEnterY(highEnterDateList[0]);
		rHighschool.setHighEnterM(highEnterDateList[1]);
		rHighschool.setHighGraduY(highGraduDateList[0]);
		rHighschool.setHighGraduM(highGraduDateList[1]);
		
		String colEnterDate = rCollege.getColEnterDate();
		String colGraduDate = rCollege.getColGraduDate();
		
		String[] colEnterDateList= colEnterDate.replace(".", "").split(" ");
		String[] colGraduDateList= colGraduDate.replace(".", "").split(" ");
		
		rCollege.setColEnterY(colEnterDateList[0]);
		rCollege.setColEnterM(colEnterDateList[1]);
		rCollege.setColGraduY(colGraduDateList[0]);
		rCollege.setColGraduM(colGraduDateList[1]);
		
		String compJoinDate = rCompany.getCompJoinDate();
		String compResignDate = rCompany.getCompResignDate();
		System.out.println("compResignDate : " + compResignDate);
		String[] compJoinDateList = compJoinDate.replace(".", "").split(" ");
		String[] compResignDateList = compResignDate.replace(".", "").split(" ");
		
		rCompany.setCompJoinY(compJoinDateList[0]);
		rCompany.setCompJoinM(compJoinDateList[1]);
		rCompany.setCompResignY(compResignDateList[0]);
		rCompany.setCompResignM(compResignDateList[1]);
		
		int joinY = Integer.parseInt(compJoinDateList[0]);
		int joinM = Integer.parseInt(compJoinDateList[1]);
		int resignY = Integer.parseInt(compResignDateList[0]);
		int resignM = Integer.parseInt(compResignDateList[1]);
		
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY. MM");
		try {
			Date compJoin= sdf.parse(compJoinDate);
			Date compResign= sdf.parse(compResignDate);
			long calDate = compResign.getTime() - compJoin.getTime(); 
			System.out.println("calDate : " + calDate);
			
			long calDateDays = calDate / (24*60*60*1000); 
			long calDateMonths = calDate / (30*24*60*60*1000); 
			long calDateYears = calDate / (12*30*24*60*60*1000); 
	        calDateDays = Math.abs(calDateDays);
	        calDateMonths = Math.abs(calDateMonths);
	        calDateYears = Math.abs(calDateYears);
	        System.out.println("calDateDays : " + calDateDays);
	        System.out.println("calDateMonths : " + calDateMonths);
	        System.out.println("calDateYears : " + calDateYears);

		} catch (ParseException e) {
			
			e.printStackTrace();
		}

		model.addAttribute("resumeStandard", rStandard);
		model.addAttribute("resumeHighschool", rHighschool);
		model.addAttribute("resumeCollege", rCollege);
		model.addAttribute("resumeCompany", rCompany);
		model.addAttribute("resumePhoto", rPhoto);
		
		return model;
	}
	
	@RequestMapping("/resumeModifyForm.do")
	public Model resumeModifyForm(int resumeNo, Model model) {
		System.out.println("resumeModifyForm() invoked.");
		ResumeStandard rStandard = service.selectResumeStandardByNo(resumeNo);
		ResumeHighschool rHighschool = service.selectResumeHighschoolByNo(resumeNo);
		ResumeCollege rCollege = service.selectResumeCollegeByNo(resumeNo);
		ResumeCompany rCompany = service.selectResumeCompanyByNo(resumeNo);
		ResumePhoto rPhoto = service.selectResumePhotoByNo(resumeNo);
		
		rStandard.setResumeNo(resumeNo);
		
		// 1991. 6. 29
		String birth = rStandard.getBirth();
		System.out.println("birth : " + birth);
		System.out.println("birthY : " + birth.replaceAll(".", ""));
		String[] birthList = birth.replace(".", "").split(" ");
		rStandard.setBirthY(birthList[0]);
		rStandard.setBirthM(birthList[1]);
		rStandard.setBirthD(birthList[2]);
		
		String highEnterDate = rHighschool.getHighEnterDate();
		String highGraduDate = rHighschool.getHighGraduDate();
		System.out.println("highEnterDate : " + highEnterDate);
		System.out.println("highGraduDate : " + highGraduDate);
		
		String[] highEnterDateList= highEnterDate.replace(".", "").split(" ");
		String[] highGraduDateList= highGraduDate.replace(".", "").split(" ");
		
		rHighschool.setHighEnterY(highEnterDateList[0]);
		rHighschool.setHighEnterM(highEnterDateList[1]);
		rHighschool.setHighGraduY(highGraduDateList[0]);
		rHighschool.setHighGraduM(highGraduDateList[1]);
		
		String colEnterDate = rCollege.getColEnterDate();
		String colGraduDate = rCollege.getColGraduDate();
		
		String[] colEnterDateList= colEnterDate.replace(".", "").split(" ");
		String[] colGraduDateList= colGraduDate.replace(".", "").split(" ");
		
		rCollege.setColEnterY(colEnterDateList[0]);
		rCollege.setColEnterM(colEnterDateList[1]);
		rCollege.setColGraduY(colGraduDateList[0]);
		rCollege.setColGraduM(colGraduDateList[1]);
		
		String compJoinDate = rCompany.getCompJoinDate();
		String compResignDate = rCompany.getCompResignDate();
		System.out.println("compResignDate : " + compResignDate);
		String[] compJoinDateList = compJoinDate.replace(".", "").split(" ");
		String[] compResignDateList = compResignDate.replace(".", "").split(" ");
		
		rCompany.setCompJoinY(compJoinDateList[0]);
		rCompany.setCompJoinM(compJoinDateList[1]);
		rCompany.setCompResignY(compResignDateList[0]);
		rCompany.setCompResignM(compResignDateList[1]);
		
		int joinY = Integer.parseInt(compJoinDateList[0]);
		int joinM = Integer.parseInt(compJoinDateList[1]);
		int resignY = Integer.parseInt(compResignDateList[0]);
		int resignM = Integer.parseInt(compResignDateList[1]);
		
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY. MM");
		try {
			Date compJoin= sdf.parse(compJoinDate);
			Date compResign= sdf.parse(compResignDate);
			long calDate = compResign.getTime() - compJoin.getTime(); 
			System.out.println("calDate : " + calDate);
			
			long calDateDays = calDate / (24*60*60*1000); 
			long calDateMonths = calDate / (30*24*60*60*1000); 
			long calDateYears = calDate / (12*30*24*60*60*1000); 
	        calDateDays = Math.abs(calDateDays);
	        calDateMonths = Math.abs(calDateMonths);
	        calDateYears = Math.abs(calDateYears);
	        System.out.println("calDateDays : " + calDateDays);
	        System.out.println("calDateMonths : " + calDateMonths);
	        System.out.println("calDateYears : " + calDateYears);

		} catch (ParseException e) {
			
			e.printStackTrace();
		}

		model.addAttribute("resumeStandard", rStandard);
		model.addAttribute("resumeHighschool", rHighschool);
		model.addAttribute("resumeCollege", rCollege);
		model.addAttribute("resumeCompany", rCompany);
		model.addAttribute("resumePhoto", rPhoto);
		
		return model;
	}
	
	@RequestMapping("/resumeModify.do")
	@ResponseBody
	public void resumeModify(int resumeNo, ResumeStandard rStandard, ResumeHighschool rHighschool, ResumeCollege rCollege, ResumeCompany rCompany, /*@RequestParam(value="resumePhoto", required=false)*/ ResumePhoto rPhoto) {
		System.out.println("resumeModify() invoked");
		if(rPhoto!=null) {
			MultipartFile file = rPhoto.getResumePhoto();
			System.out.println("원래 이름 : " + file.getOriginalFilename());
			String date = new SimpleDateFormat("yyyy_MM_dd").format(new Date());
			String newFileName = date+"_"+System.currentTimeMillis()+"_"+file.getOriginalFilename();
			String serPath = "D:/eclipse-workspace/jobstory/src/main/webapp/attachFile";
			System.out.println("date : " + date);
			System.out.println("newFileName : " + newFileName);
			System.out.println("serPath : " + serPath);
			try {
				rPhoto.setOriName(file.getOriginalFilename());
				rPhoto.setSerName(newFileName);
				rPhoto.setSerPath(serPath);
				rPhoto.setResumeNo(resumeNo);
				service.updateResumePhoto(rPhoto);
				file.transferTo(new File(serPath, newFileName));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		System.out.println("resumeNo : " + resumeNo);
		System.out.println("title : " + rStandard.getTitle());
		System.out.println("email : " + rStandard.getEmail());
		System.out.println("name : " + rStandard.getName());
		System.out.println("phone" + rStandard.getPhone());
		System.out.println("birthY" + rStandard.getBirthY());
		System.out.println("birthM" + rStandard.getBirthM());
		System.out.println("birthD" + rStandard.getBirthD());
		System.out.println("birth" + rStandard.getBirth());
		System.out.println("gender: "+rStandard.getGender());
		System.out.println("addr: "+rStandard.getAddr());
		System.out.println("detailAddr: "+rStandard.getDetailAddr());
		System.out.println("jobStatus: "+rStandard.getStatusId());
		System.out.println("career: "+rStandard.getExperienceId());
		System.out.println("agree: "+rStandard.getAgree());
		System.out.println("publicPrivate: "+rStandard.getPublicPrivate());
		System.out.println("edu: "+rStandard.getEducationId());
		
		System.out.println("highName: "+rHighschool.getHighName());
		System.out.println("highMajor: "+rHighschool.getHighMajorId());
		System.out.println("highLocation: "+rHighschool.getHighLocationId());
		System.out.println("highEnterY: "+rHighschool.getHighEnterY());
		System.out.println("highEnterM: "+rHighschool.getHighEnterM());
		System.out.println("highEnterVal: "+rHighschool.getHighEnterId());
		System.out.println("highGraduY: "+rHighschool.getHighGraduY());
		System.out.println("highGraduM: "+rHighschool.getHighGraduM());
		System.out.println("highGraduVal: "+rHighschool.getHighGraduId());
		
		System.out.println("colDayNight: "+ rCollege.getColDayNight());
		System.out.println("colVal: "+rCollege.getColEducationId());
		System.out.println("colName: "+rCollege.getColName());
		System.out.println("colLocation: "+rCollege.getColLocationId());
		System.out.println("colMajor: "+rCollege.getColMajor());
		System.out.println("colMajorField: "+rCollege.getColMajorId());
		System.out.println("colSubMajor: "+rCollege.getColSubMajor());
		System.out.println("colSubMajorField: "+rCollege.getColSubMajorId());
		System.out.println("colEnterY: "+rCollege.getColEnterY());
		System.out.println("colEnterM: "+rCollege.getColEnterM());
		System.out.println("colEnterVal: "+rCollege.getColEnterId());
		System.out.println("colGraduY: "+rCollege.getColGraduY());
		System.out.println("colGraduM: "+rCollege.getColGraduM());
		System.out.println("colGraduVal: "+rCollege.getColGraduId());
		System.out.println("colAvgGrade: "+rCollege.getColAvgGrade());
		System.out.println("colStandGrade: "+rCollege.getColStandGrade());
		
		System.out.println("compName: "+rCompany.getCompName());
		System.out.println("compJoinY: "+rCompany.getCompJoinY());
		System.out.println("compJoinM: "+rCompany.getCompJoinM());
		System.out.println("compResignY: "+rCompany.getCompResignY());
		System.out.println("compResignM: "+rCompany.getCompResignM());
		System.out.println("compStatus: "+rCompany.getCompStatusId());
		System.out.println("compLocation: "+rCompany.getCompLocationId());
		System.out.println("compDep: "+rCompany.getCompDep());
		System.out.println("compSalary: "+rCompany.getCompSalary());
		System.out.println("ResignReason: "+rCompany.getCompResignId());
		System.out.println("compPosition: "+rCompany.getCompPosition());
		System.out.println("compJobId: "+rCompany.getCompJobId());
		
		rStandard.setResumeNo(resumeNo);
		rHighschool.setResumeNo(resumeNo);
		rCollege.setResumeNo(resumeNo);
		rCompany.setResumeNo(resumeNo);
		
		service.updateResumeStandard(rStandard);
		service.updateResumeHighschool(rHighschool);
		service.updateResumeCollege(rCollege);
		service.updateResumeCompany(rCompany);
	}
	
} // end class
