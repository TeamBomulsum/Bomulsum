package com.web.bomulsum.user.wishlist.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.bomulsum.writer.art.repository.WriterArtVO;


@Repository
public class UserLikeWriterDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//좋아하는 작가 정보
	public List<UserLikeWriterVO> getWriterInfo(String memberCode, UserLikeWriterVO vo){
		//작가리스트
		List<String> writerList = sqlSessionTemplate.selectList("userLikeWriterDAO.selectArtList", memberCode);
		
		Map<String, Object> artList = new HashMap<String,Object>();
		artList.put("artList", writerList);
		
		//작가별 작품 개수 확인
		List<Map<String,Object>> artCount = sqlSessionTemplate.selectList("userLikeWriterDAO.countArtPhoto",artList);
		System.out.println(artCount);
		//작가별 작품 사진
		List<Map<String, Object>> artPhoto = sqlSessionTemplate.selectList("userLikeWriterDAO.selectArtPhoto", artList);
		System.out.println(artPhoto);
		//작가 정보 VO에 담기
		List<UserLikeWriterVO> writerInfoList = sqlSessionTemplate.selectList("userLikeWriterDAO.selectArtDetail", artList);

		
		return writerInfoList;
	}
	//좋아하는 작가별 사진
	public List<Map<String, Object>> artPhotoList(String memberCode){
		// 작가리스트
		List<String> writerList = sqlSessionTemplate.selectList("userLikeWriterDAO.selectArtList", memberCode);

		Map<String, Object> artList = new HashMap<String, Object>();
		artList.put("artList", writerList);
		List<Map<String, Object>> artPhoto = sqlSessionTemplate.selectList("userLikeWriterDAO.selectArtPhoto", artList);
		return artPhoto;
	}
	
	//좋아하는 작가 삭제
	public void deleteLikeWriter(Map<String, Object> map) {
		sqlSessionTemplate.delete("userLikeWriterDAO.deleteWishlist",map);
	}
	


	
}
