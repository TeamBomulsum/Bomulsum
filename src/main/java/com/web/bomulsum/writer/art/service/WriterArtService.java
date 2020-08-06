package com.web.bomulsum.writer.art.service;

import com.web.bomulsum.writer.art.repository.WriterArtInfoDetailVO;
import com.web.bomulsum.writer.art.repository.WriterArtVO;

public interface WriterArtService {

	//��ǰ ���̺� ���
	void insertArt(WriterArtVO vo);
	
	//��ǰ �ڵ� ��������
	String getArtCode(String artName);
	
	//��ǰ�������� ���̺� ���
	void insertArtInfoDetail(WriterArtInfoDetailVO vo);

}
