package com.myblog.entities;

public class page {
	private int startPage;
	private int endPage;
   private int flag;
   
	public int getFlag() {
	return flag;
}

public void setFlag(int flag) {
	this.flag = flag;
}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

}
