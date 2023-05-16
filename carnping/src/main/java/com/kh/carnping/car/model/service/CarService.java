package com.kh.carnping.car.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.carnping.board.model.vo.Comment;
import com.kh.carnping.car.model.vo.Cinfo;
import com.kh.carnping.car.model.vo.Filter;
import com.kh.carnping.car.model.vo.Review;
import com.kh.carnping.car.model.vo.Verify;
import com.kh.carnping.car.model.vo.VerifyImg;

public interface CarService {
	
	// 차박 정보 리스트
	ArrayList<Cinfo> carList();
	
	// 차박 필터 후 리스트
	ArrayList<Cinfo> filterList(Filter filter);
	
	// 차박 상세 정보
	Cinfo selectDetail(String cinfoNo);
	
	// 리뷰정보
	ArrayList<Review> selectReview(String cinfoNo);
	
	// 리뷰 등록
	int insertReview(Review review);
	
	// 리뷰 삭제
	int deleteReview(String reNo);

	// 리뷰 카운터 정보
	Review selectReviewCount(String cinfoNo);
	
	// 리뷰 댓글 정보
	ArrayList<Comment> selectReviewComment(String reNo);
	
	// 리뷰 좋아요 COUNT ++
	int reviewLike(String reNo);
	
	// 리뷰 좋아요 체크
	int reviewLikeCheck(String reNo, String memNo);
	
	// 리뷰 좋아요 삭제
	int deleteReviewLike(String reNo, String memNo);	
	
	// 리뷰 좋아요 테이블 생성
	int insertReviewLike(String reNo,  String memNo);
	
	// 리뷰 코멘트 등록
	int insertComment(String reNo, String memNo, String text);
	
	// 리뷰 체크
	int reviewCheck(String memNo, String cinfoNo);
	
	// 차박 등록
	int insertCar(Verify verify);
	
	// 차박 이미지 등록
	int insertCarImg(VerifyImg verifyImg);
	
	// 요청 중복 체크
	int checkRequest(String loginMember);
	
	// 차박 정보 삭제 요청
	int deleteRequest(HashMap<String, Object> map);
}