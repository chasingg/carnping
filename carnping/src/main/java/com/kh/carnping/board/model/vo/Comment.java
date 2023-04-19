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
public class Comment {
	private String reNo;		// 댓글 등록번호
	private String refNo;		// 참조글번호
	private String memNo;		// 작성자
	private String createDate;	// 작성일
	private String commContent;	// 댓글내용
	}
