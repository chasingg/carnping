package com.kh.carnping.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.kh.carnping.board.model.service.BoardServiceImpl;
import com.kh.carnping.board.model.vo.Board;



@Controller
public class BoardController {
	
	@Autowired
	private BoardServiceImpl bService;
	
	public String saveFile(MultipartFile upfile, HttpSession session) {
	     // 파일명 수정 작업 후 서버에 업로드 시키기("flower.png" => "2023033110185578456.png")
        String originName = upfile.getOriginalFilename(); // flower.png
        
        // "20230331101855" (년월일시분초)
        String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
        
        // 랜덤 숫자 5자리
        int ranNum = (int)(Math.random() * 90000 + 10000); // 10000~99999 사이
        
        // 확장자
        String ext = originName.substring(originName.lastIndexOf("."));
        
        // 최종수정명
        String changeName = currentTime + ranNum + ext;
        
        // 업로드 시키고자 하는 폴더의 물리적인 경로를 알아내기
        String savePath = session.getServletContext().getRealPath("/resources/img/board/"); // "/" 쓰면 webapp 가리킨다.
        
        // 서버에 파일을 업로드
        try {
           upfile.transferTo(new File(savePath + changeName));
        } catch (IllegalStateException e) {
           e.printStackTrace();
        } catch (IOException e) {
           e.printStackTrace();
        }
        
        return changeName;
        
  }
	
	@RequestMapping("freeBoard.bo")
	public String selectFreeBoardList(Model model) {
		
		ArrayList<Board> list = bService.selectFreeBoardList();
		
		
		if(list != null) {
			model.addAttribute("list", list);
			return "board/freeBoard";
		}else {
			model.addAttribute("errorMsg", "게시글 조회 실패!");
	    	return "common/errorPage";
		}
		
	}
	
	@RequestMapping("lastest.bo")
	public String selectLastest(Model model) {
		
		ArrayList<Board> list = bService.selectLastest();
		
		if(list != null) {
			model.addAttribute("list", list);
			return "board/freeBoard";
		}else {
			model.addAttribute("errorMsg", "게시글 조회 실패!");
	    	return "common/errorPage";
		}
	}
	
	@RequestMapping("freeBoardDetail.bo")
	public String selectFreeBoardDetail(String bno, Model model) {
		
		Board b = bService.selectFreeBoardDetail(bno);
		
		model.addAttribute("b", b);
		
		return "board/freeBoardDetail";
	}
	
	@RequestMapping("enrollForm.bo")
	public String enrollForm() {
		return "board/freeBoardInsert";
	}
	
	@RequestMapping("freeBoardInsert.bo")
	public String freeBoardInsert(Board b, MultipartFile upfile[], HttpSession session, Model model) {
		// System.out.println(upfile);
		// System.out.println(upfile.length);
		
		for(int i=0; i<upfile.length; i++) {
			if(!upfile[i].getOriginalFilename().equals("")) { // 첨파있다.
				String changeName = saveFile(upfile[i], session);
				
				switch(i) {
				case 0 : 
					b.setBoardOriginImg1(upfile[0].getOriginalFilename());
					b.setBoardChangeImg1("resources/img/board/" + changeName);
					break;
				case 1 :
					b.setBoardOriginImg2(upfile[1].getOriginalFilename());
					b.setBoardChangeImg2("resources/img/board/" + changeName);
					break;
				case 2 : 
					b.setBoardOriginImg3(upfile[2].getOriginalFilename());
					b.setBoardChangeImg3("resources/img/board/" + changeName);
					break;
				case 3 : 
					b.setBoardOriginImg4(upfile[3].getOriginalFilename());
					b.setBoardChangeImg4("resources/img/board/" + changeName);
					break;
				}
				
				
			}
		}
		
		// System.out.println(b);
		
 		
		
		int result1 = bService.insertFreeBoard(b);
		
		if(result1 > 0) {
			int result2 = bService.insertBoardImage(b);
			
			if(result1 > 0 && result2 > 0) {
				session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
		    	return "redirect:freeBoard.bo";
			}else {
				model.addAttribute("errorMsg", "게시글 등록 실패!");
		    	return "common/errorPage";
			}
		}
		
		return "board/freeBoardInsert";
	}
	
	@RequestMapping("freeBoardDelete.bo")
	public String deleteBoard(String bno, String filePath, HttpSession session, Model model) {
		   
	   int result = bService.deleteFreeboard(bno);
	   
	   System.out.println(result);
	   
	   if(result > 0) {
		   // 삭제 성공
		   
		   // 첨부파일이 있을 경우 => 파일 삭제
		   if(!filePath.equals("")) { // filePath = "resources/xxx/xxx.jpg"
			   new File(session.getServletContext().getRealPath(filePath)).delete(); // 서버에 업로된 파일 삭제
		   }
		   
		   // 게시판 리스트 페이지 list.bo url 재요청
		   session.setAttribute("alertMsg", "성공적으로 게시글이 삭제되었습니다.");
		   return "redirect:freeBoard.bo";
	   }else {
		   // 삭제 실패
		   // 에러문구 담아서 에러페이지 포워딩(모델!!)
		   model.addAttribute("errorMsg", "게시글 삭제 실패!");
		   return "common/errorPage";
	   }
	   
   }
	
	
	@RequestMapping("freeBoardUpdateForm.bo")
	public String freeBoardUpdateForm(String bno, Model model) {
		
		model.addAttribute("b", bService.selectFreeBoardDetail(bno));
		return "board/freeBoardUpdate";
	}
	
	public String freeBoardUpdate(Board b, MultipartFile reupfile[], HttpSession session, Model model) {
		
		
	}
	
	
	
	@RequestMapping("partyBoard.bo")
	public String partyBoard() {
		return "board/partyBoard";
	}
	
	@RequestMapping("partyBoardDetail.bo")
	public String partyBoardDetail() {
		return "board/partyBoardDetail";
	}
	
	@RequestMapping("partyBoardInsert.bo")
	public String partyBoardInsert() {
		return "board/partyBoardInsert";
	}
	
	@RequestMapping("partyBoardUpdate.bo")
	public String partyBoardUpdate() {
		return "board/partyBoardUpdate";
	}
}
