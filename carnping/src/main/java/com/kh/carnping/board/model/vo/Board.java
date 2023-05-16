package com.kh.carnping.board.model.vo;

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
public class Board {
	private String boardNo;		// 게시글 번호
	private String boardTitle;	// 게시글 제목
	private String memNo;		// 작성자
	private String createDate;	// 작성일
	private String location;	// 지역
	private String boardContent;// 내용
	private int count;			// 조회수
	private String status;		// 상태
	private String boardOriginImg1;	// 게시글 메인이미지
	private String boardChangeImg1;	// 게시글 서브이미지
	private String boardOriginImg2;	// 게시글 메인이미지
	private String boardChangeImg2;	// 게시글 서브이미지
	private String boardOriginImg3;	// 게시글 메인이미지
	private String boardChangeImg3;	// 게시글 서브이미지
	private String boardOriginImg4;	// 게시글 메인이미지
	private String boardChangeImg4;	// 게시글 서브이미지
	private String boardOriginImg5;	// 게시글 메인이미지
	private String boardChangeImg5;	// 게시글 서브이미지
	private String memId;
	private String phone;
	
}
