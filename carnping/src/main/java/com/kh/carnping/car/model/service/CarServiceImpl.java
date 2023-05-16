package com.kh.carnping.car.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.carnping.board.model.vo.Comment;
import com.kh.carnping.car.model.dao.CarDao;
import com.kh.carnping.car.model.vo.Cinfo;
import com.kh.carnping.car.model.vo.Filter;
import com.kh.carnping.car.model.vo.Review;
import com.kh.carnping.car.model.vo.Verify;
import com.kh.carnping.car.model.vo.VerifyImg;

@Service
public class CarServiceImpl implements CarService{

	@Autowired
	private CarDao cDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<Cinfo> carList() {
		return cDao.carList(sqlSession);
	}
	
	public ArrayList<Cinfo> filterList(Filter filter) {
		return cDao.filterList(sqlSession, filter);
	}

	@Override
	public Cinfo selectDetail(String cinfoNo) {
		return cDao.selectDetail(sqlSession, cinfoNo);
	}
	
	@Override
	public ArrayList<Review> selectReview(String cinfoNo) {
		return cDao.selectReview(sqlSession, cinfoNo);
	}

	@Override
	public Review selectReviewCount(String cinfoNo) {
		return cDao.selectReviewCount(sqlSession, cinfoNo);
	}

	@Override
	public ArrayList<Comment> selectReviewComment(String reNo) {
		return cDao.selectReviewComment(sqlSession, reNo);
	}

	@Override
	public int reviewLike(String reNo) {
		return cDao.reviewLike(sqlSession, reNo);
	}

	@Override
	public int reviewLikeCheck(String reNo, String memNo) {
		return cDao.reviewLikeCheck(sqlSession, reNo, memNo);
	}

	@Override
	public int deleteReviewLike(String reNo, String memNo) {
		return cDao.deleteReviewLike(sqlSession, reNo , memNo);
	}

	@Override
	public int insertReviewLike(String reNo, String memNo) {
		return cDao.insertReviewLike(sqlSession, reNo , memNo);
	}

	@Override
	public int insertComment(String reNo, String memNo, String text) {
		return cDao.insertComment(sqlSession, reNo, memNo, text);
	}

	@Override
	public int insertReview(Review review) {
		return cDao.insertReview(sqlSession, review);
	}
	
	@Override
	public int reviewCheck(String memNo, String cinfoNo) {
		return cDao.reviewCheck(sqlSession, memNo, cinfoNo);
	}

	@Override
	public int deleteReview(String reNo) {
		return cDao.deleteReview(sqlSession, reNo);
	}

	@Override
	public int insertCar(Verify verify) {
		return cDao.insertCar(sqlSession, verify);
	}

	@Override
	public int insertCarImg(VerifyImg verifyImg) {
		return cDao.insertCarImg(sqlSession, verifyImg);
	}

	@Override
	public int checkRequest(String loginMember) {
		return cDao.checkRequest(sqlSession, loginMember);
	}

	@Override
	public int deleteRequest(HashMap<String, Object> map) {
		return cDao.deleteRequest(sqlSession, map);
	}
	
	
}
