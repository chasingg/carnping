package com.kh.carnping.car.modal.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter	
@ToString
public class Review {
	private String reviewNo;	// 리뷰 등록번호 RVW
	private String cinfoNo;		// 차박정보 등록번호
	private int reviewView;		// 뷰
	private int reviewConv;		// 편의시설
	private int reviewAccess;	// 접근성
	private int reviewType;		// 지형
	private String reviewContent;//리뷰내용
	private String reviewImg;	//리뷰 이미지
	private int reviewLike;		//좋아요
	private String memNo; 		// 리뷰 작성자
	private String createDate; 	// 작성일
	
}
