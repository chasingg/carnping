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
public class Board {
	private String boardNo;		// 게시글 번호
	private String boardTitle;	// 게시글 제목
	private String memNo;		// 작성자
	private String createDate;	// 작성일
	private String location;	// 지역
	private String boardContent;// 내용
	private int count;			// 조회수
	private String status;		// 상태
}
