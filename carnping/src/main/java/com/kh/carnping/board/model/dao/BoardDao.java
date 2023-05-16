package com.kh.carnping.board.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.carnping.board.model.vo.Board;

@Repository
public class BoardDao {

	public ArrayList<Board> selectFreeBoardList(SqlSessionTemplate sqlSession) {

		return (ArrayList)sqlSession.selectList("boardMapper.selectFreeBoardList");
	}

	public ArrayList<Board> selectLastest(SqlSessionTemplate sqlSession) {

		return (ArrayList)sqlSession.selectList("boardMapper.selectLastest");
	}

	public Board selectFreeBoardDetail(String bno, SqlSessionTemplate sqlSession) {

		return sqlSession.selectOne("boardMapper.selectFreeBoardDetail", bno);
	}

	public int insertFreeBoard(SqlSessionTemplate sqlSession, Board b) {

		return sqlSession.insert("boardMapper.insertFreeBoard", b);
	}

	public int insertBoardImage(SqlSessionTemplate sqlSession, Board b) {

		return sqlSession.insert("boardMapper.insertBoardImage", b);
	}

	public int deleteFreeboard(SqlSessionTemplate sqlSession, String bno) {


		return sqlSession.update("boardMapper.deleteBoard", bno);
	}

}
