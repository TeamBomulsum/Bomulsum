package com.web.bomulsum.writer.order.repository;

import oracle.sql.DATE;

public class WriterOrderVO {

	private String orderCodeSeq;
	private String memberCodeSeq;
	private DATE orderDate;
	private String orderReceiver;
	private String orderPhoneNum;
	private String orderZipcode;
	private String orderAddressFirst;
	private String orderAddressSecond;
	private int orderPayPrice;
	private int orderPointPrice;
	private String couponCodeSeq;
	
	private String buyWriterCodeSeq;
	private String writerCodeSeq;
	private int buyWriterSendPrice;
	private int buyWriterPlusSendPrice;
	private String buyWriterOrderStatus;
	private String buyWriterOrderRefundReason;
	private DATE buyWriterOrderRefundDate;
	private DATE buyRefundRequestDate;
	
	private String buyArtCodeSeq;
	private String artCodeSeq;
	private String artName;
	private String buyArtRequest;
	private String buyArtReviewStatus;
	private String buyArtReviewUpdate;
	
	private String buyOptionCodeSeq;
	private int artPrice;
	private String artOptionSeqList;
	private String artOptionName;
	private int artOptionAmount;
	
	
	
	
}
