package com.kh.carnping.admin.modal.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.carnping.member.model.vo.Member;

@Repository
public class AdminDao {
	public ArrayList<Member> memNotice(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("adminMapper.")
	}
}	
