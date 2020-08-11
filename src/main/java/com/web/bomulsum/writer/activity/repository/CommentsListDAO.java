package com.web.bomulsum.writer.activity.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class CommentsListDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//게시판 글 목록 불러오기
	public List<CommentsListVO> commentsList(){
		System.out.println("여기 왔나요?");
		return sqlSessionTemplate.selectList("writerCommentListDAO.selectComment");
	}
	
	//글 등록
	public void addRecomment(CommentsListVO vo) {
		sqlSessionTemplate.update("writerCommentListDAO.addRecomment", vo);
	}
	
}
