package com.web.bomulsum.writer.art.service;

import java.util.Map;

import com.web.bomulsum.writer.art.repository.WriterArtInfoDetailVO;
import com.web.bomulsum.writer.art.repository.WriterArtVO;

public interface WriterArtService {

	//��ǰ ���̺� ���
	void insertArt(WriterArtVO vo);
	
	//��ǰ �ڵ� ��������
	String getArtCode(String artName);
	
	//��ǰ�������� ���̺� ���
	void insertArtInfoDetail(WriterArtInfoDetailVO vo);


	//��ǰ �ɼ� ���
	void insertArtOption1(Map<String, Object> map);
	void insertArtOption2(Map<String, Object> map);
	void insertArtOption3(Map<String, Object> map);
	void insertArtOption4(Map<String, Object> map);
	void insertArtOption5(Map<String, Object> map);
	void insertArtOption6(Map<String, Object> map);
	void insertArtOption7(Map<String, Object> map);
	void insertArtOption8(Map<String, Object> map);
	void insertArtOption9(Map<String, Object> map);
}
