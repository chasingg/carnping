package com.kh.carnping.car.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.carnping.board.model.vo.Comment;
import com.kh.carnping.car.model.vo.Cinfo;
import com.kh.carnping.car.model.vo.Filter;
import com.kh.carnping.car.model.vo.Review;
import com.kh.carnping.car.model.vo.Verify;
import com.kh.carnping.car.model.vo.VerifyImg;

@Repository
public class CarDao {
	
	public ArrayList<Cinfo> carList(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("carMapper.carList");
	}
	
	public ArrayList<Cinfo> filterList(SqlSessionTemplate sqlSession, Filter filter){
		return (ArrayList)sqlSession.selectList("carMapper.filterList", filter);
	}
	
	public Cinfo selectDetail(SqlSessionTemplate sqlSession, String cinfoNo) {
		return sqlSession.selectOne("carMapper.selectDetail", cinfoNo);
	}

	public ArrayList<Review> selectReview(SqlSessionTemplate sqlSession, String cinfoNo) {
		return (ArrayList)sqlSession.selectList("carMapper.selectReview", cinfoNo);
	}

	public Review selectReviewCount(SqlSessionTemplate sqlSession, String cinfoNo) {
		return sqlSession.selectOne("carMapper.selectReviewCount", cinfoNo);
	}

	public ArrayList<Comment> selectReviewComment(SqlSessionTemplate sqlSession, String reNo) {
		return (ArrayList)sqlSession.selectList("carMapper.selectReviewComment", reNo);
	}

	public int reviewLike(SqlSessionTemplate sqlSession, String reNo) {
		return sqlSession.update("carMapper.reviewLike", reNo);
	}

	public int reviewLikeCheck(SqlSessionTemplate sqlSession, String reNo, String memNo) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("reNo",  reNo);
		map.put("memNo", memNo);
		return sqlSession.selectOne("carMapper.reviewLikeCheck", map);
	}

	public int deleteReviewLike(SqlSessionTemplate sqlSession, String reNo, String memNo) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("reNo",  reNo);
		map.put("memNo", memNo);
		int result1 = sqlSession.delete("carMapper.deleteReviewLike", map);
		int result2 = sqlSession.update("carMapper.reviewNoLike", reNo);
		return result1 * result2;
	}

	public int insertReviewLike(SqlSessionTemplate sqlSession, String reNo, String memNo) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("reNo",  reNo);
		map.put("memNo", memNo);
		int result1 = sqlSession.insert("carMapper.insertReviewLike", map);
		int result2 = sqlSession.update("carMapper.reviewLike", reNo);
		return result1 * result2;
	}

	public int insertComment(SqlSessionTemplate sqlSession, String reNo, String memNo, String text) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("reNo",  reNo);
		map.put("memNo", memNo);
		map.put("text", text);
		return sqlSession.insert("carMapper.insertComment", map);
	}

	public int insertReview(SqlSessionTemplate sqlSession, Review review) {
		return sqlSession.insert("carMapper.insertReview", review);
	}

	public int reviewCheck(SqlSessionTemplate sqlSession, String memNo, String cinfoNo) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("cinfoNo", cinfoNo);
		map.put("memNo", memNo);
		return sqlSession.selectOne("carMapper.reviewCheck", map);
	}

	public int deleteReview(SqlSessionTemplate sqlSession, String reNo) {
		return sqlSession.update("carMapper.updateReview", reNo);
	}

	public int insertCar(SqlSessionTemplate sqlSession, Verify verify) {
		return sqlSession.insert("carMapper.insertCar", verify);
	}

	public int insertCarImg(SqlSessionTemplate sqlSession, VerifyImg verifyImg) {
		return sqlSession.insert("carMapper.insertCarImg", verifyImg);
	}

	public int checkRequest(SqlSessionTemplate sqlSession, String loginMember) {
		return sqlSession.selectOne("carMapper.checkRequest", loginMember);
	}

	public int deleteRequest(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		int result1 = sqlSession.insert("carMapper.deleteRequest", map);
		int result2 = sqlSession.insert("carMapper.deleteImgRequest", map);
		return result1 * result2;
	}

	
	
	
	
}
