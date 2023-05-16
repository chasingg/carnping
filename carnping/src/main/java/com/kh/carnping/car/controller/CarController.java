package com.kh.carnping.car.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.kh.carnping.board.model.vo.Comment;
import com.kh.carnping.car.model.service.CarServiceImpl;
import com.kh.carnping.car.model.vo.Cinfo;
import com.kh.carnping.car.model.vo.CinfoImg;
import com.kh.carnping.car.model.vo.Filter;
import com.kh.carnping.car.model.vo.Review;
import com.kh.carnping.car.model.vo.Verify;
import com.kh.carnping.car.model.vo.VerifyImg;
import com.kh.carnping.common.template.SaveFile;

@Controller
public class CarController {

	@Autowired
	private CarServiceImpl cService;

	// 차박 정보 리스트
	@RequestMapping("carList.ca")
	public String carList(Model model) {
		ArrayList<Cinfo> list = cService.carList();
		if (!list.isEmpty()) {
			model.addAttribute("list", list);
			return "car/carList";
		} else {
			model.addAttribute("emp", "현재 리스트가 비어있습니다.");
			model.addAttribute("list", list);
			return "car/carList";
		}
	}

	// 차박 정보 리스트 (필터기능)
	@RequestMapping("filter.ca")
	public String filterList(Filter filter, Model model) {
		ArrayList<Cinfo> list = cService.filterList(filter);
		if (!list.isEmpty()) {
			model.addAttribute("filter", filter);
			model.addAttribute("list", list);
			return "car/carList";
		} else {
			model.addAttribute("list", list);
			model.addAttribute("filter", filter);
			model.addAttribute("emp", "현재 리스트가 비어있습니다.");
			return "car/carList";
		}
	}

	// 차박 상세정보로 이동
	@RequestMapping("detail.ca")
	public String selectDetail(String cinfoNo, Model model) {
		Cinfo cinfo = cService.selectDetail(cinfoNo);
		Review reCount = cService.selectReviewCount(cinfoNo);
		String[] week = { "월", "화", "수", "목", "금", "토", "일" };
		String[] facilities = { "화장실", "편의점", "카페", "마트", "음식점", "주차장", "캠핑장", "병원" };

		model.addAttribute("facilities", facilities);
		model.addAttribute("week", week);
		model.addAttribute("cinfo", cinfo);
		model.addAttribute("reCount", reCount);
		return "car/carDetail";
	}
	
// 리뷰 체크
	@ResponseBody
	@RequestMapping(value = "reviewCheck.ca", produces = "application/json;charset=utf-8")
	public String reviewCheck(String memNo, String cinfoNo) {
		int result = cService.reviewCheck(memNo, cinfoNo);
		System.out.println(result);
		return new Gson().toJson(result);
	}
		
	// 리뷰 리스트
	@ResponseBody
	@RequestMapping(value = "selectReview.ca", produces = "application/json; charset=utf-8")
	public String selectReview(String cinfoNo) {
		ArrayList<Review> review = cService.selectReview(cinfoNo);
		return new Gson().toJson(review);
	}

	// 리뷰 등록
	@RequestMapping(value = "insertReview.ca")
	public String insertReview(Review review, MultipartFile upfile, HttpSession session, Model model) {
		System.out.println(upfile);
		String ext = ".png .PNG .jpg .JPG";
		if( upfile != null && !upfile.getOriginalFilename().equals("")) {
			if(ext.contains(upfile.getOriginalFilename().
					substring(upfile.getOriginalFilename().lastIndexOf(".")))) {
				String changeName = new SaveFile().saveFile(upfile, session);
				review.setReviewImg("resources/img/reviewImg/" + changeName);	
			}else {
				model.addAttribute("msg", "파일형식이 잘못되었습니다.");
				return new Gson().toJson("파일형식이 잘못되었습니다.");
			}
		}
		int result = cService.insertReview(review);
		return "redirect:detail.ca?cinfoNo="+review.getReviewNo();
	}
	
	//리뷰 삭제
	@ResponseBody
	@RequestMapping(value = "deleteReview.ca", produces = "application/json;charset=utf-8")
	public String deleteReview(String reNo) {
		int result = cService.deleteReview(reNo);
		return new Gson().toJson(result);
	}

	// 리뷰 댓글 리스트
	@ResponseBody
	@RequestMapping(value = "selectReviewComment.ca", produces = "application/json; charset=utf-8")
	public String selectComment(String reNo) {
		ArrayList<Comment> comment = cService.selectReviewComment(reNo);
		return new Gson().toJson(comment);
	}
	
	//리뷰 좋아요 체크
	@ResponseBody
	@RequestMapping(value = "reviewLike.ca", produces = "application/json;charset=utf-8")
	public String reviewLikeCheck(String reNo, String memNo) {
		int result = cService.reviewLikeCheck(reNo, memNo);
		System.out.println(reNo);
		System.out.println(memNo);
		return new Gson().toJson(result);
	}
	
	// 리뷰 좋아요
	@ResponseBody
	@RequestMapping(value = "like.ca", produces = "application/json;charset=utf-8")
	public String reviewLike(String reNo, int rs, String memNo) {
		int result = 0;
		System.out.println(reNo);
		System.out.println("rs" + rs);
		System.out.println("memNo "+ memNo);
		if (rs > 0) {
			// 좋아요가 있을 때
			result = cService.deleteReviewLike(reNo,memNo);
		} else {
			result = cService.insertReviewLike(reNo,memNo);
		}
		return new Gson().toJson(result);
	}
	
	// 리뷰 댓글 등록
	@ResponseBody
	@RequestMapping(value = "reviewComment.ca", produces = "application/json;charset=utf-8")
	public String insertComment(String reNo, String memNo, String text) {
		int result = cService.insertComment(reNo,memNo, text);
		return new Gson().toJson(result);
	}
	
	// 차박지 등록으로 이동
	@RequestMapping("insertCarEnroll.ca")
	public String insertCarEnroll(){
		return "car/insertCar";
	}
	
	// 차박 등록 
	@RequestMapping(value = "insertCar.ca")
	public String insertCar(Verify verify, MultipartFile[] upfile, Model model,HttpSession session){
		VerifyImg verifyImg = new VerifyImg();
		
		String verifyFacilitie = String.join(",", verify.getVerifyFacilitie());
		String verifyDay = String.join(",", verify.getVerifyDay());
		String verifyTags = String.join(",", verify.getVerifyTags());

		verify.setVerifyDays(verifyDay);
		verify.setVerifyFacilities(verifyFacilitie);
		verify.setVerifyTag(verifyTags);
		System.out.println(verify);
		System.out.println(upfile.length);
		for(int i = 0; i < upfile.length; i++) {
			if(!upfile[i].getOriginalFilename().equals("")) {
				String changeName = new SaveFile().carFile(upfile[i], session);
				switch (i) {
			      case 0:
			        verifyImg.setVerifyImg1("resources/img/carImg/" + changeName);
			        break;
			      case 1:
			        verifyImg.setVerifyImg2("resources/img/carImg/" + changeName);
			        break;
			      case 2:
			        verifyImg.setVerifyImg3("resources/img/carImg/" + changeName);
			        break;
			      case 3:
			    	  verifyImg.setVerifyImg4("resources/img/carImg/" + changeName);
			    	  break;
			      case 4:
			    	  verifyImg.setVerifyImg5("resources/img/carImg/" + changeName);
			    	  break;
			      case 5:
			    	  verifyImg.setVerifyImg6("resources/img/carImg/" + changeName);
			    	  break;
			      case 6:
			    	  verifyImg.setVerifyImg7("resources/img/carImg/" + changeName);
			    	  break;
			      case 7:
			    	  verifyImg.setVerifyImg8("resources/img/carImg/" + changeName);
			    	  break;
			      case 8:
			    	  verifyImg.setVerifyImg9("resources/img/carImg/" + changeName);
			    	  break;
			      case 9:
			    	  verifyImg.setVerifyImg10("resources/img/carImg/" + changeName);
			    	  break;
			      default:
			        break;
			    }
			}
		}
		
		int result1 = cService.insertCar(verify);
		int result2 = cService.insertCarImg(verifyImg);
		System.out.println(result1);
		System.out.println(result2);
		
		return "main";
	}
	
	// 차박 삭제 요청
	@ResponseBody
	@RequestMapping(value = "deleteRequest.ca", produces = "application/json;charset=utf-8")
	public String deleteRequest(Cinfo cinfo, String result, String loginMember, Model model){
		int count = cService.checkRequest(loginMember);
		int rs = 0;
		System.out.println(cinfo);
		if(count > 0) {
			return new Gson().toJson("이미 삭제, 수정, 등록이 요청되어있는 아이디입니다.");
		}else {
			HashMap<String, Object> map = new HashMap<>();
			map.put("cinfo", cinfo);
			map.put("result", result);
			map.put("loginMember", loginMember);
			
			rs = cService.deleteRequest(map);
			if(rs > 0) {
				return  new Gson().toJson("삭제요청이 완료되어있습니다.");
			}else {
				return  new Gson().toJson("삭제요청도중 오류발생");
			}
		}
	}
}
