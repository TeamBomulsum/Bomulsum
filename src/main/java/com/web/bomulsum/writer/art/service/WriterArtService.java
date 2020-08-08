package com.web.bomulsum.writer.art.service;

import java.util.Map;

import com.web.bomulsum.writer.art.repository.WriterArtInfoDetailVO;
import com.web.bomulsum.writer.art.repository.WriterArtOptionVO;
import com.web.bomulsum.writer.art.repository.WriterArtVO;

public interface WriterArtService {

	//��ǰ ���̺� ���
	void insertArt(WriterArtVO vo);
	
	//��ǰ �ڵ� ��������
	String getArtCode(String artName);
	
	//��ǰ�������� ���̺� ���
	void insertArtInfoDetail(WriterArtInfoDetailVO vo);
	/*
	//��ǰ �ɼ� ���
	void insertArtOption(WriterArtOptionVO vo);

	void insertArtOptionl();
	*/
	
	//��ǰ ī�װ� ���
	void insertArtOptionCat1(Map<String, Object> map);
	void insertArtOptionCat2(Map<String, Object> map);
	void insertArtOptionCat3(Map<String, Object> map);
}
