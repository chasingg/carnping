package com.kh.carnping.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	
	@Autowired 
	private AdminServiceImpl mService; 
	
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
	public String memNotice() {
		ArrayList<Member> list = 
		return "admin/member";
	}
	
	/**
	 * 신고 및 정지관리로 이동
	 */
	@RequestMapping("memReport.ad")
	public String memReport() {
		return "admin/memReport";
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
	 * 회원관리/회원수정으로 이동
	 */
	@RequestMapping("memEdit.ad")
	public String memEdit() {
		return "admin/memEdit";
	}
	
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
	
	

	
}
