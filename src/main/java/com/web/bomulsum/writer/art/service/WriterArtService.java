package com.web.bomulsum.writer.art.service;

import com.web.bomulsum.writer.art.repository.WriterArtInfoDetailVO;
import com.web.bomulsum.writer.art.repository.WriterArtVO;

public interface WriterArtService {

	//작품 테이블 등록
	void insertArt(WriterArtVO vo);
	
	//작품 코드 가져오기
	String getArtCode(String artName);
	
	//작품정보제공 테이블 등록
	void insertArtInfoDetail(WriterArtInfoDetailVO vo);

}
