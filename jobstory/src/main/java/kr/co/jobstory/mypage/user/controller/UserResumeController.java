package kr.co.jobstory.mypage.user.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.jobstory.mypage.user.service.UserRegistResumeService;
import kr.co.jobstory.mypage.user.service.UserResumeService;
import kr.co.jobstory.repository.domain.Apply;
import kr.co.jobstory.repository.domain.ResumeAttachFile;
import kr.co.jobstory.repository.domain.ResumeCollege;
import kr.co.jobstory.repository.domain.ResumeCompany;
import kr.co.jobstory.repository.domain.ResumeHighschool;
import kr.co.jobstory.repository.domain.ResumePage;
import kr.co.jobstory.repository.domain.ResumePhoto;
import kr.co.jobstory.repository.domain.ResumeStandard;
import kr.co.jobstory.repository.domain.User;

@Controller
@RequestMapping("/user")
public class UserResumeController {

	@Autowired
	UserResumeService service;

	@Autowired
	UserRegistResumeService service2;

	@Autowired
	private ServletContext context;

	/**
	 * 첨부파일 다운로드
	 * 
	 * @param attachNo
	 * @param request
	 * @param response
	 */
	@RequestMapping("/attachDownload.do")
	public void attachFileDownload(String attachNo, HttpServletRequest request, HttpServletResponse response) {
		int fileNo = Integer.parseInt(attachNo.replaceAll("download-btn", ""));
		System.out.println("attachFileDownload() invoked.");

		// 첨부파일 경로 가져오기
		ResumeAttachFile rAttachFile = service.selectAttachByNo(fileNo);

		String serPath = rAttachFile.getSerPath();
		String serName = rAttachFile.getSerName();
		String oriName = rAttachFile.getOriName();

		// 파일 객체 생성
		File file = new File(serPath, serName);

		// 경로에 파일이 저장되어 있지 않을 경우
		if (file.isFile() == false) {
			System.out.println("파일이 존재하지 않습니다.");
			return;
		}

		// 응답 데이터 설정
		response.setContentType("application/download; utf-8");
		response.setContentLength((int) file.length());
		response.setHeader("Content-Disposition", "attachment;filename=" + oriName);
		response.setHeader("Content-Transfer-Encoding", "binary");

		// IO 객체 생성
		FileInputStream fis = null;
		OutputStream out = null;

		try {
			out = response.getOutputStream();
			fis = new FileInputStream(file);

			FileCopyUtils.copy(fis, out);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (fis != null) {
				try {
					fis.close();
					out.flush();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		} // try end;
	}

	/**
	 * 첨부파일 삭제
	 * 
	 * @param attach
	 * @param resumeAttachFile
	 * @return
	 */
	@RequestMapping("/attachFileDelete.do")
	@ResponseBody
	public Map<String, Object> attachFileDelete(String attach, ResumeAttachFile resumeAttachFile) {
		System.out.println("attachFileDelete() invoked");

		// 첨부파일 다중 삭제 처리
		String[] fileNoList = attach.split(",");
		for (String fileNo : fileNoList) {
			service.deleteAttach(Integer.parseInt(fileNo));
		}

		// 삭제 후 첨부파일 개수
		int rAttachCnt = service.selectAttachCnt(resumeAttachFile.getMemberNo());

		// 페이징 처리
		ResumePage page = new ResumePage(1, rAttachCnt, 5, 5);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("memberNo", resumeAttachFile.getMemberNo());
		map.put("page", page);

		// 결과 값 전송
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("page", page);
		resultMap.put("attachList", service.selectAttachList(map));

		return resultMap;
	}

	/**
	 * 첨부파일 등록
	 * 
	 * @param resumeAttachFile
	 * @param session
	 * @return
	 */
	@RequestMapping("/attachFileWrite.do")
	@ResponseBody
	public Map<String, Object> attachFileWrite(ResumeAttachFile resumeAttachFile, HttpSession session) {
		System.out.println("attachFileWrite() invoked.");

		// 첨부파일 파일 객체 받기
		MultipartFile file = resumeAttachFile.getFile();
		String url = resumeAttachFile.getUrl();

		// 첨부파일 확인
		System.out.println("fileId : " + resumeAttachFile.getFileId());
		System.out.println("file : " + file);
		System.out.println("url : " + url);

		// 내장객체(Session) 에서 회원정보 불러오기
		User user = (User) session.getAttribute("user");
		int memberNo = user.getMemberNo();
		resumeAttachFile.setMemberNo(memberNo);

		// 첨부파일 저장
		if (file != null) {
			long fileSize = file.getSize();
			String date = new SimpleDateFormat("yyyy_MM_dd").format(new Date());
			String newFileName = date + "_" + System.currentTimeMillis() + "_" + file.getOriginalFilename();
			String serPath = "C:/app/tomcat-work/wtpwebapps/jobstory/attach/resume/photo";

			try {
				resumeAttachFile.setOriName(file.getOriginalFilename());
				resumeAttachFile.setSerName(newFileName);
				resumeAttachFile.setSerPath(serPath);
				resumeAttachFile.setFileSize(fileSize);
				file.transferTo(new File(serPath, newFileName));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		// 첨부파일 DB 저장
		service.insertAttach(resumeAttachFile);

		// 첨부파일 총 개수 가져오기
		int rAttachCnt = service.selectAttachCnt(memberNo);

		// 페이징 처리
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("memberNo", memberNo);
		map.put("page", new ResumePage(1, rAttachCnt, 5, 5));

		// 결과 값 전송
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("attachList", service.selectAttachList(map));
		resultMap.put("attachCnt", rAttachCnt);

		return resultMap;
	}

	/**
	 * 첨부파일 페이징
	 * 
	 * @param pageNo
	 * @param rStandard
	 * @return
	 */
	@RequestMapping("/attachFilePage.do")
	@ResponseBody
	public Map<String, Object> attachListPage(int pageNo, ResumeStandard rStandard) {
		System.out.println("attachListPage(Page page) invoked");

		// 회원 번호 및 첨부파일 총 개수 가져오기
		int memberNo = rStandard.getMemberNo();
		int rAttachCnt = service.selectAttachCnt(memberNo);

		// 페이징 처리
		Map<String, Object> map = new HashMap<>();
		ResumePage page = new ResumePage(pageNo, rAttachCnt, 5, 5);
		map.put("page", page);
		map.put("memberNo", rStandard.getMemberNo());

		// 결과 값 전송
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("rAttachList", service.selectAttachList(map));
		resultMap.put("page", page);

		return resultMap;

	}

	/**
	 * 이력서 및 첨부파일 조회
	 * 
	 * @param model
	 * @param session
	 */
	@RequestMapping("/resumeList.do")
	public Model resumeList(Model model, HttpSession session,
			@RequestParam(value = "pageNo", defaultValue = "1") int pageNo) {

		System.out.println("reusumeList() invoked.");

		// 회원 정보 조회
		User user = (User) session.getAttribute("user");
		int memberNo = user.getMemberNo();
		System.out.println("memberNo : " + memberNo);

		// [1] 이력서 리스트 출력
		// 이력서 총 개수
		int resumeCnt = service.selectResumeCnt(memberNo).getResumeCnt();

		// 이력서 페이징 처리
		ResumeStandard rStandard = new ResumeStandard();
		rStandard.setMemberNo(memberNo);
		rStandard.setResumeCnt(resumeCnt);

		Map<String, Object> rMap = new HashMap<>();

		ResumePage pageResume = new ResumePage(pageNo, resumeCnt, 5, 5);
		rMap.put("resumeStandard", rStandard);
		rMap.put("page", pageResume);

		// 이력서 리스트 조회
		List<ResumeStandard> rStandardList = service.selectResumeList(rMap);

		// [2] 첨부파일 리스트 출력
		// 첨부파일 총 개수
		int rAttachCnt = service.selectAttachCnt(memberNo);

		// 첨부파일 페이징 처리
		ResumePage pageAttach = new ResumePage(pageNo, rAttachCnt, 5, 5);
		Map<String, Object> rAttachMap = new HashMap<>();
		rAttachMap.put("page", pageAttach);
		rAttachMap.put("memberNo", memberNo);

		// 첨부파일 리스트 조회
		List<ResumeAttachFile> rAttachList = service.selectAttachList(rAttachMap);

		// [3] 이력서 리스트, 첨부파일 리스트 결과 값 전송
		model.addAttribute("pageResume", pageResume);
		model.addAttribute("pageAttach", pageAttach);
		model.addAttribute("rList", rStandardList);
		model.addAttribute("rCnt", resumeCnt);
		model.addAttribute("rAttachList", rAttachList);
		model.addAttribute("attachCnt", rAttachCnt);

		return model;
	};

	/**
	 * 이력서 페이징 처리
	 * 
	 * @param rStandard
	 * @param page
	 * @return
	 */
	@RequestMapping("/resumeListPage.do")
	@ResponseBody
	public Map<String, Object> selectResumeListPage(ResumeStandard rStandard, int pageNo) {
		System.out.println("selectResumeListPage(int pageNo) invoked");

		// 이력서 페이징 처리
		int resumeCnt = service.selectResumeCnt(rStandard.getMemberNo()).getResumeCnt();
		ResumePage page = new ResumePage(pageNo, resumeCnt, 5, 5);
		Map<String, Object> pageMap = new HashMap<>();

		pageMap.put("resumeStandard", rStandard);
		pageMap.put("page", page);

		// 결과 값 전송
		Map<String, Object> map = new HashMap<>();
		map.put("resumeList", service.selectResumeList(pageMap));
		map.put("page", page);

		return map;
	}

	/**
	 * 이력서 삭제
	 * 
	 * @param resumeNo
	 * @param session
	 * @return
	 */
	@RequestMapping("/resumeDelete.do")
	@ResponseBody
	public Map<String, Object> resumeDelete(@RequestParam("resumeNo") int resumeNo, HttpSession session,
			@RequestParam(value = "pageNo", defaultValue = "1") int pageNo) {

		System.out.println("resumeDelete() invoked.");

		// 회원정보 조회
		User user = (User) session.getAttribute("user");
		int memberNo = user.getMemberNo();

		// 이력서 삭제
		service.deleteResume(resumeNo);

		// 이력서 삭제 후 총 개수 조회
		int resumeCnt = service.selectResumeCnt(memberNo).getResumeCnt();

		// 페이징 처리
		ResumePage page = new ResumePage(pageNo, resumeCnt, 5, 5);

		ResumeStandard rStandard = new ResumeStandard();
		rStandard.setMemberNo(memberNo);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("resumeStandard", rStandard);
		map.put("page", page);

		// 이력서 리스트 조회 및 결과 값 전송
		Map<String, Object> resultMap = new HashMap<String, Object>();
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
	 *            이력서 및 이력서 사진 등록
	 */
	@RequestMapping("/resumeWrite.do")
	@ResponseBody
	public void resumeWrite(ResumeStandard rStandard, ResumeHighschool rHighschool, ResumeCollege rCollege,
			ResumeCompany rCompany, ResumePhoto rPhoto, HttpSession session) {

		System.out.println("resumeWrite() invoked.");

		// 회원 정보 조회
		User user = (User) session.getAttribute("user");
		int memberNo = user.getMemberNo();

		// 이력서 사진 등록
		MultipartFile file = rPhoto.getResumePhoto();
		System.out.println("원래 이름 : " + file.getOriginalFilename());
		String date = new SimpleDateFormat("yyyy_MM_dd").format(new Date());
		String newFileName = date + "_" + System.currentTimeMillis() + "_" + file.getOriginalFilename();
		String serPath = "/jobstory/attach/resume/photo";
		try {
			rPhoto.setOriName(file.getOriginalFilename());
			rPhoto.setSerName(newFileName);
			rPhoto.setSerPath(serPath);
			file.transferTo(new File(context.getRealPath("/attach/resume/photo"), newFileName));

		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		// 기본 정보 DB 저장
		rStandard.setMemberNo(memberNo);
		service.insertResume(rStandard);
		// useGeneratedKeys 사용
		int resumeNo = rStandard.getResumeNo();

		rPhoto.setResumeNo(resumeNo);
		rHighschool.setResumeNo(resumeNo);
		rCollege.setResumeNo(resumeNo);
		rCompany.setResumeNo(resumeNo);

		String career = rStandard.getExperienceId();
		String education = rStandard.getEducationId();

		//
		switch (career) {
		// [1] 신입
		case "exper1001":
			switch (education) {
			// 고등학교 졸업
			case "educa1001":
				service.insertResumeHighschool(rHighschool);
				break;
			// 대학교 졸업
			case "educa1003":
				service.insertResumeHighschool(rHighschool);
				service.insertResumeCollege(rCollege);
				break;
			// 대학원 졸업
			case "educa1004":
				service.insertResumeHighschool(rHighschool);
				service.insertResumeCollege(rCollege);
				break;
			}
			break;
		// [2] 경력
		case "exper1002":
			switch (education) {
			// 고등학교 졸업
			case "educa1001":
				service.insertResumeHighschool(rHighschool);
				break;
			// 대학교 졸업
			case "educa1003":
				service.insertResumeHighschool(rHighschool);
				service.insertResumeCollege(rCollege);
				break;
			// 대학원 졸업
			case "educa1004":
				service.insertResumeHighschool(rHighschool);
				service.insertResumeCollege(rCollege);
				break;
			}
			service.insertResumeExperience(rCompany);
			break;
		}
		// 이력서 사진 DB 저장
		service.insertResumePhoto(rPhoto);
	}

	/**
	 * 이력서 상세 보기
	 * 
	 * @param resumeNo
	 * @param model
	 * @return
	 */
	@RequestMapping("/resumeDetail.do")
	public Model resumeDetail(int resumeNo, 
							  Model model,
							  @RequestParam(value = "recruitmentNo", defaultValue = "1") int recruitmentNo) throws Exception {
		
		System.out.println("resumeDetail() invoked");
		
		// 이력서 상세 페이지 조회
		ResumeStandard rStandard = service.selectResumeStandardByNo(resumeNo);
		ResumeHighschool rHighschool = service.selectResumeHighschoolByNo(resumeNo);
		ResumeCollege rCollege = service.selectResumeCollegeByNo(resumeNo);
		ResumeCompany rCompany = service.selectResumeCompanyByNo(resumeNo);
		ResumePhoto rPhoto = service.selectResumePhotoByNo(resumeNo);

		if (rHighschool != null) {
			// 고등학교 항목 - 입학&졸업 날짜 Parsing
			String highEnterDate = rHighschool.getHighEnterDate();
			String highGraduDate = rHighschool.getHighGraduDate();
			String[] highEnterDateList = highEnterDate.replace(".", "").split(" ");
			String[] highGraduDateList = highGraduDate.replace(".", "").split(" ");
			rHighschool.setHighEnterY(highEnterDateList[0]);
			rHighschool.setHighEnterM(highEnterDateList[1]);
			rHighschool.setHighGraduY(highGraduDateList[0]);
			rHighschool.setHighGraduM(highGraduDateList[1]);
		}
		if (rCollege != null) {
			// 대학교 항목 - 입학&졸업 날짜 Parsing
			String colEnterDate = rCollege.getColEnterDate();
			String colGraduDate = rCollege.getColGraduDate();
			System.out.println("colEnterDate : " + colEnterDate);
			System.out.println("colGraduDate : " + colGraduDate);
			String[] colEnterDateList = colEnterDate.replace(".", "").split(" ");
			String[] colGraduDateList = colGraduDate.replace(".", "").split(" ");
			rCollege.setColEnterY(colEnterDateList[0]);
			rCollege.setColEnterM(colEnterDateList[1]);
			rCollege.setColGraduY(colGraduDateList[0]);
			rCollege.setColGraduM(colGraduDateList[1]);
		}
		if (rCompany != null) {
			// 경력 항목 - 입사&퇴사 날짜 Parsing
			String compJoinDate = rCompany.getCompJoinDate();
			String compResignDate = rCompany.getCompResignDate();
			System.out.println("compJoinDate : " + compJoinDate);
			System.out.println("compResignDate : " + compResignDate);
			String[] compJoinDateList = compJoinDate.replace(".", "").split(" ");
			String[] compResignDateList = compResignDate.replace(".", "").split(" ");
			rCompany.setCompJoinY(compJoinDateList[0]);
			rCompany.setCompJoinM(compJoinDateList[1]);
			rCompany.setCompResignY(compResignDateList[0]);
			rCompany.setCompResignM(compResignDateList[1]);
		}

		// 기본 항목 - 생년월일 Parsing
		String birth = rStandard.getBirth();
		System.out.println("birth : " + birth);
		String[] birthList = birth.replace(".", "").split(" ");
		rStandard.setBirthY(birthList[0]);
		rStandard.setBirthM(birthList[1]);
		rStandard.setBirthD(birthList[2]);
		
		// 결과 값 전송
		model.addAttribute("resumeStandard", rStandard);
		model.addAttribute("resumePhoto", rPhoto);
		model.addAttribute("resumeHighschool", rHighschool);
		model.addAttribute("resumeCollege", rCollege);
		model.addAttribute("resumeCompany", rCompany);
		model.addAttribute("recruitmentNo", recruitmentNo);

		
		return model;
	}

	/**
	 * 이력서 수정 폼 이동
	 * @param resumeNo
	 * @param model
	 * @return
	 */
	@RequestMapping("/resumeModifyForm.do")
	public Model resumeModifyForm(int resumeNo, Model model) {
		System.out.println("resumeModifyForm() invoked.");
		
		// 이력서 상세 페이지 조회
		ResumeStandard rStandard = service.selectResumeStandardByNo(resumeNo);
		ResumeHighschool rHighschool = service.selectResumeHighschoolByNo(resumeNo);
		ResumeCollege rCollege = service.selectResumeCollegeByNo(resumeNo);
		ResumeCompany rCompany = service.selectResumeCompanyByNo(resumeNo);
		ResumePhoto rPhoto = service.selectResumePhotoByNo(resumeNo);

		if (rHighschool != null) {
			// 고등학교 항목 - 입학&졸업 날짜 Parsing
			String highEnterDate = rHighschool.getHighEnterDate();
			String highGraduDate = rHighschool.getHighGraduDate();
			String[] highEnterDateList = highEnterDate.replace(".", "").split(" ");
			String[] highGraduDateList = highGraduDate.replace(".", "").split(" ");
			rHighschool.setHighEnterY(highEnterDateList[0]);
			rHighschool.setHighEnterM(highEnterDateList[1]);
			rHighschool.setHighGraduY(highGraduDateList[0]);
			rHighschool.setHighGraduM(highGraduDateList[1]);
		}
		if (rCollege != null) {
			// 대학교 항목 - 입학&졸업 날짜 Parsing
			String colEnterDate = rCollege.getColEnterDate();
			String colGraduDate = rCollege.getColGraduDate();
			String[] colEnterDateList = colEnterDate.replace(".", "").split(" ");
			String[] colGraduDateList = colGraduDate.replace(".", "").split(" ");
			rCollege.setColEnterY(colEnterDateList[0]);
			rCollege.setColEnterM(colEnterDateList[1]);
			rCollege.setColGraduY(colGraduDateList[0]);
			rCollege.setColGraduM(colGraduDateList[1]);
		}
		if (rCompany != null) {
			// 경력 항목 - 입사&퇴사 날짜 Parsing
			String compJoinDate = rCompany.getCompJoinDate();
			String compResignDate = rCompany.getCompResignDate();
			String[] compJoinDateList = compJoinDate.replace(".", "").split(" ");
			String[] compResignDateList = compResignDate.replace(".", "").split(" ");
			rCompany.setCompJoinY(compJoinDateList[0]);
			rCompany.setCompJoinM(compJoinDateList[1]);
			rCompany.setCompResignY(compResignDateList[0]);
			rCompany.setCompResignM(compResignDateList[1]);
		}

		// 기본 항목 - 생년월일 Parsing
		String birth = rStandard.getBirth();
		System.out.println("birth : " + birth);
		String[] birthList = birth.replace(".", "").split(" ");
		rStandard.setBirthY(birthList[0]);
		rStandard.setBirthM(birthList[1]);
		rStandard.setBirthD(birthList[2]);

		// 결과 값 전송
		model.addAttribute("resumeStandard", rStandard);
		model.addAttribute("resumeHighschool", rHighschool);
		model.addAttribute("resumeCollege", rCollege);
		model.addAttribute("resumeCompany", rCompany);
		model.addAttribute("resumePhoto", rPhoto);

		
		return model;
	}

	/**
	 * 이력서 수정
	 * 
	 * @param resumeNo
	 * @param rStandard
	 * @param rHighschool
	 * @param rCollege
	 * @param rCompany
	 * @param rPhoto
	 */
	@RequestMapping("/resumeModify.do")
	@ResponseBody
	public void resumeModify(int resumeNo,
							 ResumeStandard rStandard,
							 ResumeHighschool rHighschool,
							 ResumeCollege rCollege,
							 ResumeCompany rCompany,
							 ResumePhoto rPhoto) {
		System.out.println("resumeModify() invoked");
		
		// 이력서 사진 수정
		if (rPhoto != null) {
			MultipartFile file = rPhoto.getResumePhoto();
			System.out.println("원래 이름 : " + file.getOriginalFilename());
			String date = new SimpleDateFormat("yyyy_MM_dd").format(new Date());
			String newFileName = date + "_" + System.currentTimeMillis() + "_" + file.getOriginalFilename();
			String serPath = "D:/eclipse-workspace/jobstory/src/main/webapp/attach/resume/photo";
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
		
		// 파라미터 값 확인
		System.out.println("resumeNo : " + resumeNo);
		System.out.println("title : " + rStandard.getTitle());
		System.out.println("email : " + rStandard.getEmail());
		System.out.println("name : " + rStandard.getName());
		System.out.println("phone" + rStandard.getPhone());
		System.out.println("birthY" + rStandard.getBirthY());
		System.out.println("birthM" + rStandard.getBirthM());
		System.out.println("birthD" + rStandard.getBirthD());
		System.out.println("birth" + rStandard.getBirth());
		System.out.println("gender: " + rStandard.getGender());
		System.out.println("addr: " + rStandard.getAddr());
		System.out.println("detailAddr: " + rStandard.getDetailAddr());
		System.out.println("jobStatus: " + rStandard.getStatusId());
		System.out.println("career: " + rStandard.getExperienceId());
		System.out.println("agree: " + rStandard.getAgree());
		System.out.println("publicPrivate: " + rStandard.getPublicPrivate());
		System.out.println("edu: " + rStandard.getEducationId());

		System.out.println("highName: " + rHighschool.getHighName());
		System.out.println("highMajor: " + rHighschool.getHighMajorId());
		System.out.println("highLocation: " + rHighschool.getHighLocationId());
		System.out.println("highEnterY: " + rHighschool.getHighEnterY());
		System.out.println("highEnterM: " + rHighschool.getHighEnterM());
		System.out.println("highEnterVal: " + rHighschool.getHighEnterId());
		System.out.println("highGraduY: " + rHighschool.getHighGraduY());
		System.out.println("highGraduM: " + rHighschool.getHighGraduM());
		System.out.println("highGraduVal: " + rHighschool.getHighGraduId());

		System.out.println("colDayNight: " + rCollege.getColDayNight());
		System.out.println("colVal: " + rCollege.getColEducationId());
		System.out.println("colName: " + rCollege.getColName());
		System.out.println("colLocation: " + rCollege.getColLocationId());
		System.out.println("colMajor: " + rCollege.getColMajor());
		System.out.println("colMajorField: " + rCollege.getColMajorId());
		System.out.println("colSubMajor: " + rCollege.getColSubMajor());
		System.out.println("colSubMajorField: " + rCollege.getColSubMajorId());
		System.out.println("colEnterY: " + rCollege.getColEnterY());
		System.out.println("colEnterM: " + rCollege.getColEnterM());
		System.out.println("colEnterVal: " + rCollege.getColEnterId());
		System.out.println("colGraduY: " + rCollege.getColGraduY());
		System.out.println("colGraduM: " + rCollege.getColGraduM());
		System.out.println("colGraduVal: " + rCollege.getColGraduId());
		System.out.println("colAvgGrade: " + rCollege.getColAvgGrade());
		System.out.println("colStandGrade: " + rCollege.getColStandGrade());

		System.out.println("compName: " + rCompany.getCompName());
		System.out.println("compJoinY: " + rCompany.getCompJoinY());
		System.out.println("compJoinM: " + rCompany.getCompJoinM());
		System.out.println("compResignY: " + rCompany.getCompResignY());
		System.out.println("compResignM: " + rCompany.getCompResignM());
		System.out.println("compStatus: " + rCompany.getCompStatusId());
		System.out.println("compLocation: " + rCompany.getCompLocationId());
		System.out.println("compDep: " + rCompany.getCompDep());
		System.out.println("compSalary: " + rCompany.getCompSalary());
		System.out.println("ResignReason: " + rCompany.getCompResignId());
		System.out.println("compPosition: " + rCompany.getCompPosition());
		System.out.println("compJobId: " + rCompany.getCompJobId());

		rStandard.setResumeNo(resumeNo);
		rHighschool.setResumeNo(resumeNo);
		rCollege.setResumeNo(resumeNo);
		rCompany.setResumeNo(resumeNo);
		
		// 이력서 데이터 수정
		service.updateResumeStandard(rStandard);
		service.updateResumeHighschool(rHighschool);
		service.updateResumeCollege(rCollege);
		service.updateResumeCompany(rCompany);
	}
	
	/**
	 * 기업 상세페이지 이력서 조회
	 * 
	 * @param memberNo
	 * @param recruitmentNo
	 * @return
	 */
	@RequestMapping("selectResume.do")
	public ModelAndView selectResume(int memberNo, int recruitmentNo) {

		ModelAndView mav = new ModelAndView("user/selectResume");
		mav.addObject("list", service2.registResumeList(memberNo));
		mav.addObject("recruitmentNo", recruitmentNo);
		
		
		return mav;
	}
	
	/**
	 * 채용공고 지원하기
	 * 
	 * @param resumeNo
	 * @param recruitmentNo
	 * @return
	 */
	@RequestMapping("regist.do")
	@ResponseBody
	public String regist(int resumeNo, int recruitmentNo) {
		service2.registVolunteer(resumeNo, recruitmentNo);
		return "success";
	}
	
	/**
	 * 지원한 채용공고 조회
	 * 
	 * @param memberNo
	 * @param recruitmentNo
	 * @return
	 */
	@RequestMapping("selectRegistByNo.do")
	@ResponseBody
	public String selectRegist(int memberNo, int recruitmentNo) {
		System.out.println(service2.selectRegistByNo(memberNo, recruitmentNo));
		if (service2.selectRegistByNo(memberNo, recruitmentNo) == null) {
			return "success";
		} else {

			return "fail";
		}
	}

} // end class
