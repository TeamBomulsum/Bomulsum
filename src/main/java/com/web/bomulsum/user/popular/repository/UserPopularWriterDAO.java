package com.web.bomulsum.user.popular.repository;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserPopularWriterDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	//작가정보
	public List<UserPopularWriterVO> getWriterInfo(){
		 List<UserPopularWriterVO> artistInfoList = sqlSessionTemplate.selectList("userPopularWriterDAO.selectPopularArtDetail"); 
		 System.out.println(artistInfoList); 
		 return artistInfoList;
		
	}
	//작가별 사진
	public List<String> getRankPhoto(String writerCode){
		List<String> firstArt = sqlSessionTemplate.selectList("userPopularWriterDAO.selectArtPhoto", writerCode); 
		return firstArt;
	}
	
	//좋아하는 작가 추가
	public void likeWriter(HashMap<String, String> map) {
		sqlSessionTemplate.insert("userPopularWriterDAO.likeWriter", map);
	}
	//좋아하는 작가 취소
	public void nonLikeWriter(HashMap<String, String> map) {
		sqlSessionTemplate.delete("userPopularWriterDAO.nonLikeWriter", map);
	}

	//좋아하는 작가인지 확인
	public List<String> getLikeWriter(HashMap<String, String> map){
	  List<String> checkLikeWriter =sqlSessionTemplate.selectList("userPopularWriterDAO.getLikeWriter",map); 
	  return checkLikeWriter; 
	}

}




