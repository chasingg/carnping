package com.kh.carnping.board.model.service;

import java.util.ArrayList;

import com.kh.carnping.board.model.vo.Board;
import com.kh.carnping.common.model.vo.PageInfo;

public interface BoardService {

	/*
	 * // 1_1. 게시판 리스트 페이지 서비스 (페이징) int selectListCount(); // 페이징 처리를 위해 전체 개수를
	 * 리턴하는 메소드 ArrayList<Board> selectList(PageInfo pi);
	 */
	
	// 1_2. 무료나눔 게시판 목록조회
	ArrayList<Board> selectFreeBoardList();
	
	// 2. 최신순 
	ArrayList<Board> selectLastest();
	
	
	// 2. 무료나눔 게시판 상세조회
	Board selectFreeBoardDetail(String bno);
	
	// 3. 무료나눔 게시판 등록
	int insertFreeBoard(Board b);
	int insertBoardImage(Board b);
	
	// 4. 무료나눔 게시판 수정
	int updateFreeBoard(Board b, String bno);
	
	// 5. 무료나눔 게시판 삭제
	int deleteFreeboard(String bno);
	
	
	
	
	
	
	
}
