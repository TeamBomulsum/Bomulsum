package com.web.bomulsum.writer.order.repository;

import java.sql.Date;


public class WriterOrderVO {

	private String orderCodeSeq;
	private String memberCodeSeq;
	private Date orderDate;
	private String orderReceiver;
	private String orderPhoneNum;
	private String orderZipcode;
	private String orderAddressFirst;
	private String orderAddressSecond;
	private double orderPayPrice;
	private double orderPointPrice;
	private String couponCodeSeq;
	
	private String buyWriterCodeSeq;
	private String writerCodeSeq;
	private double buyWriterSendPrice;
	private double buyWriterPlusSendPrice;
	private String buyWriterOrderStatus;
	private String buyWriterOrderRefundReason;
	private Date buyWriterOrderRefundDate;
	private Date buyRefundRequestDate;
	
	private String buyArtCodeSeq;
	private String artCodeSeq;
	private String artName;
	private String buyArtRequest;
	private String buyArtReviewStatus;
	private String buyArtReviewUpdate;
	
	private String buyOptionCodeSeq;
	private double artPrice;
	private String artOptionSeqList;
	private String artOptionName;
	private double artOptionAmount;
	public String getOrderCodeSeq() {
		return orderCodeSeq;
	}
	public void setOrderCodeSeq(String orderCodeSeq) {
		this.orderCodeSeq = orderCodeSeq;
	}
	public String getMemberCodeSeq() {
		return memberCodeSeq;
	}
	public void setMemberCodeSeq(String memberCodeSeq) {
		this.memberCodeSeq = memberCodeSeq;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public String getOrderReceiver() {
		return orderReceiver;
	}
	public void setOrderReceiver(String orderReceiver) {
		this.orderReceiver = orderReceiver;
	}
	public String getOrderPhoneNum() {
		return orderPhoneNum;
	}
	public void setOrderPhoneNum(String orderPhoneNum) {
		this.orderPhoneNum = orderPhoneNum;
	}
	public String getOrderZipcode() {
		return orderZipcode;
	}
	public void setOrderZipcode(String orderZipcode) {
		this.orderZipcode = orderZipcode;
	}
	public String getOrderAddressFirst() {
		return orderAddressFirst;
	}
	public void setOrderAddressFirst(String orderAddressFirst) {
		this.orderAddressFirst = orderAddressFirst;
	}
	public String getOrderAddressSecond() {
		return orderAddressSecond;
	}
	public void setOrderAddressSecond(String orderAddressSecond) {
		this.orderAddressSecond = orderAddressSecond;
	}
	public double getOrderPayPrice() {
		return orderPayPrice;
	}
	public void setOrderPayPrice(double orderPayPrice) {
		this.orderPayPrice = orderPayPrice;
	}
	public double getOrderPointPrice() {
		return orderPointPrice;
	}
	public void setOrderPointPrice(double orderPointPrice) {
		this.orderPointPrice = orderPointPrice;
	}
	public String getCouponCodeSeq() {
		return couponCodeSeq;
	}
	public void setCouponCodeSeq(String couponCodeSeq) {
		this.couponCodeSeq = couponCodeSeq;
	}
	public String getBuyWriterCodeSeq() {
		return buyWriterCodeSeq;
	}
	public void setBuyWriterCodeSeq(String buyWriterCodeSeq) {
		this.buyWriterCodeSeq = buyWriterCodeSeq;
	}
	public String getWriterCodeSeq() {
		return writerCodeSeq;
	}
	public void setWriterCodeSeq(String writerCodeSeq) {
		this.writerCodeSeq = writerCodeSeq;
	}
	public double getBuyWriterSendPrice() {
		return buyWriterSendPrice;
	}
	public void setBuyWriterSendPrice(double buyWriterSendPrice) {
		this.buyWriterSendPrice = buyWriterSendPrice;
	}
	public double getBuyWriterPlusSendPrice() {
		return buyWriterPlusSendPrice;
	}
	public void setBuyWriterPlusSendPrice(double buyWriterPlusSendPrice) {
		this.buyWriterPlusSendPrice = buyWriterPlusSendPrice;
	}
	public String getBuyWriterOrderStatus() {
		return buyWriterOrderStatus;
	}
	public void setBuyWriterOrderStatus(String buyWriterOrderStatus) {
		this.buyWriterOrderStatus = buyWriterOrderStatus;
	}
	public String getBuyWriterOrderRefundReason() {
		return buyWriterOrderRefundReason;
	}
	public void setBuyWriterOrderRefundReason(String buyWriterOrderRefundReason) {
		this.buyWriterOrderRefundReason = buyWriterOrderRefundReason;
	}
	public Date getBuyWriterOrderRefundDate() {
		return buyWriterOrderRefundDate;
	}
	public void setBuyWriterOrderRefundDate(Date buyWriterOrderRefundDate) {
		this.buyWriterOrderRefundDate = buyWriterOrderRefundDate;
	}
	public Date getBuyRefundRequestDate() {
		return buyRefundRequestDate;
	}
	public void setBuyRefundRequestDate(Date buyRefundRequestDate) {
		this.buyRefundRequestDate = buyRefundRequestDate;
	}
	public String getBuyArtCodeSeq() {
		return buyArtCodeSeq;
	}
	public void setBuyArtCodeSeq(String buyArtCodeSeq) {
		this.buyArtCodeSeq = buyArtCodeSeq;
	}
	public String getArtCodeSeq() {
		return artCodeSeq;
	}
	public void setArtCodeSeq(String artCodeSeq) {
		this.artCodeSeq = artCodeSeq;
	}
	public String getArtName() {
		return artName;
	}
	public void setArtName(String artName) {
		this.artName = artName;
	}
	public String getBuyArtRequest() {
		return buyArtRequest;
	}
	public void setBuyArtRequest(String buyArtRequest) {
		this.buyArtRequest = buyArtRequest;
	}
	public String getBuyArtReviewStatus() {
		return buyArtReviewStatus;
	}
	public void setBuyArtReviewStatus(String buyArtReviewStatus) {
		this.buyArtReviewStatus = buyArtReviewStatus;
	}
	public String getBuyArtReviewUpdate() {
		return buyArtReviewUpdate;
	}
	public void setBuyArtReviewUpdate(String buyArtReviewUpdate) {
		this.buyArtReviewUpdate = buyArtReviewUpdate;
	}
	public String getBuyOptionCodeSeq() {
		return buyOptionCodeSeq;
	}
	public void setBuyOptionCodeSeq(String buyOptionCodeSeq) {
		this.buyOptionCodeSeq = buyOptionCodeSeq;
	}
	public double getArtPrice() {
		return artPrice;
	}
	public void setArtPrice(double artPrice) {
		this.artPrice = artPrice;
	}
	public String getArtOptionSeqList() {
		return artOptionSeqList;
	}
	public void setArtOptionSeqList(String artOptionSeqList) {
		this.artOptionSeqList = artOptionSeqList;
	}
	public String getArtOptionName() {
		return artOptionName;
	}
	public void setArtOptionName(String artOptionName) {
		this.artOptionName = artOptionName;
	}
	public double getArtOptionAmount() {
		return artOptionAmount;
	}
	public void setArtOptionAmount(double artOptionAmount) {
		this.artOptionAmount = artOptionAmount;
	}
	@Override
	public String toString() {
		return "WriterOrderVO [orderCodeSeq=" + orderCodeSeq + ", memberCodeSeq=" + memberCodeSeq + ", orderDate="
				+ orderDate + ", orderReceiver=" + orderReceiver + ", orderPhoneNum=" + orderPhoneNum
				+ ", orderZipcode=" + orderZipcode + ", orderAddressFirst=" + orderAddressFirst
				+ ", orderAddressSecond=" + orderAddressSecond + ", orderPayPrice=" + orderPayPrice
				+ ", orderPointPrice=" + orderPointPrice + ", couponCodeSeq=" + couponCodeSeq + ", buyWriterCodeSeq="
				+ buyWriterCodeSeq + ", writerCodeSeq=" + writerCodeSeq + ", buyWriterSendPrice=" + buyWriterSendPrice
				+ ", buyWriterPlusSendPrice=" + buyWriterPlusSendPrice + ", buyWriterOrderStatus="
				+ buyWriterOrderStatus + ", buyWriterOrderRefundReason=" + buyWriterOrderRefundReason
				+ ", buyWriterOrderRefundDate=" + buyWriterOrderRefundDate + ", buyRefundRequestDate="
				+ buyRefundRequestDate + ", buyArtCodeSeq=" + buyArtCodeSeq + ", artCodeSeq=" + artCodeSeq
				+ ", artName=" + artName + ", buyArtRequest=" + buyArtRequest + ", buyArtReviewStatus="
				+ buyArtReviewStatus + ", buyArtReviewUpdate=" + buyArtReviewUpdate + ", buyOptionCodeSeq="
				+ buyOptionCodeSeq + ", artPrice=" + artPrice + ", artOptionSeqList=" + artOptionSeqList
				+ ", artOptionName=" + artOptionName + ", artOptionAmount=" + artOptionAmount + "]";
	}
	
	
	
}
