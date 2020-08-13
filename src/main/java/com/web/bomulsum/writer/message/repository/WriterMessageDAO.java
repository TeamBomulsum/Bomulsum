package com.web.bomulsum.writer.message.repository;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.bomulsum.user.message.repository.UserInsertChatVo;

@Repository
public class WriterMessageDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<WriterChatroomVO> getChatRoom(String writerCode){
		return sqlSessionTemplate.selectList("writerMessageDAO.getChatroom", writerCode);
	}
	
	public List<WriterChatroomVO> testGetMember(){
		return sqlSessionTemplate.selectList("writerMessageDAO.memberTest");
	}
	
	public void insertChatRoom(UserInsertChatVo vo) {
		sqlSessionTemplate.insert("writerMessageDAO.insertChatRoom", vo);
	}
	
	public void exitChatRoom(List<HashMap<String, String>> list) {
		sqlSessionTemplate.delete("writerMessageDAO.delChatRoom", list);
	}

}
