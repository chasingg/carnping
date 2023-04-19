package com.kh.carnping.board.modal.vo;

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
public class BoardImg {
	private String boardNo;		// 게시글 번호
	private String boardImg1;	// 게시글 메인이미지
	private String boardImg2;	// 게시글 서브이미지
	private String boardImg3;	// 게시글 서브이미지
	private String boardImg4;	// 게시글 서브이미지
	private String boardImg5;	// 게시글 서브이미지
}
