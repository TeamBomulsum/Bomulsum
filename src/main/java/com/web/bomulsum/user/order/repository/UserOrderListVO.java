package com.web.bomulsum.user.order.repository;

import oracle.sql.DATE;

public class UserOrderListVO {

	private String orderCodeSeq;
	private String memberCodeSeq;
	private DATE orderDate;
	private String orderZipCode;
	private String orderAddressFirst;
	private String orderAddressSecond;
	private int orderPayPrice;
	private int orderPointPrice;
	private String couponCodeSeq;
	private String orderStatus;
	private String orderRefundReason;
	
	private String artName;
	private String writerCodeSeq;
	private String writerName;
	private String writerBrandName;
	private int buyArtOptionCount;
	private String buyArtOptionName;
	
	private String buyArtReviewStatus;
	private String buyArtReviewUpdate;
	private String reviewCodeSeq;
	private String buyArtCodeSeq;
	
	
}
