package kr.co.jobstory.mypage.user.controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.jobstory.mypage.user.service.UserResumeService;
import kr.co.jobstory.repository.domain.CommunityPage;
import kr.co.jobstory.repository.domain.ResumeAttachFile;
import kr.co.jobstory.repository.domain.ResumeCollege;
import kr.co.jobstory.repository.domain.ResumeCompany;
import kr.co.jobstory.repository.domain.ResumeHighschool;
import kr.co.jobstory.repository.domain.ResumePhoto;
import kr.co.jobstory.repository.domain.ResumeStandard;
import kr.co.jobstory.repository.domain.User;

@Controller
@RequestMapping("/user")
public class UserResumeController {

	@Autowired
	UserResumeService service;
	
	@RequestMapping("/attachFileDelete.do")
	@ResponseBody
	public Map<String, Object> attachFileDelete(String attach, ResumeAttachFile resumeAttachFile) {
		System.out.println("attachFileDelete() invoked");
		String[] fileNoList = attach.split(",");
		for ( String fileNo : fileNoList ) {
			System.out.println("삭제 할 번호 : " + fileNo);
			service.deleteAttach(Integer.parseInt(fileNo));
		}
		Map<String, Object> resultMap = new HashMap<String, Object> ();
		resultMap.put("attachCnt", service.selectAttachCnt(resumeAttachFile.getMemberNo()));
		resultMap.put("attachList", service.selectAttachList(resumeAttachFile.getMemberNo()));
		return resultMap;
	}
	
	@RequestMapping("/attachFileWrite.do")
	@ResponseBody
	public Map<String, Object> attachFileWrite(ResumeAttachFile resumeAttachFile, HttpSession session) {
		System.out.println("attachFileWrite() invoked.");
		System.out.println("fileId : " + resumeAttachFile.getFileId());
		System.out.println("file : " + resumeAttachFile.getFile());
		System.out.println("url : " + resumeAttachFile.getUrl());
		User user = (User) session.getAttribute("user");
		int memberNo = user.getMemberNo();
		
		Map<String, Object> resultMap = new HashMap<> ();
		
		MultipartFile file = resumeAttachFile.getFile();
		System.out.println("원래 이름 : " + file.getOriginalFilename());
		long fileSize = file.getSize();
		String date = new SimpleDateFormat("yyyy_MM_dd").format(new Date());
		String newFileName = date+"_"+System.currentTimeMillis()+"_"+file.getOriginalFilename();
		String serPath = "D:/eclipse-workspace/jobstory/src/main/webapp/attach/resume/document";
		try {
			resumeAttachFile.setOriName(file.getOriginalFilename());
			resumeAttachFile.setSerName(newFileName);
			resumeAttachFile.setSerPath(serPath);
			resumeAttachFile.setMemberNo(memberNo);
			resumeAttachFile.setFileSize(fileSize);
			file.transferTo(new File(serPath, newFileName));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		service.insertAttach(resumeAttachFile);
		resultMap.put("attachList", service.selectAttachList(memberNo));
		resultMap.put("attachCnt", service.selectAttachCnt(memberNo));
		return resultMap;
	}
	
//	@RequestMapping("/attachFilePage.do")
//	@ResponseBody
//	public void attachListPage(Page page, ResumeStandard rStandard) {
//		System.out.println("attachListPage(Page page) invoked");
//		System.out.println("pageNo : " + page.getPageNo());
//		System.out.println("memberNo : " + rStandard.getMemberNo());
//		
//		int attachCnt = service.selectAttachCnt(rStandard.getMemberNo());
//	}
	/**
	 * 
	 * @param model
	 * @param session
	 * 
	 * 이력서 및 첨부파일 조회
	 */
	@RequestMapping("/resumeList.do")
	public Model resumeList(Model model, HttpSession session, @RequestParam(value="pageNo", defaultValue="1") int pageNo) {
		System.out.println("reusumeList() invoked.");
		User user = (User) session.getAttribute("user");
		
		int memberNo = user.getMemberNo();
		System.out.println("memberNo : " + memberNo);
		
		int resumeCnt = service.selectResumeCnt(memberNo).getResumeCnt();
		System.out.println("pageNo : " + pageNo);
		ResumeStandard rStandard = new ResumeStandard();
		rStandard.setMemberNo(memberNo);
		rStandard.setResumeCnt(resumeCnt);
		System.out.println("첨부파일 갯수 : " + service.selectAttachCnt(memberNo));
		
		Map<String, Object> map = new HashMap<> ();
		
		CommunityPage page = new CommunityPage();
		page.setPageNo(pageNo);
		page.setResumeCnt(resumeCnt);
		System.out.println("이력서 총 개수 : " + Math.ceil((double)((double)resumeCnt/5)));
		page.setEndPage((int)Math.ceil((double)resumeCnt/5));
		System.out.println("page 총 개수 : " + page.getEndPage());
		
		map.put("resumeStandard", rStandard);
		map.put("page", page);
		
		List<ResumeStandard> rStandardList = service.selectResumeList(map);
		
		model.addAttribute("page", page);
		model.addAttribute("rList", rStandardList);
		model.addAttribute("rCnt", resumeCnt);
		model.addAttribute("rAttachList", service.selectAttachList(memberNo));
		model.addAttribute("attachCnt", service.selectAttachCnt(memberNo));
		return model;
	};
	
	/**
	 * 
	 * @param resumeNo
	 * @param session
	 * @return
	 * 
	 * 이력서 삭제
	 */
	@RequestMapping("/resumeDelete.do")
	@ResponseBody
	public Map<String, Object> resumeDelete(@RequestParam("resumeNo") int resumeNo, HttpSession session, @RequestParam(value="pageNo", defaultValue="1") int pageNo) {
		System.out.println("resumeDelete() invoked.");
		Map<String, Object> resultMap = new HashMap<String, Object>();
		Map<String, Object> map = new HashMap<String, Object>();
		CommunityPage page = new CommunityPage();
		
		
		User user = (User) session.getAttribute("user");
		int memberNo = user.getMemberNo();
		
		service.deleteResume(resumeNo);
		
		int resumeCnt = service.selectResumeCnt(memberNo).getResumeCnt();
		
		page.setPageNo(pageNo);
		page.setResumeCnt(resumeCnt);
//		PageResult pageResult = new PageResult(pageNo, resumeCnt, 5, 5);
		ResumeStandard rStandard = new ResumeStandard();
		rStandard.setMemberNo(memberNo);

		map.put("resumeStandard", rStandard);
		map.put("page", page);
		
		resultMap.put("rList", service.selectResumeList(map));
		resultMap.put("cnt", resumeCnt);
		return resultMap;
	};
	
	/**
	 * 이력서 등록 폼 이동
	 */
	@RequestMapping("/resumeWriteForm.do")
	public void resumeWriteForm() {
		System.out.println("resumeWriteForm() invoked.");
	}
	
	/**
	 * 
	 * @param rStandard
	 * @param rHighschool
	 * @param rCollege
	 * @param rCompany
	 * @param rPhoto
	 * @param session
	 * 
	 * 이력서 및 이력서 사진 등록
	 */
	@RequestMapping("/resumeWrite.do")
	@ResponseBody
	public void resumeWrite(ResumeStandard rStandard, ResumeHighschool rHighschool, ResumeCollege rCollege, ResumeCompany rCompany, ResumePhoto rPhoto, HttpSession session) {
		System.out.println("resumeWrite() invoked.");
		User user = (User) session.getAttribute("user");
		int memberNo = user.getMemberNo();
		
		MultipartFile file = rPhoto.getResumePhoto();
		System.out.println("원래 이름 : " + file.getOriginalFilename());
		String date = new SimpleDateFormat("yyyy_MM_dd").format(new Date());
		String newFileName = date+"_"+System.currentTimeMillis()+"_"+file.getOriginalFilename();
		String serPath = "D:/eclipse-workspace/jobstory/src/main/webapp/attach/resume/photo";
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
		
		rStandard.setMemberNo(memberNo);
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
	
	/**
	 * 
	 * @param resumeNo
	 * @param model
	 * @return
	 * 
	 * 이력서 상세 보기
	 */
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
	
	/**
	 * 
	 * @param resumeNo
	 * @param model
	 * @return
	 * 
	 * 이력서 수정 폼 이동
	 */
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
	
	/**
	 * 
	 * @param resumeNo
	 * @param rStandard
	 * @param rHighschool
	 * @param rCollege
	 * @param rCompany
	 * @param rPhoto
	 * 
	 * 이력서 수정
	 */
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
	
	@RequestMapping("/resumeListPage.do")
	@ResponseBody
	public List<ResumeStandard> selectResumeListPage(ResumeStandard rStandard, CommunityPage page){
		System.out.println("selectResumeListPage(int pageNo) invoked");
		
		System.out.println("memberNo : " + rStandard.getMemberNo());
		System.out.println("pageNo : " + page.getPageNo());
		
		Map<String, Object> pageMap = new HashMap<> ();

		pageMap.put("resumeStandard", rStandard);
		pageMap.put("page", page);
		
		return service.selectResumeList(pageMap);
	}
	
} // end class


