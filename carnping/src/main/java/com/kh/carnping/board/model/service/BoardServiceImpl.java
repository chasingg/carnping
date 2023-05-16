package com.kh.carnping.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.carnping.board.model.dao.BoardDao;
import com.kh.carnping.board.model.vo.Board;
import com.kh.carnping.common.model.vo.PageInfo;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDao bDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<Board> selectFreeBoardList() {

		return bDao.selectFreeBoardList(sqlSession);
	}

	@Override
	public ArrayList<Board> selectLastest() {

		return bDao.selectLastest(sqlSession);
	}

	public Board selectFreeBoardDetail(String bno) {

		return bDao.selectFreeBoardDetail(bno, sqlSession);
	}

	@Override
	public int insertFreeBoard(Board b) {

		return bDao.insertFreeBoard(sqlSession, b);
	}

	@Override
	public int updateFreeBoard(Board b, String bno) {
		return 0;
	}

	@Override
	public int deleteFreeboard(String bno) {
		return bDao.deleteFreeboard(sqlSession, bno);
	}

	@Override
	public int insertBoardImage(Board b) {

		return bDao.insertBoardImage(sqlSession, b);
	}


	
}
