package com.kh.carnping.admin.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kh.carnping.admin.model.service.AdminServiceImpl;
import com.kh.carnping.member.model.vo.Member;
import com.kh.carnping.member.model.vo.Report;

@Controller
public class AdminController {

	
	@Autowired
	private AdminServiceImpl aService; 
	
	/**
	 * 관리자 페이지 이동
	 */
	@RequestMapping("admin.ad")
	public String adminPage() {
		return "admin/menubar";
	}
	
	
	/**
	 * 회원관리로 이동
	 */
	@RequestMapping("member.ad")
	public String memNotice(Model model) {
		ArrayList<Member> list = aService.memNotice();
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
			return "admin/member";
		}else {
			model.addAttribute("errorMsg", "회원이 없습니다.");
			return "admin/member";
		}
		
	}
	
	/**
	 * 신고 및 정지관리로 이동
	 */
	@RequestMapping("memReport.ad")
	public String memReport(Model model) {
		ArrayList<Member> list = aService.reportMem();
		ArrayList<Report> reportList = new ArrayList<>();
	    if (!list.isEmpty()) {
	        for (Member member : list) {
	            ArrayList<Report> memberReportList = aService.reportDetail(member.getReportedMemNo());
	            reportList.addAll(memberReportList);
	        }
	    }
		
		
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
			model.addAttribute("reportList", reportList);
			return "admin/memReport";
		}else {
			model.addAttribute("errorMsg", "회원이 없습니다.");
			return "admin/memReport";
		}
		

	}

	
	/**
	 * 차박게시글 관리로 이동
	 */
	@RequestMapping("carList.ad")
	public String carList() {
		return "admin/carList";
	}
	
	/**
	 * 차박게시글 검수 관리로 이동
	 */
	@RequestMapping("verity.ad")
	public String carVerity() {
		return "admin/verity";
	}
	
	/**
	 * 커뮤니티게시글 관리로 이동
	 */
	@RequestMapping("board.ad")
	public String board() {
		return "admin/board";
	}
	
	/**
	 * 공지사항 관리로 이동
	 */
	@RequestMapping("notice.ad")
	public String notice() {
		return "admin/notice";
	}
	
	/**
	 * Qna 관리로 이동
	 */
	@RequestMapping("inquiryList.ad")
	public String inquiryList() {
		return "admin/inquiryList";
	}

	//----------------------
	

	
	/**
	 * 차박게시글/차박 게시글 수정 및 상세정보로 이동
	 */
	@RequestMapping("carDetail.ad")
	public String carDetail() {
		return "admin/carDetail";
	}
	
	/**
	 * 공지사항관리/ 공지사항 수정으로 이동
	 */
	@RequestMapping("updateNotice.ad")
	public String updateNotice() {
		return "admin/updateNotice";
	}

	/**
	 * 공지사항관리/ 공지사항 등록으로 이동
	 */
	@RequestMapping("insertNotice.ad")
	public String insertNotice() {
		return "admin/insertNotice";
	}
	
	/**
	 * 차박게시글 등록 검수로 이동
	 */
	@RequestMapping("insertVerity.ad")
	public String insertVerity() {
		return "admin/insertVerity";
	}	
	
	/**
	 * 차박게시글 수정 검수로 이동
	 */
	@RequestMapping("updateVerity.ad")
	public String updateVerity() {
		return "admin/updateVerity";
	}

	/**
	 * QnA 답변하기
	 */
	@RequestMapping("inquiryInsert.ad")
	public String inquiryInsert() {
		return "admin/inquiryInsert";
	}
	
	// ------------------------------
	/**
	 * 회원관리/회원수정으로 이동
	 */
	@ResponseBody
	@RequestMapping("memDelete.ad")
	public String memDelete(Member m, String memNo, HttpSession session) {
		m.setMemNo(memNo);
		int result = aService.deleteMember(m);
        if(result >0){
        	return "success";
        }else{
        	return "failure";
        }
	}
	
	/**
	 * 관리자 - 회원 수정
	 * @param memNo
	 * @param model
	 * @return
	 */
	@RequestMapping("memEdit.ad")
	public String memEdit(String memNo, Model model) {
		Member m = aService.selectMember(memNo);
		model.addAttribute("m", m);
		model.addAttribute("memNo", memNo);
		return "admin/memEdit";

	}
	
	
	/**
	 * 관리자 - 회원 정지
	 * @param memNo
	 * @param flag
	 * @param session
	 * @return
	 */
	@RequestMapping("memSuspend.ad")
	public String memSuspend( String memNo, String flag, HttpSession session) {
		int result = 0;
		System.out.println(flag);
		System.out.println(memNo);

		if(flag.equals("1")) {
			result = aService.suspendMember1(memNo);
		} else if(flag.equals("2")) {
			result = aService.suspendMember2(memNo);
		} else 	if(flag.equals("3")) {
			
			result = aService.suspendMember3(memNo);
		} else {
			result = aService.banMember(memNo);
		}
		
		if (result > 0) { // 성공 => 메인페이지 url 재요청! 알람창
			
			session.setAttribute("alertMsg", "신고 회원 정보 수정 성공");
		} else { // 실패 => 에러 문구 담아서 에러페이지 포워딩
			session.setAttribute("alertMsg", "회원 정보 수정 실패");
		}
		return "redirect:memReport.ad";
		
	}
	
	@RequestMapping("memRecover.ad")
	public String memRecover( String memNo,HttpSession session) {
		int result = aService.memRecover(memNo);

		
		if (result > 0) { // 성공 => 메인페이지 url 재요청! 알람창
			
			session.setAttribute("alertMsg", "신고 회원 정보 수정 성공");
		} else { // 실패 => 에러 문구 담아서 에러페이지 포워딩
			session.setAttribute("alertMsg", "회원 정보 수정 실패");
		}
		return "redirect:memReport.ad";
		
	}
	
	
	
	// 현재 넘어온 첨부파일 그 자체를 서버의 폴더에 저장시키는 역할 
	public String saveMemImg(MultipartFile memImg, HttpSession session) {
		
		String originName = memImg.getOriginalFilename(); // flower.png
		
		// "20230331101855" (년월일시분초)
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		// 랜덤한 숫자 5자리
		int ranNum = (int)(Math.random() * 90000 + 10000 ); // 10000~99999 사이 -> 시작수는 더하고 몇개 생성할지 곱하기 
		
		// 확장자
		String ext = originName.substring(originName.lastIndexOf("."));
		
		// 최종 수정명
		String changeName = currentTime + ranNum + ext;
		
		// 업로드 시키고자 하는 폴더의 물리적인 경로를 알아내기 
		String memImgPath = session.getServletContext().getRealPath("/resources/uploadFiles/memImg/"); // "/" => webapp 의미 
							   // getServletContext() => 애플리케이션 영역에 진입
		// 서버에 파일을 업로드
		try {
			memImg.transferTo(new File(memImgPath + changeName));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
	}
	
	@RequestMapping("memUpdate.ad")
	public String memUpdate(Member m, String memNo, MultipartFile memImg,HttpSession session) {
		if(memImg != null && !memImg.getOriginalFilename().equals("")) {
			String changeName = saveMemImg(memImg, session);
			m.setMemImgOrigin(memImg.getOriginalFilename());
			m.setMemImgChange("resources/uploadFiles/memImg/" + changeName);
		}
		int result = aService.updateMember(m);
		Member resultMem = aService.selectMember(memNo);
		System.out.println(resultMem);
		if (result > 0) { // 성공 => 메인페이지 url 재요청! 알람창
			
			session.setAttribute("m", m);
			return "redirect:memEdit.ad?memNo=" + memNo;
		} else { // 실패 => 에러 문구 담아서 에러페이지 포워딩
			session.setAttribute("alertMsg", "회원 정보 수정 실패");
			return "redirect:memEdit.ad?memNo=" + memNo;
		}
	}
	

	
}
