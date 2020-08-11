package com.web.bomulsum.writer.art.repository;

public class WriterArtVOUP {

	private int artCodeSeq;
	private int artSaleState;
	
	@Override
	public String toString() {
		return "WriterArtVOUP [artCodeSeq=" + artCodeSeq + ", artSaleState=" + artSaleState + "]";
	}
	
	public int getArtCodeSeq() {
		return artCodeSeq;
	}
	public void setArtCodeSeq(int artCodeSeq) {
		this.artCodeSeq = artCodeSeq;
	}
	public int getArtSaleState() {
		return artSaleState;
	}
	public void setArtSaleState(int artSaleState) {
		this.artSaleState = artSaleState;
	}
	
	
	
}
